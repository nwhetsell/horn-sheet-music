\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro"

  \key c \major
  \time 4/4

  \repeat volta 2 {
    c'16_\markup { \dynamic "p" \italic "sempre staccato" } e g f16 e d c b c \< d e f g a b c |
    g16 \mf b d c b a g f-sharp g \< a b c d e f-natural! g |
    e8-- \f g16 f e d c b a c f e d c b a |
    g16 b e d c b a g f a d c b \> a g f |
    e16 \< c d e f g a b c4 \! r |
    f,8 \mf \< g16 a b-flat c d e f4 \! r |
    d,8 \mf \< e16 f-sharp g a b-natural! c-sharp d4 \! r |
    g,8 \mf \< a16 b c d e f-sharp g4 \! r |
    c,8 \f b16 a g f-sharp e d c b a g f-sharp8 r |
    g8 a16 b c d e f-sharp g a b c d8 r |
    e16 d c b a g f-sharp e f-sharp g a b c d e f-sharp |
    g8 f-sharp16 e d c b a g4 r |
  }
  g'8 \mf f-natural!16 e-flat d c b-flat a g b-flat d c b-flat a g f-sharp |
  g8 \< a16 b-flat c d e f-sharp g4 \! r |
  e-flat,8 f16 g a-flat b-flat c d e-flat f g f e-flat d c b |
  c16 d e-flat d c b-flat a-flat g a-flat b-flat c b-flat a-flat g f e-natural! |
  f16 g f e f g a-flat b-flat c \> b-flat a-flat g f e-flat d c |
  b-natural!16 \p g a b c d e-flat f g4 r |
  c,8 \< d16 e-flat f g a b c4 \! r |
  c16 \mf e-flat g f e-flat d c b c4 r |
  f,8 \p \< g16
    a-natural! % The 1st edition has a-flat here.
    b-flat c d e-natural! f4 \! r |
  b-flat,16 \mf d f e-flat d c b-flat a b-flat c d e-flat f g a-flat f |
  e-flat8 d16 c b-flat a-flat g f e-flat4 r |
  a-flat8 \< b-flat16 c d-flat e-flat f g a-flat4 \! r |
  e-natural!16 \f f g f e d-flat c b-natural! c b c d-flat c b-flat a-flat g |
  f8 g16 a-flat b-flat c d e-natural! f4 r |
  b-natural,!16 \p d f e-flat d c b c d4 r |
  g,16 b d c b a g f-sharp g4 r |

  c,16 \f e g f-natural! e d c b c d e f g a b c |
  f,16 a c b-flat a g f e f g a b-flat c d e f |
  g,16 a b-natural! c d e f g f e d c b a g f |
  e16 c d e f g a b c4 r |
  a16 c-sharp e d c-sharp b-flat a b-flat a b c-sharp! d e f g e |
  d8 c-natural!16 b-flat a g f e d4 r |
  e16 f-sharp g-sharp a b c d e f-natural! e d c b8 r |
  a8 b16 c d e f-sharp g-sharp a4 r |
  g-natural!16 f e d c b a g f e d c b8 r |

  c16 \p e g f e d c b c \cresc d e f g a b c |
  f,16 g a b-flat c d e f g, a b c d e f g |
  e8 \f g16 f e d c b a d f e d c b a |
  g16 c e d c b a g f b d c b a g f |
  e16 c d e f g a b c8 b16 a g f e d |
  c8 b16 a g f e d c4 r | \bar "|."
}
