\version "2.22.0"

source-url = "https://imslp.org/wiki/60_Etudes_for_Low-Horn%2C_Op.6_(Kopprasch%2C_Georg)"
\header {
  composer-last-name = "Kopprasch"
  composer-first-name = "Georg"
  title = "60 Studies for Low Horn"
  opus = "Op. 6"
  instrument = "Horn in F"
}

\include "../titling.ily"
\include "settings.ily"

\pointAndClickOff

\paper {
  scoreTitleMarkup = \markup {
    \column {
      \concat {
        \abs-fontsize #16
        \fromproperty #'header:piece
        \hspace #1
        \fromproperty #'header:transposition
      }
      \vspace #0.125
      \fromproperty #'header:instruction
      \vspace #0.25
    }
  }
}

\layout {
  \context {
    \Score
    #(if preserve-line-breaks? #{
      \override NonMusicalPaperColumn.line-break-permission = ##f
    #})
    \override TupletBracket.bracket-visibility = #'if-no-beam
  }
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem.neutral-direction = #'()
  }
}

#(define-markup-command (append-flat layout props text) (markup?)
  (interpret-markup layout props
    #{ \markup \concat { #text \hspace #0.1 \raise #0.4 \teeny \flat } #}))

#(define transpositions `(
  ( 1 . ,#{ \markup { (Transposition in \concat { \append-flat E ) } } #})
  ( 2 . ,#{ \markup { (in E) } #})
  ( 3 . ,#{ \markup { (in \concat { \append-flat E ) } } #})
  ( 4 . ,#{ \markup { (in E and \concat { \append-flat E ) } } #})
  ( 5 . ,#{ \markup { (in E, \concat { \append-flat E , } and D) } #})
  ( 6 . ,#{ \markup { (in E and D) } #})
  ( 7 . ,#{ \markup { (in G, E, \concat { \append-flat E , } D, and \concat { \append-flat D ) } } #})
  ( 8 . ,#{ \markup { (in D, \concat { \append-flat D , } C, and \append-flat B low) } #})
  (12 . ,#{ \markup { (in D and C) } #})
  (14 . ,#{ \markup { (in \concat { \append-flat E ) } } #})
  (16 . ,#{ \markup { (in E, D, C, and \append-flat B low) } #})
  (17 . ,#{ \markup { (in E, \concat { \append-flat E , } and \concat { \append-flat D ) } } #})
  (18 . ,#{ \markup { (in E and \concat { \append-flat E ) } } #})
  (21 . ,#{ \markup { (in \concat { \append-flat E ) } } #})
  (23 . ,#{ \markup { (in E and \concat { \append-flat E ) } } #})
  (24 . ,#{ \markup { (in E and \concat { \append-flat E ) } } #})
  (25 . ,#{ \markup { (in G, D, \concat { \append-flat D , } C, and \concat { \append-flat B ) } } #})
  (26 . ,#{ \markup { (in E and \concat { \append-flat E ) } } #})
  (30 . ,#{ \markup { (in E, \concat { \append-flat E , } and D) } #})
  (35 . ,#{ \markup { (in E and \concat { \append-flat E ) } } #})
  (36 . ,#{ \markup { (in D and C) } #})
  (38 . ,#{ \markup { (in E and D) } #})
  (39 . ,#{ \markup { (in E) } #})
  (42 . ,#{ \markup { (in G, D, and \concat { \append-flat D ) } } #})
  (49 . ,#{ \markup { (in G, A, and \concat { \append-flat B ) } } #})
  (50 . ,#{ \markup { (in E, \concat { \append-flat E , } and D) } #})
  (56 . ,#{ \markup { (in D) } #})
  (57 . ,#{ \markup { (in E and \concat { \append-flat E ) } } #})
  (58 . ,#{ \markup { (in G, E, \concat { \append-flat E , } D, and \concat { \append-flat D ) } } #})))

#(define instructions `(
  ( 5 . ,#{ \markup { \justify {
    Phrasing studies, daily preparatory studies for the trill (lip-trill):
    The notes uniformly slower at first, then quicker,
    and all notes open or, after transposition, on
    "No. 1" (in \concat { \append-flat E ) , } "No. 2" \concat { "(in E)" , } or "No. 3" "(in D)" valve.
  } } #})
  (11 . ,#{ \markup { It is better to practice this study before \concat { "No. 43" . } } #})
  (21 . ,#{ \markup { Played like \concat { "No. 13" . } } #})))

#(define studies-with-alternates '(3 4 6 8 10 12 13 17 36 37 39 40))

\book {
  #(do ((study-number 1 (1+ study-number)))
      ((> study-number 60))
    (let ((header (make-module)))
      (module-define! header 'piece (number->string study-number))
      (let* (
          (transposition (assoc study-number transpositions))
          (instruction (assoc study-number instructions))
          (base-name (format #f "kopprasch-~2,'0d" study-number))
          (score (scorify-music #{
            \removeWithTag \removed-tags
            \new Staff <<
              #(if (= study-number 26)
                #{
                  % kopprasch-26.ly uses \centerNoteColumnOn, but using
                  % Melody_engraver apparently breaks this, so use default stem
                  % directions.
                  \new Voice \with {
                    \remove "Melody_engraver"
                  } {
                    \override Stem.neutral-direction = #DOWN
                    \include #(format #f "~a.ly" base-name)
                  }
                #}
                #{
                  \new Voice { \include #(format #f "~a.ly" base-name) }
                #}
              )
              #(if preserve-line-breaks? #{ \new Voice { \include #(format #f "line-breaks/~a-line-breaks.ily" base-name) } #})
            >>
          #})))
        (begin
          (if transposition (module-define! header 'transposition (cdr transposition)))
          (if instruction (module-define! header 'instruction (cdr instruction)))
          (ly:score-set-header! score header)
          (add-score score)
          (if (member study-number studies-with-alternates)
            (begin
              ((ly:parser-lookup 'book-score-handler) (ly:parser-lookup '$current-book) (ly:make-page-permission-marker 'page-break-permission '()))
              (add-score #{
                \score {
                  \layout {
                    #(layout-set-staff-size 14)
                    ragged-last = ##t
                    \context {
                      \Score
                      \omit BarNumber
                      markFormatter = #format-mark-numbers
                    }
                  }
                  \include #(format #f "alternates/~a-alternates.ly" base-name)
                }
              #})))))))

  \bookpart {
    \paper {
      bookTitleMarkup = ##f
      scoreTitleMarkup = ##f
      evenHeaderMarkup = ##f
      oddHeaderMarkup = \evenHeaderMarkup
    }
    \colophon
  }
}
