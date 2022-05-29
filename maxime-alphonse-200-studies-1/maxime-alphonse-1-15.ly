\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegretto" 4=96

  \key a \minor
  \time 4/4

  #(define measures-one-to-nine #{
    \relative {
      a'8 \mf 8 8 8 e'4->~8 d16 c |
      a8-> 8 g8 8 e2 |
      a8 8 8 8 e'4->~8 d16 c |
      a8-> 8 g8 8 a2 \breathe |
      c8 \f 8 8 8 g'4->~8 f16 e |
      c8-> 8 b8 8 g2 |
      c8 8 8 8 g'4->~8 f16 e |
      c8-> 8 b8 8 g2 \breathe |

      b8 8 a8 8 f2 |
    }
  #})

  \measures-one-to-nine
  a'8 8 g8 8 e4~ \< \repeat unfold 5 { e8 a16 g } |
  \tempo "Rall." e2. \> f-sharp8 g-sharp \breathe | \bar "||"

  \tempo "1º Tempo"
  \measures-one-to-nine
  g8 8 f8 8 e4~8 g16 f |
  e8 \< g16 f e8 g16 f e8 \tweak to-barline ##f \> g16 f e8 g16 f |
  e2. \! r4 |

  <> \p \repeat unfold 2 { a8-> 8 8 8 c4->~8 b16 c | }
  a8-> 8 8 8 2 | \bar "|."
}
