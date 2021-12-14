\version "2.22.0"

source-url = "https://imslp.org/wiki/200_Études_nouvelles_mélodiques_et_progressives_pour_cor_(Alphonse,_Maxime)"
\header {
  composer-last-name = "Maxime-Alphonse"
  title = "200 New Studies, Vol. 2"
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
    Great regularity of tempo and sound production.
    The notes will all be attacked similarly by pronouncing the syllable “tu”:
    \raise #0.5 \score {
      \new Staff \with {
        \remove "Bar_engraver"
        \magnifyStaff #(magstep -3)
      } {
        <<
          \new Voice = music \relative { c'4 d8 e f g a b }
          \new Lyrics \with {
            \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'((basic-distance . 4))
          } \lyricsto music {
            \override LyricText.font-size = #0
            \lyricmode { tu tu tu tu tu tu tu }
          }
        >>
      }
      \layout { ragged-right=##t indent=0 }
    }
    \concat { \italic etc . }
    Respect dynamics and accents.
  } } #})
  ( 2 . ,#{ \markup { \justify {
    Lightly stress the first note in each beat;
    the dotted notes very short,
    the \concat { \raise #0.5 \teeny \compound-meter #'(2 4) -beat } bound flexibly.
  } } #})
  ( 3 . ,#{ \markup { \justify {
    Strongly stress the slur, but keep strictly to the dotted quavers.
  } } #})
  ( 4 . ,#{ \markup { \justify {
    Attention to all the given accents;
    avoid giving too much stress to the second beat
    in those bars repeating the rhythms of the third and fourth beats:
    \concat { \raise #0.5 \score {
      \new Staff \with {
        \remove "Bar_engraver"
        \remove "Clef_engraver"
        \remove "Time_signature_engraver"
        \magnifyStaff #(magstep -3)
      } {
        \relative { \time 3/4 c''4-> f,4.-- d'8-. }
      }
      \layout { ragged-right=##t indent=0 }
    } . }
  } } #})
  ( 5 . ,#{ \markup { \justify {
    As slow, piano, and sustained as possible.
    Careful production of the notes following every breath.
  } } #})
  ( 6 . ,#{ \markup { \justify {
    Attack all the notes in the same manner but stress the first beat of each bar,
    according to the rule of strong and weak beats.
  } } #})
  ( 7 . ,#{ \markup { \justify {
    Very sustained and expressive.
    Do not rush the turns, but keep the first note fairly long:
    \concat { \raise #0.5 \score {
      \new Staff \with {
        \remove "Bar_engraver"
        \remove "Clef_engraver"
        \remove "Time_signature_engraver"
        \magnifyStaff #(magstep -3)
      } {
        \relative { \time 2/4 d'8~( 32 e d c d8 f) }
      }
      \layout { ragged-right=##t indent=0 }
    } . }
  } } #})
  ( 8 . ,#{ \markup { \justify {
    Syncops are often very badly done.
    Both notes must be attacked in the same way,
    have the same strength and the same value
    (avoid attacking too strongly the first, and extending the second note).
  } } #})
  ( 9 . ,#{ \markup { \justify {
    Even notes, well bound, very sustained and without any dynamics.
    Very short breath.
  } } #})
  (10 . ,#{ \markup { \justify {
    Great evenness in measure and sound production.
  } } #})
  (11 . ,#{ \markup { \justify {
    Careful attention to accents:
    \concat { \raise #0.6 \musicglyph #"scripts.sforzato" , }
    \concat { \raise #0.2 \musicglyph #"scripts.umarcato" , }
    \raise #0.6 \musicglyph #"scripts.staccato"
  } } #})
  (12 . ,#{ \markup { \justify {
    Very sustained and expressive, but no slackening of tempo.
  } } #})
  (13 . ,#{ \markup { \justify {
    Very clean sound production;
    always stress a little the first note of each beat,
    particularly where an accent \raise #0.6 \musicglyph #"scripts.sforzato" is placed.
  } } #})
  (14 . ,#{ \markup { \justify {
    At the beginning and the end of this study,
    attack the 3 notes in the same manner, with the same strength;
    avoid the dynamic: \concat { \raise #0.5 \score {
      \new Staff \with {
        \remove "Bar_engraver"
        \remove "Clef_engraver"
        \remove "Time_signature_engraver"
        \magnifyStaff #(magstep -3)
      } {
        \relative { r8 e'-. \< a-. e'-. \! r e-. \> a,-. e-. \! }
      }
      \layout { ragged-right=##t indent=0 }
    } . }
    In the \concat { \raise #0.5 \teeny \compound-meter #'(2 4) -beat, }
    mark the given accents, usually on the first beat of each bar.
  } } #})
  (15 . ,#{ \markup { \justify {
    Attention to the strong beat which will always have to be stressed.
  } } #})
  (16 . ,#{ \markup { \justify {
    Sharply staccato, for all notes.
    Avoid stressing and stretching the last note of the bar more than the preceding.
  } } #})
  (17 . ,#{ \markup { \justify {
    As slow, bound, and sustained as possible. Always piano.
  } } #})
  (18 . ,#{ \markup { \justify {
    Very lightly, the notes of equal value;
    respect the given accents, but avoid any harshness.
  } } #})
  (19 . ,#{ \markup { \justify {
    Respect accents and dynamics.
  } } #})
  (20 . ,#{ \markup { \justify {
    Very expressively but without slackening of speed.
    Strongly bound respecting accents and dynamics.
  } } #})
  (21 . ,#{ \markup { \justify {
    Sharp staccato;
    accented notes \raise #0.6 \musicglyph #"scripts.sforzato" strongly marked.
  } } #})
  (22 . ,#{ \markup { \justify {
    Very firm attack; exaggerate dynamics and accents.
  } } #})
  (23 . ,#{ \markup { \justify {
    Flexible sound production at the beginning and the end of the study.
    The phrase marked \concat { “ \italic { con " " fuoco } ” }
    very vigorously and sturdily.
  } } #})
  (24 . ,#{ \markup { \justify {
    Bind softly.
    Accent the syncops at \raise #0.5 \teeny \compound-meter #'(4 4) \concat {
      ( \hspace #0.25 \raise #2/3 \small \musicglyph #"timesig.C44" \hspace #0.25 ),
    }
  } } #})
  (25 . ,#{ \markup { \justify {
    Stopped sounds are produced by covering the bell of the instrument
    with the hand transposing every note a half-tone below.
  } } #})
  (26 . ,#{ \markup { \justify {
    Very lightly, attention to accents.
  } } #})
  (27 . ,#{ \markup { \justify {
    The \raise #0.5 \teeny \compound-meter #'(12 8) tempo very sustained
    and always on the strong side.
    The \raise #0.5 \teeny \compound-meter #'(4 4) \concat {
      ( \hspace #0.25 \raise #2/3 \small \musicglyph #"timesig.C44" \hspace #0.25 ),
    }
    on the contrary, very light and neat.
  } } #})
  (28 . ,#{ \markup { \justify {
    Very legato, strictly respecting the values of the notes;
    the dotted quavers lightly stressed.
  } } #})
  (29 . ,#{ \markup { \justify {
    Strict in tempo and firm attack.
  } } #})
  (30 . ,#{ \markup { \justify {
    Accent every note when starting practice.
    The intensity of accentuation will be lessened by and by
    as soon as binding gets easier.
  } } #})
  (31 . ,#{ \markup { \justify {
    Sharply staccato.
    Strongly accent the notes topped by the sign
    \raise #0.6 \musicglyph #"scripts.sforzato"
  } } #})
  (32 . ,#{ \markup { \justify {
    Great care should be given to the correct production
    of the quavers in the middle of the beat; they should be clean and short.
  } } #})
  (33 . ,#{ \markup { \justify {
    Expressively, keeping up the given tempo.
  } } #})
  (34 . ,#{ \markup { \justify {
    Very sustained, very slow, sustaining the sound.
    Always attack the starting note frankly
    and repeat as often as the sound production does not seem perfect.
  } } #})
  (35 . ,#{ \markup { \justify {
    Respect the accents.
  } } #})
  (36 . ,#{ \markup { \justify {
    Respect the accents.
  } } #})
  (37 . ,#{ \markup { \justify {
    All notes shall be attacked in the same way as if pronouncing the syllable “tu”.
    Very flexible binding of the phrase “Allegro vivo”.
  } } #})
  (38 . ,#{ \markup { \justify {
    Very lightly, attention to strong and weak beats.
  } } #})
  (39 . ,#{ \markup { \justify {
    Strong accent on the first note of each beat when starting practice.
    By and by, as soon as binding gets easier, dimish the accentuation
    and keep only a slight stress on the strong beats.
  } } #})
  (40 . ,#{ \markup { \justify {
    Sharp staccato from start to finish.
  } } #})))

#(define studies-with-alternates '(30 40))

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
      ((> study-number 40))
    (let ((header (make-module)))
      (module-define! header 'piece (number->string study-number))
      (let* (
          (instruction (assoc study-number instructions))
          (base-name (format #f "maxime-alphonse-2-~2,'0d" study-number))
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
