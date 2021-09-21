\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Moderato"

  \key c \major
  \time 4/4

  \repeat volta 2 {
    c'2 \p d4 e |
    f4 \< g a b |
    c2 \f d |
    e2 \breathe r4 d \p |
    c4 b a g |
    f4 \cresc e d c |
    b2 \f a |
    g2 r |
    g2 \p a4 b |
    c4 \< d e f-sharp |
    g2 \f a |
    b2 \breathe r4 a \p |
    g4 f! e d |
    c4 \cresc b a g |
    f2 \f e4 d |
    c2 r |
    e'2 \f f-sharp4 g-sharp |
    a4 b c d |
    e2 f-sharp4 g-sharp |
    a2 r |
    d,,2 \p e4 \< f-sharp |
    g!4 a b c |
    d2 \f e4 f-sharp |
    g2 r |
    f!4 \f e d c |
    b4 a g-sharp2 |
    e'4 d c b |
    a4 g! f-sharp e |
    d2. e4 |
    f-sharp4 g a b |
    c4 d e f-sharp |
    g2 r |
    d4 \p \< e f! g |
    <a \tweak font-size #-2 f>4 \f g f e |
    d4 \> c b a |
    g4 \p f e d |
    c4 \< b a g |
    f2 \f f-sharp |
    g4 f! e d |
    c2. r4 |
  }
}
