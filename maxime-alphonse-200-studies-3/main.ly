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
  ( 4 . ,#{ \markup { \justify {
    Put some weight on the dotted quavers at the beginning of the bars and keep tempo.
    Semiquavers very much staccato.
  } } #})
  ( 5 . ,#{ \markup { \justify {
    Ponderously and always stressing the first note in each beat.
    In the alternate articulations and rhythms respect the given accents
    and practise alternately forte and piano.
  } } #})
  ( 6 . ,#{ \markup { \justify {
    Strictly in tempo and very staccato;
    attack all the notes in the same way by pronouncing the syllable “tu”.
  } } #})
  ( 7 . ,#{ \markup { \justify {
    Great attention towards the attack of the first note in each part of the melody.
    The first bars and the parts B and E very piano, expressive, and sustained.
    Parts A, C, and D very rhythmical.
  } } #})
  ( 8 . ,#{ \markup { \justify {
    Very regular in tempo, lightly and strictly legato.
  } } #})
  ( 9 . ,#{ \markup { \justify {
    Slur strongly taking into account the given accents up to letter A.
    Then weaken but always remember the strong beats.
  } } #})
  (10 . ,#{ \markup { \justify {
    Very slow; allow the trills their full value, do not hurry the endings.
  } } #})
  (11 . ,#{ \markup { \justify {
    The semiquavers are placed alternately at the downbeat or at the syncop
    and are therefore to be played forte or piano;
    but always stress the start of the beat.
  } } #})
  (12 . ,#{ \markup { \justify {
    Very slurred and sustained. Breathe very quickly.
  } } #})
  (13 . ,#{ \markup { \justify {
    Very neat and light staccato; stress all notes topped by a
    \raise #0.6 \musicglyph #"scripts.sforzato"
  } } #})
  (15 . ,#{ \markup { \justify {
    Staccato without slackening the speed;
    all notes should be attacked similarly and in the same strength;
    this concerns particularly the semiquavers followed by \raise #0.75 \rest "16"
    which should not either be overextended.
  } } #})
  (16 . ,#{ \markup { \justify {
    Practice the rhythm
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
    remembering the explanations for "№ 2."
  } } #})
  (38 . ,#{ \markup { \justify {
    Practice separately all the rhythms placed between two letters,
    first slowly, then gradually quicker and alternately forte and piano.
  } } #})
  (39 . ,#{ \markup { \justify {
    Very even in tempo.
  } } #})))

#(define studies-with-alternates '(5))

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
    '(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 38 39 40))

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
