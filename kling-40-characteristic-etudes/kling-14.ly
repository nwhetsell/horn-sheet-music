\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Andante con moto"

  \key g \major
  \time 4/4

  b'4._\markup { \italic "dolce" }( c8) d( \< b g' e) |
  d4~( \> 16 e d c \! b4) \tuplet 3/2 { d8( \> c a) \! } |
  g4. g8 <<
    { c( d e c) }
    { s4*2/3 \tweak shorten-pair #'(0 . -0.5) \< s \tweak shorten-pair #'(0.5 . -1) \> s \! }
  >> |
  b4.( d16 c a8) b( \cresc c c-sharp) |
  d4.( b8) g'( d b' g) |
  f-sharp4~( 16 g a f-sharp d4) \tuplet 3/2 { e8( \tweak X-offset -1 \f f-sharp g) } |
  f-sharp8-. a,( g-sharp a f-sharp' e a8. c-sharp,16) |
  e4.( \> f-sharp16 e d4) \! r |

  \afterGrace { c-natural!2\trill_( \p } { b16 c) } f-sharp8( \< e d c) |
  b4~( \> 16 c b a \! g4) \tuplet 3/2 { g8( b d) } |
  d8( f-sharp,) d'( g,) d'8( f-sharp,) g16( \< b f-sharp' e) |
  d4~( \> 16 c-sharp) \! c-. b-. a4( a-sharp) |
  b4.( \< c8) d8( b g' d) |
  b'4 \f \tuplet 6/4 { a16( g) f-sharp-. e-. d-. c-. } b4 \tuplet 3/2 { a8( \> c e) \! } |
  d8( g g, \< a) b4( \grace { c32 b a-sharp b \> } \tuplet 3/2 { e8 d f-sharp,) }
  \afterGrace a2\trill( \< { g32 b \> a } g4) \! r |
  f'4.( \> d8 \! b g f-sharp f) |
  e4~( 16 g c e g4) e |
  d8( g g, a) b( d c a) |
  b4~( 16 c a b g4) \< g16( b d e) |
  f4~ \f 16 e( f e f d) b-. g_( a g) f-sharp!-. f-. |
  e4~( 32 c) e-. g-. c( g) c-. e-. g4 f-sharp!32( g d-sharp e b c a e') |
  d4~( 16 c-sharp) c-. b-. b( a g-sharp a) b( a c16. b32) |
  g4~( 16 d b' d, g4) r |

  b4.( \p c8) d( \< b g' e) |
  d4~( \> 16 e d c \! b4) \tuplet 3/2 { d8( \> c a) \! } |
  g4. g8 <<
    { c( d e c) }
    { s4*2/3 \tweak shorten-pair #'(0 . -0.5) \< s \tweak shorten-pair #'(0.5 . -1) \> s \! }
  >> |
  b4.( d16 c a8) b( \cresc c c-sharp) |
  d4.( b8) g'( d b' g) |
  f-sharp8( e) e4~( \f \> 8 g f-sharp e) \! |
  d8( g g, a) b( \> d c f-sharp,) |
  a4~( \< 16 g b \> a g4) \! r |
  d'4~( \p \< 16^\markup { \italic "rit." } d-sharp e f-sharp \! g4) r |
  d4~( 16 \> c-sharp c a \! g4) r | \bar "|."
}
