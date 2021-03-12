\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Moderato"

  \key c \major
  \time 4/4

  \repeat volta 2 {
    c'4 \p e d f |
    e4 \cresc g f a |
    g4 b a c |
    b4 \f d c2\fermata |
    d4 \f f e g |
    f4 d e c |
    d4 \> e c a |
    b4 \p a g2\fermata \breathe |
    c,4 \p e d f |
    e4 \cresc g f a |
    g4 b a c |
    b4 \f d c2\fermata |
    d4 \f b e c |
    d4 b c a |
    b4 \> g a f-sharp |
    g4 \p d g,2\fermata |
    g'4 \p b a c |
    b4 \cresc d c e |
    d4 f-sharp e g |
    f-sharp4 \f a g2\fermata |
    g4 \f e a f-natural! |
    d4 b g' e |
    c4 a f' d |
    b4 \dim g e' c |
    a4 f d' b |
    g4 e c' a |
    f4 \p d b g |
    c4 g c,2\fermata |
  }
}
