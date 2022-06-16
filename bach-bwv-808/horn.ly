\version "2.22.0"

\include "definitions.ily"
\header {
  title = "Gavotte in G Minor"
  opus = "BWV 808, № 5–6"
  instrument = "Horn in F"
}

\include "piano.ily"

\score {
  \new Staff
    \new Voice <<
    {
      \relative g' {
        \transposition f

        \tempo "Allegro" 4=104

        \key g \minor
        \time 2/2

        \set Score.currentBarNumber = #2

        <<
          {
            \gavotte-i-piano-up-measures-one-to-seven
            c4--( \> b-flat) \! r2 |
            R1*8

            \repeat volta 2 {
              \gavotte-i-piano-up-measures-ten-to-twenty r2 |
              R1*7

              r2 \gavotte-i-piano-up-measures-twenty-nine-to-thirty-one
              \transpose f f, \relative g' {
                \gavotte-i-piano-up-measures-thirty-two-to-thirty-six
              }
            }

            \once \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
            \once \override Score.RehearsalMark.direction = #DOWN
            \once \override Score.RehearsalMark.font-size = 0
            \once \override Score.RehearsalMark.self-alignment-X = #right
            \mark \markup { \italic "Fine" }

            <<
              {
                \tempo "Trio (Musette)"
                \gavotte-ii-piano-up-voice-one-measures-one-to-sixteen
                \partial 2 g,2 |
              }
              {
                \repeat volta 2 { s2 s1*3 s2 }
                \repeat volta 2 { s2 s1*11 s2 }
              }
            >>

            \once \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
            \once \override Score.RehearsalMark.direction = #DOWN
            \once \override Score.RehearsalMark.font-size = 0
            \once \override Score.RehearsalMark.self-alignment-X = #right
            \mark \markup { \italic "D.C. al Fine" }
          }

          {
            s4-> \f s8( s) |
            s4 s8( s) s4 s8( s) |
            s2 s4.( s8) |
            s4.( s8) s4( s-.) |
            s4 s8( s) s4-> s8( s) |
            s4 s8( s) s2 |
            s4.( s8) s2 |
            s1*10 |

            s4 \f s8( s) |
            s4 s8( s) s4 s8( s) |
            s2 s8( s) s4 |
            s8( s) s4 s8( s) s4 |
            s8( s) s4 s4.( s8) |
            s8( s) s4 s8( s) s4 |
            s8( s) s4 s-. s-. |
            s1( |
            s2.. s8) |
            s8( s) s4 s8( s) s4 |
            s1*8 |

            s2 s4 \f s8( s) |
            s8( s s) s-. s( s s) s-. |
            s8( s) s4 s8( s s) s-. |
            s8( s s) s-. s( s s) s-. |
            s8( s) s4 s8( s) s( s) |
            s8( s s) s-. s( s s) s-. |
            s8( \< s) s4 s8( s) s4 |
            s8( \! s) s( s) s4 s8( s) |
            s2 \ff

            s4_\markup { \center-align { \concat { \dynamic "mp" "–" \dynamic "f" } } } s8( s) |
            s4 s8( s) s4 s8( s) |
            s4( s) s s8( s) |
            s8( s) s4 s8( s) s( s) |
            s2 |
            s4_\markup { \center-align { \concat { \dynamic "mp" "–" \dynamic "f" } } } s8( s) |
            s4 s8( s) s( s) s( s) |
            s4( s) s8( s) s4 |
            s8( s) s4 s8( s) s4-. |
            s2 \breathe s4 s8( s) |
            s4 s8( s) s( s) s( s) |
            s8( s) s4 s8( s) s4 |
            s8( s) s4 s8( s) s4 |
            s2 \breathe s4 \ff s8( s) |
            s4 s8( s) s4 s8( s) |
            s4( s) s8( s) s4 |
            s8( s) s4 s8( s) s4 |
          }
        >>
      }
    }

    #(if preserve-line-breaks? #{ \new Voice {
      s2 s1*4 \break
      s1*4 s1*8 s2 \break
      s1*5 \break
      s1*5 s1*7 \break
      s1*5 \break
      s1*3 s2*2 \break
      s1*3 s2*2 s1 \break
      s1*5 \break
    } #})
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
