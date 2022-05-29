\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Moderato" 4=88

  \key a \major
  \time 2/4

  #(define measures-one-to-four #{
    \relative {
      a'8 c-sharp g-sharp b |
      a8 e' g-sharp, b |
      a8 e b' e, |
      c-sharp'8 e b e |
    }
  #})

  #(define measures-one-to-fifteen #{
    \relative {
      \measures-one-to-four
      a'8 c-sharp g-sharp b |
      a8 e' b d |
      c-sharp8 g-sharp d-sharp' g-sharp, |
      e'8 c-sharp g-sharp e |
      c-sharp8 \breathe e' d! c-sharp |
      b8 d f-sharp, d' |
      b8 f-sharp' d c-sharp |
      b8 f-sharp c-sharp' f-sharp, |
      d'8 f-sharp, b a |
    }
  #})

  <<
    { \measures-one-to-fifteen }
    {
      s8-!_\markup { \dynamic "mf" \italic "staccato" }
      \repeat unfold 15 { s8-! } |
      s8_\markup { \italic "segue" }
    }
  >>
  g-sharp'8 b e, b' |
  g-sharp8 e' b a |
  g-sharp8 e a e |
  b'8 e, e' d |
  c4 r | \bar "||"

  \key c \major
  c8 \f e b d |
  c8 g' b, d |
  c8 \< g d' g, |
  e'8 g d g |
  e8 \> c a g |
  f-sharp8 \p b b, b' |
  g8 b b, b' |
  a8 g f-sharp b |
  e,8 g f d |
  c8 \mf \cresc e b d |
  c8 g' b, d |
  c8 g' d g \! |
  e'8 g, d' g, |
  c,8 e b d |
  c8 g' b, d |
  c8 \> d e f-sharp |
  \tempo "Rall." g-sharp8 a b e, \breathe | \bar "||"

  \key a \major
  \tempo "Tempo"
  <> \mf
  \measures-one-to-fifteen
  g-sharp4 r |

  g-sharp8 b e, b' |
  g-sharp8 e' b a |
  g-sharp8 e a e |
  b'8 e, e' e, |
  \measures-one-to-four
  a8 \breathe a, \< c-sharp e |
  a8 c-sharp, e a  |
  c-sharp8 e, a c-sharp |
  e8 \> c-sharp a e |
  c-sharp' a e c-sharp |
  a2 \! | \bar "|."
}
