\version "2.24.0"

flute-three = \relative {
  \language "english"

  R2.*2
  r8 a'( \p e'4. g8 |
  \tuplet 3/2 { f8 e d } e c d f |
  e8 c d f \tuplet 3/2 { e d c) } |
  c8( d a2~ |
  4) r r |
  R2.

  r8 a( \p e'4. g8 |
  \tuplet 3/2 { f \< e d } e c d f |
  e8 \! c d f \tuplet 3/2 { e d c) } |
  c8( \> d a2~ |
  4) \! r r |
  R2.*2
  \tuplet 3/2 4 { f''8 \tweak X-offset #0 #(make-dynamic-script (markup #:normal-text (#:italic "più") #:dynamic "f")) e f d c d  b-flat a b-flat } |
  \tuplet 3/2 { g8( \> f g } d4~ \tuplet 3/2 { 8 b-flat a } |
  g2) \! r8 c \p |
  c'4.( a8 f d |
  c4) c'8( \< g \tuplet 3/2 { e8 d c) } |
  g''8( \rfz e d-flat \> c8~8 b-flat |
  a4 g) \! r |

  % 13
  R2.
  \tuplet 3/2 4 {
    d'8 \tweak X-offset #0 #(make-dynamic-script (markup #:dynamic "p" #:normal-text (#:italic "leggiero"))) b-flat8 f c' a e c c' g |
    c,8 c' f, a, f' a c a c |
    f8 \< d f, e c a' f d b-flat' |
    g8 e c' a f d c a c |
    d8 \! d' b-flat a e c d b-flat a ~ |
    a8 \> b-flat c d e f g a b-flat |
  }
  \tuplet 3/2 4 { c8 \p a f e d e } c r |
  R2.
  \repeat unfold 2 { f8-.( g-. a-. b-flat-. \tuplet 3/2 { a g f) } | }
  d'8( f e d b-flat a |
  g8 a g d b-flat a |
  g4) r r |
  R2.*2
  c4( \> d c8) \breathe a( \p |

  % 14
  d4. f8 e d |
  c4. d8 b-flat4 |
  a4) r r |
  R2.*2
  r4 \tuplet 3/2 4 { c8-.( \p d-. f-. a-. c-. d-. } |
  \tuplet 3/2 4 { c8-. a-. g-. f-. e-. d-. } c) r |
  R2.*2
  \tuplet 3/2 4 { f'8( \tweak X-offset #0 #(make-dynamic-script (markup #:normal-text (#:italic "più") #:dynamic "f")) e f d c d b-flat a b-flat } |
  \tuplet 3/2 { g8 f g } d4~ \tuplet 3/2 { 8 b-flat a~ } |
  \tuplet 3/2 { 8 c b-flat } a4) r |
  R2.
  r4 c( \p d |
  e4 \> f g ) |
  \tuplet 3/2 4 { c8( \p \dim a f a c d c a f } |
  \tuplet 3/2 4 { a8 c d c a c) } f4~ |
  2.~ |
  2. \!
}
