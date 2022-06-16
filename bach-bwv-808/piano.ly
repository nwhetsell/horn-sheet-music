\version "2.22.0"

\include "definitions.ily"
\header {
  title = "English Suite № 3 in G Minor"
  opus = "BWV 808"
}

\include "../turn-markup.ily"
\include "piano.ily"

\layout {
  \override Staff.TimeSignature.style = #'single-digit
}

\score {
  \header { piece = \markup {
    \override #'(baseline-skip . 4)
    \center-column {
      "Gavotte I"
      \fontsize #-2 "(alternativamente)"
    }
  } }
  \new PianoStaff <<
    \new Staff <<
      \new Voice \relative g'' {
        \key g \minor

        \time 2/2

        <<
          {
            \repeat volta 2 {
              \gavotte-i-piano-up-measures-one-to-seven
            }
            \alternative {
              { \partial 2 { \appoggiatura c8 b-flat2 } }
              { \partial 2 { \appoggiatura c8 b-flat2 } }
            }

            \repeat volta 2 {
              \gavotte-i-piano-up-measures-ten-to-twenty d4 f8 e-flat! |

              f4 d8 b a-flat'4 f8 d |
              e-flat4 c8 g g'4 e-flat8 c |
              d4 b-flat!8 g g'4 d8 b-flat |
              c4 a8 f-sharp e-flat'4 c8 a |
              d4 b-flat8 g c a b-flat g |
              a8 d, e f-sharp g a b-flat g |
              e-flat'8 c d b-flat c a b-flat g |
              a4 d, \gavotte-i-piano-up-measures-twenty-nine-to-thirty-one
              \gavotte-i-piano-up-measures-thirty-two-to-thirty-six
            }
          }
          {
            s2 s1*6 |
            s4 s8( s) s2 |
            \grace s8 s2 \tweak X-offset #1.25 \parenthesize\prall

            s1*8 |
            s2 s4.( s8) |
            s4.( s8) s4.( s8) |
          }
        >>
      }

      #(if preserve-line-breaks? #{ \new Voice {
        s2 s1*5 \break
        s1*2 s2*3 s1*2 \break
        \repeat unfold 3 { s1*6 \break }
      } #})
    >>

    \new Staff \relative {
      \language "english"

      \clef "bass"

      \key g \minor

      \repeat volta 2 {
        \partial 2 { g,4 d' } |
        g4 b-flat c d |
        e-flat8 f e-flat d c b-flat a c |
        b-flat8 a g b-flat a g f-sharp d |
        g4 d b-flat d |
        g4 b-flat c d |
        e-flat8 f e-flat d c b-flat a g |
        f4 g e-flat d |
      }
      \alternative {
        { \partial 2 { \grace s8 b-flat8 c b-flat a } }
        { \partial 2 { \grace s8 b-flat8 f' g a } }
      }

      \repeat volta 2 {
        \partial 2 { b-flat4 c } |
        d4 b-flat e-flat c |
        d8 c b-flat a g4 f |
        e4 c d e |
        f4 g8 a b-flat4 g |
        e4 a, b c-sharp |
        d4 d, d'' f8 e |
        f4 d8 a e'4 c-sharp8 a |
        d2 g,4 a |
        b-flat4 g a a, |
        #(define sharp-mordent (ornament-with-accidentals "scripts.mordent" -0.75 (markup #:null) (markup #:sharp)))
        d,8 d' e-flat! f g4^\sharp-mordent 4^\sharp-mordent |
        g1~^#(ornament-with-accidentals "scripts.upprall" -0.75 (markup #:flat) (markup #:null)) |
        g2 4^\sharp-mordent 4^\sharp-mordent |
        g2 4^\sharp-mordent 4^\sharp-mordent |
        g2 8 8 8 8 |
        g8 8 8 8 8 f-sharp g4 |
        d4 c b-flat d |
        f-sharp,4 d' g, d' |
        d,4 d'8 c b-flat4 a |
        g4 r f! r |
        e-flat4 g'8 f e-flat4 d |
        c4 r b-flat r |
        a4 c'8 b-flat a4 g |
        f-sharp4 r e r |
        d4 f-sharp g a |
        b-flat4 c d d, |
        \partial 2 { g,2 } |
      }
    }
  >>
}

\score {
  \header { piece = \markup {
    \override #'(baseline-skip . 4)
    \center-column {
      "Gavotte II"
      \fontsize #-2 "(ou la Musette)"
    }
  } }
  \new PianoStaff <<
    \new Staff <<
      \new Voice \relative d' {
        \time 2/2

        \gavotte-ii-piano-up-voice-one-measures-one-to-sixteen
        \partial 2 { g4 r } |
      }
      \new Voice \relative {
        \voiceTwo
        s2 s1*3 s2*2 s1*3 |
        f-sharp'2 s2 |
        s1*7 |
        d4
      }

      #(if preserve-line-breaks? #{ \new Voice {
        s2 s1*3 s2*2 s1 \break
        s1*5 \break
      } #})
    >>

    \new Staff \relative {
      \language "english"

      \clef "bass"

      \key g \major

      \repeat volta 2 {
        <<
         {
           \partial 2 { b4 a } |
           b4 c d c |
           \repeat unfold 2 { b4 c b a | }
           \partial 2 { g2 } |
         }
         \\
         {
           \partial 2 { g2~ } |
           \repeat unfold 3 { g1~ | }
           \partial 2 { g2 } |
         }
        >>
      }

      \repeat volta 2 {
        <<
         {
           \partial 2 { b4 a } |
           b4 e d c |
           b4 a8 b c4 b |
           c4 b c4 8 a |
           c2 4 d |
           e4 d c b |
           a4 b c d |
           c4 e d c |
           b4 c b a |
           b4 c d c |
           \repeat unfold 2 { b4 r d r | }
           b4
         }
         \\
         {
           \partial 2 { g2~ } |
           \repeat unfold 11 { g1~ | }
           g4
         }
        >>
        r4 |
      }
    }
  >>
}

\bookpart {
  \paper {
    bookTitleMarkup = ##f
    scoreTitleMarkup = ##f
    evenHeaderMarkup = ##f
    oddHeaderMarkup = \evenHeaderMarkup
  }
  \colophon
}
