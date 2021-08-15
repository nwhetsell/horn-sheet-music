\version "2.22.0"

\include "../subdivide-beams.ily"
\include "../turn-markup.ily"

\relative {
  \language "english"

  \transposition f

  \tempo "Largo"

  \key a-flat \major
  \time 3/4

  \repeat volta 2 {
    a-flat4_\markup { \dynamic "p" \italic "dolce" } \tweak to-barline ##f \< c e-flat |
    a-flat2\fermata \! r4 |
    c4( \mf b-flat a-flat) |
    <<
     { g8.( \> a16) }
     { s8 s^\turn-markup }
    >> b-flat4 \! r |
    e-flat,4 \tweak to-barline ##f \< g b-flat |
    d-flat2\fermata \! r4 |
    f4( \f e-flat d-flat) |
    <<
     { c8.( \> d-flat16) }
     { s8 s^\turn-markup }
    >> e-flat4 \! r |
    a-flat4\fz a-flat, g-flat |
    e8( f) f4 r |
    e-flat!16 \< g b-flat d-flat f8.( \! g32 f) e-flat8 d-flat |
    b8( \> c) c4 \! r |
    a-flat,4( \f g g-flat) |
    f4 \breathe d-flat''8.( f16) e-flat( d-flat c b-flat) |
    c16( d-flat f, b-flat) a-flat4~( \> a-flat16 g c b-flat) |
    a-flat4 a-flat, \! r |
  }

  b-flat'8.( \f c32 b-flat) g16( e-flat g' f e-flat d c b-flat) |
  a-flat16( f) d c-flat b-flat8[ \breathe f''16( e-flat] d c b-flat a-flat) |
  g8( b-flat e-flat d-flat!) c16( f a-flat f) |
  e-flat8.( \> f32 e-flat d4) \! r |
  e-flat4( \p g b,) \breathe |
  <<
   { c8.( d16) }
   { s8 s^#(turn-with-accidentals (markup #:natural) (markup #:natural)) }
  >> e-flat16( b c g) \subdivide-beams #1/8 2,2,2 { a-flat( e) \tuplet 3/2 { f16( a-flat c) } } |
  b-flat16[ \< r32 b-flat e-flat16 g] b-flat8.[ \f \breathe g16] e-flat b-flat g e-flat |
  \subdivide-beams #1/8 2,2,2 { \tuplet 3/2 { d16( f a-flat) } c-flat16->( \< b-flat) c->( b-flat) d32( b-flat d) f-. a-flat8 d, } |
  e-flat4 \> e-flat, \! r\fermata | \bar "||"

  a-flat,4 \p \< c8 a-flat c e-flat |
  a-flat8( \tuplet 3/2 { b-flat16 a-flat g } a-flat8 b-flat) c4\fermata |
  \subdivide-beams #1/8 2,2,2 { a-flat16 \mf \< b-flat32 c d-flat e-flat f g } a-flat16 g f e-flat d-flat c b-flat a-flat \! |
  g16( a-flat) a( b-flat) b-flat4 r |
  e-flat,4 \p \< g8 e-flat g b-flat |
  d-flat8( \> \tuplet 3/2 { e-flat16 d-flat c } d-flat8 b-flat) g4\fermata \! |
  \subdivide-beams #1/8 2,2,2 { e-flat16 \mf \< f32 g a-flat b-flat c d-flat e-flat( d e-flat d) e-flat( e f e) \! } g16( f e-flat d-flat) |
  d-flat16( \> c b c) c4 \! r |
  \subdivide-beams #1/8 2,2,2 { a-flat16 \< b-flat32 c d-flat e-flat f g } a-flat16 \! e-flat c a-flat g-flat \tweak to-barline ##f \> e-flat c g-flat |
  f8[ \! r16 a-flat16] \< d-flat f a-flat d-flat f( \> c d-flat b-flat) |
  a-flat8[ \tweak Y-offset #3.25 \breathe \tuplet 3/2 8 { e-flat16 \< f g] \subdivide-beams #1/8 2,2,2 { a-flat b-flat c d-flat e-flat e \! } } f8( g,) |
  a-flat4 \> a-flat, \! r | \bar "|."
}
