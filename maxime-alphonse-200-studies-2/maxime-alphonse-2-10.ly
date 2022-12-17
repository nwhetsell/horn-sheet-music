\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Moderato" 2=76

  \key b-flat \major
  \time 2/2

  b-flat'4 \mf a8 g f \< g a b-flat |
  c8 d e-flat \> d c b-flat a c \! |
  b-flat4 a8 g f \< g a b-flat |
  c8 d e-flat f \> e-flat d c e-flat |
  d4 \< \breathe e-flat8 f \> e-flat d c b-flat |
  c4 \< d8 e-flat \> d c b-flat a |
  b-flat4 \< c8 d \> c b-flat a g |
  a8 \cresc \breathe f g a b-flat g a b-flat |
  c8 a b-flat c d b-flat c d |
  e-flat8 d c e-flat d c b-flat d |
  <> \f \repeat unfold 2 { c8 f c f, } |
  c'8 g' f e-flat d c b-flat a |
  g8 \> f e f f-sharp g g-sharp a |

  b-flat4 \! \breathe a8 \p g f g a b-flat |
  c8 d e-flat d c b-flat a c |
  b-flat4 a8 g f g a b-flat |
  c8 d e-flat f e-flat d c e-flat |
  d8[ \breathe b-flat] d f d b-flat d f |
  \repeat unfold 2 { e-flat8 b-flat e-flat g } |
  e8 d-flat b-flat g e g b-flat e, |
  f4 r r8 b-flat g #(make-music 'CrescendoEvent 'span-direction START 'span-type 'text 'span-text "cresc. poco a poco") e |
  f8 b-flat, c d e-flat! c d e-flat |
  f8 d e-flat f g e-flat f g |
  a8 f g a b-flat g a b-flat |
  c8 a b-flat c d b-flat c d |
  e-flat8 c d e-flat f g f g |
  f4 \f r4 r8 g \f f g |
  f8 d b-flat e-flat c a d b-flat |
  g8 c a f b-flat g e-flat a |
  f8 d g e-flat c d e-flat e |
  f8 a g f \> \tempo "Rall." e f g a |

  b-flat4 \mf \breathe \tempo "Tempo" a8 g f g a b-flat |
  c8 d e-flat d c b-flat a c |
  b-flat4 a8 g f g a b-flat |
  c8 d e-flat d c b-flat a c |
  b-flat8 \breathe b-flat, \cresc d f b-flat d, f b-flat |
  d8 f, b-flat d f4 r |
  r8 b-flat, \f a g f e-flat d c |
  b-flat4. r8 r2 | \bar "|."
}
