\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro sostenuto" 4=126

  \key f \major
  \time 3/8

  #(define measures-one-to-six #{
    \relative {
      c''16 \mf a f c f a |
      c16 b d c b d |
      c16 a f c f a |
      \stemUp
      b-flat!16 a c b-flat a c |
      b-flat16 g e c e g |
      b-flat16 a c b-flat a c |
      \stemNeutral
    }
  #})

  \measures-one-to-six
  b-flat'16 g e g b-flat c |
  d16 c-sharp e d c b-flat |
  a16 g a d c a |
  f16 e f g a b-flat |
  c4 r8 | \bar "||"

  \key a-flat \major
  e-flat16 \p c a-flat e-flat a-flat c |
  e-flat16 d f e-flat d f |
  e-flat16 c a-flat e-flat a-flat c |
  e-flat16 d f e-flat d-flat c |
  b-flat16 g e-flat b-flat e-flat g |
  \stemUp
  b-flat16 a c b-flat a c |
  b-flat16 g e-flat b-flat e-flat g |
  b-flat16 a c b-flat a g |
  f16 d f b-flat g e-flat |
  g16 c a f a c |
  b-flat4 r8 | \bar "||"
  \stemNeutral

  \key g-flat \major
  d-flat16 \mf b-flat g-flat d-flat g-flat b-flat |
  d-flat16 c e-flat d-flat c e-flat |
  d-flat16 b-flat g-flat d-flat g-flat b-flat |
  c-flat!16 b-flat d-flat c-flat b-flat d-flat |
  c-flat16 a-flat f d-flat f a-flat |
  c-flat16 b-flat d-flat c-flat b-flat d-flat |
  c-flat16 a-flat f a-flat c-flat d-flat |
  e-flat16 d f e-flat d-flat c-flat |
  b-flat16 a-flat b-flat e-flat d-flat b-flat |
  g-flat16 f g-flat a-flat b-flat c-flat |
  d-flat4 r8 | \bar "||"

  \key a \major
  e16 \f c-sharp a e a c-sharp |
  e16 d-sharp f-sharp e d-sharp f-sharp |
  e16 c-sharp a e a c-sharp |
  e16 d-sharp f-sharp e d c-sharp |
  b16 g-sharp e b e g-sharp |
  \stemUp
  b16 a-sharp c-sharp b a-sharp c-sharp |
  b16 g-sharp e b e g-sharp |
  b16 a-sharp c-sharp b a-sharp g-sharp |
  f-sharp16 d-sharp f-sharp b g-sharp e |
  g-sharp16 c-sharp a-sharp f-sharp a-sharp d-sharp |
  b4 r8 | \bar "||"
  \stemNeutral

  \key f \major
  \measures-one-to-six
  b-flat16 g e c d e |
  f16 c' a c a f |
  c16 a' f a f c |
  a16 f' c f c a |
  f4. | \bar "|."
}
