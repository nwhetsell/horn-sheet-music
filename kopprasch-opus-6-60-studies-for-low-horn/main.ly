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
        \override #'(font-name . "Playfair Display Regular")
        \abs-fontsize #20
        \fromproperty #'header:piece
        \hspace #1
        \override #'(font-name . "Playfair Display Medium")
        \fromproperty #'header:transposition
      }
      \vspace #0.125
      \override #'(font-name . "Playfair Display Medium")
      \justify-field #'header:instruction
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

#(define transpositions '(
  ( 1 . "Transposition in E♭")
  ( 2 . "in E")
  ( 3 . "in E♭")
  ( 4 . "in E and E♭")
  ( 5 . "in E, E♭, and D")
  ( 6 . "in E and D")
  ( 7 . "in G, E, E♭, D, and D♭")
  ( 8 . "in D, D♭, C, and B♭ low")
  (12 . "in D and C")
  (14 . "in E♭")
  (16 . "in E, D, C, and B♭ low")
  (17 . "in E, E♭, and D♭")
  (18 . "in E and E♭")
  (21 . "in E♭")
  (23 . "in E and E♭")
  (24 . "in E and E♭")
  (25 . "in G, D, D♭ C, and B♭")
  (26 . "in E and E♭")
  (30 . "in E, E♭, and D")
  (35 . "in E and E♭")
  (36 . "in D and C")
  (38 . "in E and D")
  (39 . "in E")
  (42 . "in G, D, and D♭")
  (49 . "in G, A, and B♭")
  (50 . "in E, E♭, and D")
  (56 . "in D")
  (57 . "in E and E♭")
  (58 . "in G, E, E♭, D, and D♭")))

#(define instructions '(
  ( 5 . "Phrasing studies, daily preparatory studies for the trill (lip-trill):
         The notes uniformly slower at first, then quicker,
         and all notes open or, after transposition, on
         No. 1 (in E♭), No. 2 (in E), or No. 3 (in D) valve.")
  (11 . "It is better to practice this study before No. 43.")
  (21 . "Played like No. 13.")))

#(define studies-with-alternates '(3 4 6 8 10 12 13 17 36 37 39 40))

alternates-layout = \layout {
  #(layout-set-staff-size 14)
  ragged-last = ##t
  \context {
    \Score
    \omit BarNumber
    markFormatter = #format-mark-numbers
  }
}

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
          (if transposition (module-define! header 'transposition (format #f "(~a)" (cdr transposition))))
          (if instruction (module-define! header 'instruction (cdr instruction)))
          (ly:score-set-header! score header)
          (add-score score)
          (if (member study-number studies-with-alternates)
            (let (
                (score (scorify-music #{
                  \include #(format #f "alternates/~a-alternates.ly" base-name)
                #})))
              (begin
                ((ly:parser-lookup 'book-score-handler) (ly:parser-lookup '$current-book) (ly:make-page-permission-marker 'page-break-permission '()))
                (ly:score-add-output-def! score alternates-layout)
                (add-score score))))))))

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
