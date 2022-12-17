\version "2.24.0"

source-url = "https://imslp.org/wiki/200_Études_nouvelles_mélodiques_et_progressives_pour_cor_(Alphonse,_Maxime)"
\header {
  composer-last-name = "Maxime-Alphonse"
  title = "200 New Studies, Vol. 1"
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
    \consists Melody_engraver
  }
}

#(define instructions `(
  ( 1 . ,#{ \markup { \justify {
    In all studies best attention shall be given to accents
    \concat {
      (
      \raise #0.6 \musicglyph #"scripts.sforzato"
      " "
      \raise #0.2 \musicglyph #"scripts.umarcato"
      " "
      \raise #0.6 \musicglyph #"scripts.staccato"
      )
    }
    as well as to dynamics.
  } } #})
  ( 4 . ,#{ \markup { \justify {
    Respect accents placed on strong beats and syncops.
  } } #})
  ( 7 . ,#{ \markup { \justify {
    Respect the values of the quavers
    and do not extend them on \raise #0.75 \rest {8}
  } } #})
  ( 8 . ,#{ \markup { \justify {
    The first quaver shall be strong but short and the syncops well stressed.
  } } #})
  (10 . ,#{ \markup { \justify {
    In sliding passages
    \raise #0.5 \score {
      \new Staff \with {
        \remove Bar_engraver
        \remove Clef_engraver
        \remove Time_signature_engraver
        \magnifyStaff #(magstep -3)
      } {
        \relative { \time 4/4 a'8.( c16) b8.( d16) }
      }
      \layout { ragged-right=##t indent=0 }
    }
    avoid stressing the semiquaver more than the pointed quaver.
  } } #})
  (11 . ,#{ \markup { \justify {
    Well slurred, but always pronounce the syllable “tu” when producing the
    \raise #0.3 \override #'(font-size . -2) { \note {2} #UP }
    following the two quavers.
  } } #})
  (14 . ,#{ \markup { \justify {
    Lightly stress the first note in the beat,
    but maintain exactly the same value of the second.
    Avoid the effect
    \raise #0.5 \score {
      \new Staff \with {
        \remove Bar_engraver
        \remove Clef_engraver
        \remove Time_signature_engraver
        \magnifyStaff #(magstep -3)
      } {
        \relative { \time 3/4 d''8->( c16) r16 8->( b16) r }
      }
      \layout { ragged-right=##t indent=0 }
    }
  } } #})
  (15 . ,#{ \markup { \justify {
    Stress the note on the strong beat immediately following the two semiquavers,
    but avoid overstressing the first of these semiquavers.
  } } #})
  (18 . ,#{ \markup { \justify {
    Do not stretch the quavers followed by a quaver-rest.
    The latter must keep its full value.
  } } #})
  (20 . ,#{ \markup { \justify {
    The staccato notes very neat and short;
    attention to the accents on the syncops.
  } } #})
  (21 . ,#{ \markup { \justify {
    Slightly stress the first note of each beat.
    The beats should be completely finished
    and an overstressing of the semiquavers avoided.
  } } #})
  (22 . ,#{ \markup { \justify {
    Attention to accents
    \raise #0.6 \musicglyph #"scripts.sforzato"
    \raise #0.6 \musicglyph #"scripts.staccato"
    ;
  } } #})
  (23 . ,#{ \markup { \justify {
    Lightly stress the first note in each bar.
    At “A”, attention to the strong beat
    and avoid stretching the note preceding the quaver-rest.
    From start to finish of this study the quavers shall be short
    and attacked by pronouncing the syllable “tu”.
  } } #})
  (24 . ,#{ \markup { \justify {
    Attack and sustain each note. Keep the tempo.
  } } #})
  (25 . ,#{ \markup { \justify {
    Accent the syncops but diminish the volume of tone after the attack.
  } } #})
  (26 . ,#{ \markup { \justify {
    Attack and sustain the quavers,
    attack the quarter notes stronger and then diminish the volume of tone.
  } } #})
  (27 . ,#{ \markup { \justify {
    Attention to articulations. Try for lightness of execution.
  } } #})
  (28 . ,#{ \markup { \justify {
    Same as for \concat { "№ 27" . }
  } } #})
  (29 . ,#{ \markup { \justify {
    Start by playing slurred, accenting each note.
    Then weaken the accents until the slur comes easily.
  } } #})
  (30 . ,#{ \markup { \justify {
    Same as for \concat { "№ 23" . }
  } } #})
  (32 . ,#{ \markup { \justify {
    Always stress the slurs leading to the strong beat.
  } } #})
  (33 . ,#{ \markup { \justify {
    Keep up the tempo.
  } } #})
  (34 . ,#{ \markup { \justify {
    Carefully observe the rhythms.
  } } #})
  (35 . ,#{ \markup { \justify {
    Flexible and light slurs with attention to dynamics.
  } } #})
  (36 . ,#{ \markup { \justify {
    Carefully mark the difference between the accent
    \raise #0.2 \musicglyph #"scripts.umarcato"
    \concat { “ \italic attack } \italic and \concat { \italic sustain ”, }
    and the accent
    \raise #0.6 \musicglyph #"scripts.sforzato"
    \concat { “ \italic attack } \italic { and diminish the sound } \concat { \italic volume”. }
  } } #})
  (37 . ,#{ \markup { \justify {
    Greatest care to sound production.
  } } #})
  (38 . ,#{ \markup { \justify {
    Rigorous attack.
  } } #})
  (40 . ,#{ \markup { \justify {
    Respect accents
    \raise #0.6 \musicglyph #"scripts.sforzato"
    \raise #0.6 \musicglyph #"scripts.staccato"
    ; slur softly.
  } } #})
  (41 . ,#{ \markup { \justify {
    Well slurred. In the rhythm
    \raise #0.5 \score {
      \new Staff \with {
        \remove Bar_engraver
        \remove Clef_engraver
        \remove Time_signature_engraver
        \magnifyStaff #(magstep -3)
      } {
        \relative { \time 6/8 d'4( f8) e4( g8) }
      }
      \layout { ragged-right=##t indent=0 }
    }
    avoid stressing the quaver more than the quarter note.
  } } #})
  (43 . ,#{ \markup { \justify {
    Try for neat attacks and even tempo.
  } } #})
  (52 . ,#{ \markup { \justify {
    Very short breath.
  } } #})
  (53 . ,#{ \markup { \justify {
    Light and swift.
  } } #})
  (55 . ,#{ \markup { \justify {
    Lightly gliding.
  } } #})
  (59 . ,#{ \markup { \justify {
    Lightly gliding.
  } } #})
  (59 . ,#{ \markup { \justify {
    Strictly slurred but with attention to the accents.
  } } #})
  (63 . ,#{ \markup { \justify {
    Flexible and light slur.
    Always keep up the tempo and respect articulations.
  } } #})
  (64 . ,#{ \markup { \justify {
    Stress the strong beats.
  } } #})
  (70 . ,#{ \markup { \justify {
    Always respect the tempo and particularly avoid hurrying.
    Each note must be attacked with the same strength.
    Avoid the error to accent the high notes in order to facilitate their production.
    To correct this mistake it will be better to stress the first note in each beat.
  } } #})))

\book {
  #(do ((study-number 1 (1+ study-number)))
      ((> study-number 70))
    (let ((header (make-module)))
      (module-define! header 'piece (number->string study-number))
      (let* (
          (instruction (assoc study-number instructions))
          (base-name (format #f "maxime-alphonse-1-~2,'0d" study-number))
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
