\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro moderato"

  \key g \major
  \time 3/4

  \repeat volta 2 {
    g8_\markup { \dynamic "f" \italic "sempre staccato" } b d g b d |
    g8 d b g d b |
    g8 c e g c e |
    g8 e c g e c |
    d8 f-sharp a c e d |
    d,8 g b d e d |
    c8 a f-sharp d g b |
    a8 f-sharp d4 r |
    g,8 b d g b d |
    g8 d b g d b |
    g8 c e g c e |
    g8 e c g e c |
    d8 f-sharp a c e d |
    c8 b a g f-sharp e |
    d8 c' a f-sharp d f-sharp |
    g4 g, r |
  }
  d'8 \f f-sharp a d f-sharp d |
  g8 e c-sharp a g e |
  f-sharp8 a d f-sharp b, e |
  a,8 d c-sharp b a g |
  f-sharp8 a d a f-sharp' d |
  b8 g e' b g' e |
  c-sharp8 e g e c-sharp a |
  d4 d, r |
  c!8 \p d f-sharp a f-sharp d |
  b8 d g b g d |
  d-sharp8 \cresc b d-sharp f-sharp b d-sharp |
  e8 g e b g e |
  c8 \f e g c e g |
  f8 d b g f d |
  b8 d g b d f |
  e8 c g e c4 |
  b8 \p e g-sharp b e d |
  c8 e c a e c |
  d8 \cresc f-sharp a c d c |
  b8 g d b g4 |

  g8 \f b d g b d |
  g8 d b g d b |
  g8 c e g c e |
  g8 e c g e c |
  d8 f-sharp a c e d |
  d,8 g b d e d |
  c8 a f-sharp d e f-sharp |
  g8 g, b d g4 |
  d'8 \mf f d b g f |
  e8 g, c e g c |
  e8 g e b g e |
  f-sharp!8 d f-sharp a c e |
  c8 a f-sharp d c a |
  g4 r8 g' b d |
  f8 d b g f d |
  c8 e g c e c |
  a8 c a f-sharp! d f-sharp |
  g4 r r |
  e-flat8 \cresc f-sharp! a c e-flat c |
  a8 f-sharp! e-flat c a f-sharp! |
  g8 \f b d g b d |
  g8 d b g d b |
  g8 b d g d b |
  g2 r4 | \bar "|."
}
