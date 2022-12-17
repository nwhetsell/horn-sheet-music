\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro"

  \key c \major
  \time 4/4

  \repeat volta 2 {
    c'8_\markup { \italic "sempre staccato" } \p \< d16 e f g a b c \> b a g f e d c |
    d8 \< e16 f g a b c d \> c b a g f e d |
    e8 \< f16 g a b c d e \> d c b a g f e |
    f8 \< g16 a b c d e f \> e d c b a g f |
    g8 \< a16 b c d e f g \> f e d c b a g |
    a8 \< b16 c d e f <g \tweak font-size #-2 e> <a \tweak font-size #-2 f>8 \! r <\tweak font-size #-2 f-sharp, f-sharp,>4 \f |
    <\tweak font-size #-2 g e,>16 g' f e d c b a g e' d c b a g f |
    e16 c' b a g f e d c4 r |
  }
  \repeat volta 2 {
    c'8 \f \> b16 a g f e d c \< d e f g a b c |
    d8 \> c16 b a g f e d \< e f g a b c d |
    e8 \> d16 c b a g f e \< f g a b c d e |
    f8 \> e16 d c b a g f \< g a b c d e f |
    g8 \> f16 e d c b a g \tweak to-barline ##f \< a b c d e f <g \tweak font-size #-2 e> |
    <a \tweak font-size #-2 f>4 \! r16 g f e d c b a g f e d |
    c8 \< d16 e f g a b c8 \> b16 a g f e d |
    c8 \p b16 a g f e d c4 r |
  }
}
