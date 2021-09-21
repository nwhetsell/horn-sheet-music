\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro vivace"

  \key f \major
  \time 3/4

  \repeat volta 2 {
    f'8_\markup { \dynamic "f" \italic "sempre staccato" } c f a c a |
    b-flat8 g e g e c |
    f8 c f a c a |
    b-flat8 f b-flat d f d |
    c8 f <a \tweak font-size #-2 e> g f e |
    d8 c b-flat a g f |
    e8 d c b c d |
    e8 f g e c4 \breathe |

    f8 \mf c f a c a |
    b-flat8 g e g e c |
    f8 c f a c a |
    b8 g b d f d |
    c8 g c e g e |
    d8 e f g <a \tweak font-size #-2 f> g |
    f8 e d c d e |
    f8 g f e d c |
    b4 r8 g b d |
    f8 e d c b a |
    g8 f e d c b |
    c4 r r |

    r4 r8 c \p e g |
    c4( \< e g-sharp,) |
    a4( \> c e,) \! |
    f8( g) a g f e |
    d4 r8 g b d |
    f4( \< d b) |
    g'4( \> e c) \! |
    \acciaccatura c8 b8 a b g a b |
    c4 r8 g \f a b |

    c8 g c e g e |
    f8 d b d b g |
    c8 g e g e c |
    f8 d b d b g |
    c8 g c e g e |
    f8 c f a c a |
    b8 g b d f b, |
    c4 c, r |
  }

  c8 \p g c e g e |
  f8 d b d b g |
  c8 \cresc g c e g e |
  f8 \f c f a c a |
  g8 e c-sharp' a e' c-sharp |
  d8 a f' d <a' \tweak font-size #-2 a,> r |
  g8 e c-sharp e c-sharp a |
  d8 a f a d c! |
  b-flat!8 g e c-sharp' e c-sharp |
  d4 r r |
  b-flat!8 \mf f b-flat d f d |
  e-flat8 c a c a f |
  b-flat8 f b-flat d f d |
  b \< g b d b g |
  c8 g c e-flat g e-flat \! |
  f8 d b d b g |
  c8 \> g e! c e g |
  b-flat!8 g e4 \! r |

  f8 \f c f a c a |
  b-flat8 g e g e c |
  f8 c f a c a |
  b-flat8 f b-flat d f d |
  c8 a c f <a \tweak font-size #-2 e> g |
  f4 r8 e8 d c |
  \override DynamicLineSpanner.staff-padding = #2.75
  \override Hairpin.to-barline = ##f
  b-flat8 \> a g f e d |
  c4 \! r8 d \< e f |
  g8 a b-flat c d e |
  f4 \! r r |
  \revert DynamicLineSpanner.staff-padding
  \revert Hairpin.to-barline

  r4 r8 f,8 \p a c |
  f4( \< a, c-sharp) |
  d4( \> g, a) \! |
  b-flat8( c d) c b-flat a |
  g4 r8 c, e g |
  b-flat4( \< g e) |
  c'4( \> a f) \! |
  e8( f g) a b-flat e, |
  f4 r8 c \f d e |
  f8 c f a c a |
  b-flat8 g e g e c |
  f8 c f a c a |
  b-flat8 f b-flat d f d |
  c8 a f c f a |
  \override DynamicLineSpanner.staff-padding = #2.5
  b-flat8 \tweak to-barline ##f \> g e g e c |
  f4 \! r8 g8 \< a b-flat |
  c8 d e f g f \! |
  \revert DynamicLineSpanner.staff-padding
  e8 d c b-flat a g |
  f8 \tweak to-barline ##f \> e d c d e |
  f4 \! f, \f r | \bar "|."
}
