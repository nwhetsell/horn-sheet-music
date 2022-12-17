\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Poco allegro"

  \key c \major
  \time 3/4

  \repeat volta 2 {
    c'8_\markup { \dynamic "p" \italic "sempre staccato" } d e f g f |
    e8 d c b a g |
    a8 \< b c d e f |
    g8 a b c d e |
    f8 \f e d c b a |
    g8 a g f e d \> |
    c8 e g c a f \! |
    g4 r8 f \p d b |
    c8 d e f g f |
    e8 d c b a g |
    a8 \cresc b c d e f-sharp |
    g8 a b c d b |
    c8 \f a f-sharp a d c |
    b8 g e a f-sharp d |
    g8 a b c d b |
    g4 r r |
  }
  \repeat volta 2 {
    f'8 \f e d c b a |
    g8 a g f e d |
    f8 \> e d c b a |
    g8 \p f-sharp g a b g |
    c4 r8 d e f |
    g8 e c e g c |
    a8 f c f a g |
    f8 e d c b c |
    d8 \tweak to-barline ##f \< e f g a b |
    c4 \! r8 d \f e f |
    g8 e c e f g |
    <a \tweak font-size #-2 f>8 g f e d c |
    b8 c d e f e |
    d8 c b a g f |
    e8 f g \> a b a |
    g8 f e d c b |
    c8 \p d e f g e |
    c4 r8 e d c |
    b8 a g f e d |
    c2 r4 |
  }
}
