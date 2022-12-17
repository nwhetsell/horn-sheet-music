\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro"

  \key f \major
  \time 2/4

  \repeat volta 2 {
    \partial 8 { c''8 \mf } |
    f16 d e c d b-flat c a |
    d16 b-flat c a b-flat g a f |
    e16 g f a g b-flat a c |
    b-flat16 g a f g8[ \tweak Y-offset #3.5 \breathe c] |
    f16 d e c d b-flat c a |
    d16 \> b-flat c a b-flat g a f |
    e16 \cresc g f a g b-flat a c |
    b16 d c e d f e g |
    f16 \f a d, f e g c, e |
    d16 f b, d c e g, b-flat |
    a16 c-sharp d f g, b d b |
    c!8[ \breathe r16 e,] \p f a g f |
    e16 g f e d f e d |
    e16 c d e f a g f |
    e16 g f e d f e d |
    c16 \< c' d e f \mf d a b |
    c16 c, d e f d c b |
    c8[ \breathe c16 \p \< e] d f e g |
    f16 a g b a c b d |
    c4 \f r8
  }

  c8 \f |
  e-flat16 a, c f-sharp, a d, e f-sharp |
  g16 b-flat a c b-flat f-sharp g8 \breathe |
  d-flat'16 g, b-flat e, g c, d! e |
  f16 a g b-flat a e f8 \breathe |
  e16 \p \< g f a g b-flat a c-sharp |
  d16 f e g f \f a f d |
  e16 c-sharp e b-flat e a, e' g, |
  f16 a g b-flat
    a8[ \breathe c-sharp16 d] % The 1st edition has a16 c-sharp16 d8.
    |
  e16 c-sharp e b-flat e a, e' g, |
  f16 a g b-flat a8[ r16 f'16] |
  g16 e f-sharp d f d e c |
  e-flat16 c d
    b % The 1st edition has b-flat here.
    d-flat b-flat c a |
  b-flat!16 \> g a f g e f d |
  c8 \! c'16 \f e d f e d |
  c16 e d c b d c b |
  c8 e,16 \mf g f a g f |
  e16 g f e d f e d |
  c4 r4\fermata | \bar "||"

  c16 \p e d f e g e c |
  d16 f e g f a f d |
  e16 g f a g b-flat g e |
  f16 a g b-flat a c a f |
  e16 g f a g b-flat a c |
  b-flat4\fermata r |

  \tempo \markup { "Adagio" \normal-text \italic "rit." }
  g16 \p \< b-flat a c b-flat d c e |
  \tempo "a tempo"
  f16 \mf d e c d b-flat c a |
  d16 b-flat c a b-flat g a f |
  e16 \< g f a g b-flat a c |
  b-flat16 d c e d f e g |
  f16 \f c-sharp d c b g c b-flat |
  a16 f b-flat a g-sharp e a g |
  f-sharp16 \> d g f e c d e |
  f8[ \! r16 a] \mf b-flat d c b-flat |
  a16 c b-flat a g b-flat a g |
  f16 a b-flat c d g, a b-flat |
  c16 f, g a b-flat c, d e |

  % These measures are not in the 1st edition.
  f8[ r16 a] b-flat d c b-flat |
  a16 c b-flat a g b-flat a g |

  f8
    g16 % The 1st edition has f here.
    a b-flat g d e |
  f16 a c a b-flat g d e |
  f8 \< f16 a g b-flat a c |
  b-flat16 d c e d f e g |
  f4 \! r | \bar "|."
}
