\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Andantino" 4.=52

  \key g \major
  \time 6/8

  #(define measures-one-to-two #{
    \relative {
      b'8( d, b' a-sharp d, a-sharp' |
      b8 d, b' d4 8--) |
    }
  #})

  #(define measures-one-to-six #{
    \relative {
      \measures-one-to-two
      b'8( d, b' a-sharp d, a-sharp' |
      b8 d, b' e4 8--) \breathe |
      d8( g d c-sharp g' c-sharp, |
      d8 g d e-flat4 8--) |
    }
  #})

  <<
    \measures-one-to-six
    {
      s2._\markup { \dynamic "p" \italic "legato" } |
      s2. \breathe |
      s2. |
      s2. \< |
      s2. \mf |
      s2. \breathe |
    }
  >>
  e-flat''8( g e-flat d g d |
  c-sharp8 \> g' c-sharp, d4 8--) \breathe |

  <<
    \measures-one-to-two
    { s8 \p }
  >>
  d8( \cresc f-sharp, d' c-sharp f-sharp, c-sharp' |
  d8 f-sharp, d' f-sharp4 8--) \breathe |
  f-sharp8( a, f-sharp' e-sharp a, e-sharp' |
  f-sharp8 a, f-sharp' e-sharp4 8--) |
  f-sharp8( \ff a, f-sharp' e-sharp a, e-sharp' |
  f-sharp8 a, f-sharp' \> d4 8--) \breathe |
  c8( \mf d, c' b d, b' |
  a-sharp8 d, a-sharp' b4 8--) |
  c8( d, c' b d, b' |
  a-sharp8 \> d, a-sharp' b4) \! \breathe r8 |

  <<
    \measures-one-to-six
    {
      s2. \p |
      s2.*2 |
      s8 s \< s s4. |
      s2. \f \< |
      s4. s \> |
    }
  >>
  \tempo "Rall."
  d8( \mf \> e! d b g e |
  d4 b8 g4.) \! | \bar "|."
}
