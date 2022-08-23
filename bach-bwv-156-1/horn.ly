\version "2.22.0"

\include "definitions.ily"
\header {
  instrument = "Horn in F"
}

\include "oboe.ily"

\layout {
  \numericTimeSignature
  \set Score.markFormatter = #format-mark-box-alphabet
  \context {
    \Score
    #(if preserve-line-breaks? #{
      \override NonMusicalPaperColumn.line-break-permission = ##f
    #})
    \override TupletBracket.bracket-visibility = #'if-no-beam
  }
}

\score {
  \new Staff <<
    \new Voice {
      <<
        {
          \transposition f

          \transpose g d'
          \transpose \tonic g,
          \relative g' \shiftDurations #-1 #0 {
            \repeat volta 2 {
              \oboe-measures-one-to-two
              a8 g16 f~8 r8 f'4~16 d16 e f |
              \oboe-measures-four-to-six
            }
            \alternative {
              { \partial 2 { c4~8 r } }
              { \partial 2 { c4~8 r } }
            }
            \partial 2 { e-flat4~16 c a g } |
            \oboe-measures-eight-to-nine
            g16 f! e-flat d c b-flat a f-sharp' g16 \tuplet 3/2 { a32 g f-sharp } g16. a32 \acciaccatura { a b-flat } a8. g16 |
            g4~8 r b-flat,4~16 a g b-flat |
            \oboe-measures-twelve-to-eighteen
            <<
              { f16 e f a b-flat a \tuplet 3/2 { g a b-flat } g4 8. f16-- }
              { s2 s4\startTrillSpan s8 s\stopTrillSpan }
            >> |
            f2\fermata
          }
        }
        {
          \tempo "Andantino" 4=63

          s2_\markup { \dynamic "mf" \italic "espress. molto" } s8 s( s s) |
          s2 s8 s( s s) |
          s4 \< s8( s) \! s2 |
          s8 s( s s) s4 s8( s) |
          s4( \> s8 s \! s4) s |
          s2 \p s8 s( s s) |
          \repeat unfold 2 {
            s2 s8 s( \< s s) |
            s2 \> s8 \! s( s s) |
          }
          s8( s) s( s) s2 |
          s8 \< s( s s) \! s4.( s8) |
          \repeat unfold 2 { s2 \> s \! | }

          \mark \default % A
          s2 \mf s8 s( s s) |
          s2 s8 s( s s) |
          s8( s) s4 s( s) |
          s4 s8( s) s2 \f |
          s8 s( s s16 s) s2 |
          s8 s( s s) s( s) s( s) |
          s8( \tuplet 3/2 { s16 s s) } s8.( s16) s4.( s8) |
          s1 |

          \mark \default % B
          s2 \mp s8 s( s s) |
          s2 \cresc s8 s( s s) |
          s8( \< s) s \! s_\markup { \italic "largamente" } s s16( s) s4 |
          s4( \> s) \! s8 s( \p s s) |
          \tuplet 3/2 4 { s8( s s) s8( s \cresc s) s8( s s) s8( s s) } |
          \tuplet 3/2 { s8( s s) } s4 \f s8 s( s s) |
          s2._\markup { \italic "poco rit." } s8( s) |
          s4( \> s) \! s2 |

          \mark \default % C
          s2^\markup { \italic "a tempo" } \pp s8 s( s s) |
          s2 s8 s( s s) |
          s4 s8( s) s2( |
          s8 s) s4 s( s8 s) |
          s4( \< s8 s) s4( s8 s) |
          s1 \cresc |
          s8 s( s s) s4.( s8) |
          s8( \tweak X-offset #0 #(make-dynamic-script (markup #:dynamic "f" #:normal-text (#:italic "poco a poco rit."))) s) s4 s8( s) \tuplet 3/2 { s8( s s) } |
          s2 s4.( s8) |
          s1 | \bar "|."
        }
      >>
    }

    #(if preserve-line-breaks? #{ \new Voice {
      \repeat unfold 9 { s1*4 \break }
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
