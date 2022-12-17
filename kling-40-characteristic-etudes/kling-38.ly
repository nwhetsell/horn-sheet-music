\version "2.24.0"

\include "../subdivide-beams.ily"

\relative {
  \language "english"

  \transposition f

  \tempo "Adagio cantabile"

  \key c \minor
  \time 2/4

  c''8.( \p b16 d \< c g \acciaccatura b-flat8 a-flat16) |
  g8.( \> e-flat16 c8) \! r |
  \subdivide-beams #1/8 2,2 { r32 g'->( b d g) g,->( c e-flat g) g,->( b d g) g,->( c e-flat) } |
  d8~( \< d32 e-flat \> f d b8) \! r |
  c8.( b16 \< d c g \acciaccatura b-flat8 a-flat16) |
  g8~( \> g32 f-sharp g e-flat c8) \! r |
  \subdivide-beams #1/8 2,2 { r32 g''->( d b g) g'->( e-flat c g) g'->( d b g) g'->( e-flat c) } |
  g8~( \< g32 a-flat \> b-flat a-flat g8) \! r |

  e-flat'4_\markup { \italic "espressivo" }( e-flat,8 d-flat') |
  c4~ \subdivide-beams #1/8 2,2 { 32 \< g32( a-flat c g'16 f) } |
  f8( e-flat16. d-flat32) d-flat8[( \grace { e-flat16 d-flat } c16. b-flat32)] |
  b4( \> c8) \! r |
  e-flat4 \p e-flat,8( \< \tuplet 3/2 { g16 b-flat d-flat) } \! |
  c4~ \subdivide-beams #1/8 2,2 { 32 \< g( a-flat c g' f g f) } |
  \subdivide-beams #1/8 2,2 { f16->( e-flat32. d-flat64) d-flat16->( c32. b-flat64) b-flat16->( a-flat32. g64) \tuplet 5/4 { g32( \< f-sharp g \> c32. b-flat64) } \! } |
  a-flat4( \grace { c16 b-flat } a-flat16\noBeam) \< a-flat( b-flat b) |

  c8.( \f g16) e-flat'8.( c16) |
  g'8( a-flat8->~8 f16 d) |
  \subdivide-beams #1/8 2,2 { b32( a-flat f d b d f a-flat b d f a-flat g d g f) } |
  \subdivide-beams #1/8 2,2 { e-flat32( g b, c f-sharp, g d e-flat) } c8\noBeam g'16. g32 |
  e-flat'8.( b-flat16) f'8.( b-flat,16) |
  g'8( b-flat8->~8 a-flat16 f) |
  \subdivide-beams #1/8 2,2 { d32( b-flat a-flat f d f a-flat b-flat d f a-flat f d b-flat a-flat f) } |
  \subdivide-beams #1/8 2,2 { e-flat32( e-flat' a, b-flat c b-flat f-sharp g } e-flat8) r |

  g8~( \p g32 b d f) e-flat8~( e-flat32 d c b) |
  \subdivide-beams #1/8 2,2 { d32( c b c f-sharp, g d e-flat) } c16\noBeam e-flat-. f-. f-sharp-. |
  g8 f' \subdivide-beams #1/8 2,2 { \tuplet 3/2 8 { f16->( e-flat d) d->( c b) } } |
  \slurDown \afterGrace d4\trill( \< { c16 e-flat \> d) } c8 \! \slurNeutral r |
  a-flat'8~ \f a-flat32 g-. f-. e-flat-. d8~32 e-flat-. f-. d-. |
  g8~32 f-. e-flat-. d-. c8~32 d-. e-flat-. c-. |
  \subdivide-beams #1/8 2,2 {
    g32 \p g->( c e-flat g) g,->( c e-flat g) g,->( b d g) g,->( b d |
    c32) \< g-. e-flat'-. g,-. d'-. g,-. f'-. g,-. e-flat'-. g,-. d'-. g,-. c-. g-. b-. g-. |
    c32( g) e-flat'( g,) d'( g,) f'( g,) e-flat'( g,) d'( g,) c( g) b( g) \! |
    c32 g'->( e-flat d) c-. g->( e-flat d) c-. g''->( e-flat d) c-. g->( e-flat d) |
  }

  \acciaccatura c8 c'8.( b16 \< d c g \acciaccatura b-flat8 a-flat16) |
  g8.( \> e-flat16 c8) \! r |
  g'4~( \subdivide-beams #1/8 2,2 { 32 \< f-sharp g a-flat a b-flat b d) } |
  c8 \> r c,8-.( c-.) \! |
  c2\fermata | \bar "|."
}
