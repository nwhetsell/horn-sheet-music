\version "2.22.0"

source-url = "https://imslp.org/wiki/200_Études_nouvelles_mélodiques_et_progressives_pour_cor_(Alphonse,_Maxime)"
\header {
  composer-last-name = "Maxime-Alphonse"
  title = "200 New Studies, Vol. 3"
  instrument = "Horn in F"
}

\include "../titling.ily"
\include "settings.ily"

\pointAndClickOff

\paper {
  scoreTitleMarkup = \markup {
    \column {
      \abs-fontsize #16
      \fromproperty #'header:piece
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

#(define instructions `(
  ( 1 . ,#{ \markup { \justify {
    Very strict in tempo and rhythm, very staccato.
  } } #})
  ( 2 . ,#{ \markup { \justify {
    Slur flexibly and be careful not to restrain the tempo.
    For the rhythm
    \raise #0.3 \score {
      \new Staff \with {
        \override StaffSymbol.line-count = 0
        \override Stem.details.beamed-lengths = #'(2)
        \remove "Bar_engraver"
        \remove "Clef_engraver"
        \remove "Time_signature_engraver"
        \magnifyStaff #(magstep -3)
      } {
        \relative { \time 6/8 \stemUp b'8. 16 8 }
      }
    }
    slightly exaggerate the length of the dotted quaver
    and the shortness of the semiquaver, so as to achieve an effect like
    \raise #0.3 \pad-to-box #'(0 . 0) #'(0 . 3) \score {
      \new Staff \with {
        \override StaffSymbol.line-count = 0
        \override Stem.details.beamed-lengths = #'(2)
        \remove "Bar_engraver"
        \remove "Clef_engraver"
        \remove "Time_signature_engraver"
        \magnifyStaff #(magstep -3)
      } {
        \relative { \time 6/8 \stemUp b'8.. 32 8 }
      }
    }
  } } #})
  ( 3 . ,#{ \markup { \justify {
    The quavers followed by \raise #0.75 \rest "8" or \raise #0.75 \rest "16"
    shall never be extended beyond their value.
    Respect accents and dynamics.
  } } #})
  (38 . ,#{ \markup { \justify {
    Practice separately all the rhythms placed between two letters,
    first slowly, then gradually quicker and alternately forte and piano.
  } } #})
  (39 . ,#{ \markup { \justify {
    Very even in tempo.
  } } #})))

\book {
  #(for-each (lambda (study-number)
    (let ((header (make-module)))
      (module-define! header 'piece (number->string study-number))
      (let* (
          (instruction (assoc study-number instructions))
          (base-name (format #f "maxime-alphonse-3-~2,'0d" study-number))
          (score (scorify-music (if preserve-line-breaks?
            #{
              \new Staff <<
                \new Voice { \include #(format #f "~a.ly" base-name) }
                \new Voice { \include #(format #f "line-breaks/~a-line-breaks.ily" base-name) }
              >>
            #}
            #{
              \include #(format #f "~a.ly" base-name)
            #}
          ))))
        (begin
          (if instruction (module-define! header 'instruction (cdr instruction)))
          (ly:score-set-header! score header)
          (add-score score)))))
    '(1 2 3 38 39 40))

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
