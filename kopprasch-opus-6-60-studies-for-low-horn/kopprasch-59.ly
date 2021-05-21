\version "2.22.0"

\include "../turn-markup.ily"

\relative {
  \language "english"

  \transposition f

  \tempo "Larghetto"

  \key a \minor
  \time 2/4

  \partial 16 e'16_\markup { \dynamic "p" \italic "dolce" }
  a8 e c'16( d32 c) b16 a |
  <<
    { g-sharp8.( a16) }
    { s8 s_#(turn-with-accidentals (markup #:null) (markup #:sharp)) }
  >> b8 r16 e, |
  b'8 e, d'16( e32 d) c16 b |
  a8.[( \grace { b32 a g-sharp a } c16)] e8 r16 e \f |
  a8 e16 c a e c a |
  g-sharp16 b e g-sharp b8[ \breathe d16( b)] |
  c8[ \breathe a32( b c d)] e8( g-sharp,) |
  a16. \> e32 c'16. b32 a8 \! r16 \bar "||"

  g16 \p |
  c8 g e'16( \cresc f32 e d16 c) |
  <<
    { b16.( c32 }
    { s16 s^\turn-markup }
  >> d16) b g8 r16 g |
  d'8 g, f'16( g32 f e16 d) |
  c16( \mf g g' e) c8 r16 g, \f |
  c16( e g c) e( g b-flat e,) |
  f4 \breathe \acciaccatura g8 f16 e f d |
  c16( d32 c b16 c) e( d g b,) |
  c8 \> g16 e c8 \! r16 \bar "||"

  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = 2,2

  e16^"Variation" \mf |
  a32 e f-sharp g-sharp a g-sharp a b c( d64 c b32) c d c b a |
  \tuplet 3/2 8 { g-sharp16 e f-sharp g-sharp a a-sharp } b8 r16 e, |
  b'32 e,( d-sharp e) g-sharp b, e g-sharp b e, g-sharp b d( e64 d c32) b |
  \tuplet 3/2 8 { a16 \< b c c-sharp d d-sharp } e8 r16 e \f |
  a8.( e32 c) \tuplet 3/2 8 { a16 e d c b a } |
  \tuplet 3/2 { g-sharp16 b d } f32 g-sharp b d f8 r16 b, |
  \tuplet 3/2 8 { c16( b) a d-sharp( c) a] e'( c) a e f-sharp g-sharp } |
  \tuplet 3/2 8 { a c d-natural! d-sharp( e) c } a8 r16 \bar "||"

  g16 \p |
  c32 c, e g c e, g \< c e( f64 e d32 e) f( e d c) |
  \tuplet 3/2 8 { b16 \> d b g d b } g8 \! r16 g' |
  d'32 g,( f-sharp g) b g \< b d f-natural!( g64 f e32 f) g( f e d) |
  \tuplet 3/2 8 { c16 \> g' e c g e } c8 \! r16 g \f |
  c32( g) c e g c e g b-flat g e c \afterGrace b-flat8\trill( { a16 b-flat) } |
  a16 b-natural!32 c-sharp d e f g a e( f e) g( f a, d) |
  c-natural!64 g a b c d e f g32( e) c g f( d) b g f-sharp( g) a b |
  c e g c e c g e c8 r16 \bar "||"

  \set subdivideBeams = ##f

  e16^"Coda"_\markup { \dynamic "p" \italic "dolce" }
  a8 e c'16( d32 c) b16 a |
  <<
    { g-sharp8.( a16) }
    { s8 s_#(turn-with-accidentals (markup #:null) (markup #:sharp)) }
  >> b8 r |
  <<
    { b8.( \< c16) }
    { s8 s^\turn-markup }
  >> d8 \! r |
  \set subdivideBeams = ##t
  <<
    { d16.( \mf e32) }
    { s16 s^\turn-markup }
  >> f32 e d c b \> a g-sharp f e d c b |
  \set subdivideBeams = ##f
  a16 \p b c d e f-sharp g-sharp a |
  e8 r e16-.( \pp d-. c-. b-.) |
  a8 r a' r |
  a,4. r16 \bar "|."
}
