\version "2.24.0"

\include "../subdivide-beams.ily"
\include "../turn-markup.ily"

\relative {
  \language "english"

  \transposition f

  \tempo "Adagio"

  \key f \major
  \time 2/4

  \partial 8 { a'16( \tweak X-offset #0 #(make-dynamic-script (markup #:dynamic "p" #:normal-text (#:italic "dolce"))) \< b-flat) } | |
  c8 d16 e g16( f e d) |
  c-sharp8~( \> c-sharp32 d) b-flat g e8[ \breathe c!] \p \< |
  f8 g16 a b-flat( d c b-flat) |
  c8\( \> \afterGrace { b-flat \tweak avoid-slur #'inside \trill } { a16( b-flat } a8)\) \! \breathe f16( \p \< g) |
  a8 b16 c-sharp d8 e |
  f( \f c-sharp) d[ \breathe c16( b-flat!)] |
  a8~( \> a32 g) f e f8 \< g |
  a4.\fermata \f a16( g) |
  f16.( \> g32) e16.( f32) d8 g \f |
  c,4 c,16-. e''( d c) |
  b8 g,-. f''16( g32 f e16 d) |
  b8~( b32 c) g e c16 e'( d c) |
  c-sharp8~( c-sharp32 d) b g f16( a g f) |
  e16-. c!( b c) e( g) c-. e-. |
  g4
    g, % The 1st edition has e here.
    |
  f16-. c( b c) e-flat( f-sharp) a-. c-. |
  e-flat4 f-sharp,, |
  g8[ \tweak Y-offset #3 \breathe
  \subdivide-beams #1/8 2,2 {
    d-sharp'32( e) c-. g-.] f-sharp'( g) e-. c-. b'( c) g-. e-. |
    d-sharp'32( e) c-. g-. f-sharp'( g) e-. c-. d-sharp( e) c-. g-. b( c) g-. e-. |
  }

  d!8[ \tweak Y-offset #3 \breathe e32( f) d-. b-.] g8 c-sharp'32( d) b-. g-. |
  c!8 b32( c) g-. e-. c8 \bar "||"

  g'16( \p a) |
  b-flat!8 \< c-sharp16 d( e \> c-sharp a g) |
  e8~( \< e32 f) a-. c-sharp-. d8 c |
  b-flat!8~ \f b-flat32 d e f-sharp g16( \> f e d) |
  c-sharp16 \p a( b-flat! a) e' \< g,( a g) |
  f-sharp8~ \f f-sharp32 g a b c8[ \breathe g32( b) c-. d-.] |
  e-flat8( \> d c-sharp c) \! |
  b-flat![ \breathe f-sharp'32( \f g) d-. b-flat-.] a8 d32( e-flat) c-. a-. |
  g8[ \breathe c-sharp32( d) b-flat-. g-.] d8 f-sharp |
  g4 r8 g16( \p a) |
  <<
    { b-flat8.( \< c16) }
    { s8 s^\turn-markup }
  >> d-flat16( b-flat) g-. f-. |
  e8 \> a32( b-flat) g-. e-. c8 \! a'16( \p b-flat) |
  c8 \< d16 e g( f e d) |
  c-sharp8~( \> c-sharp32 d) b-flat g e8 c! |
  f8 \< g16 a b-flat( d c b-flat) \! |
  c8\( \afterGrace { b-flat \tweak avoid-slur #'inside \trill } { a16( b-flat} a8\noBeam)\) f16( \p g) |
  a8 \< a16 b-flat
  <<
    { c8.( d16) \! }
    { s8 s^\turn-markup }
  >> |
  e-flat8( d16 c-sharp) d8\fermata[ \breathe b-flat16( \> a)] |
  g16.( \p a32 f16. g32) e8 c \f |
  f4 f,16 a'( g f) |
  e8 c, b-flat''16( c32 b-flat a16 g) |
  \subdivide-beams #1/8 2,2 { e32( f) a-. f-. f,16 f' } a( b-flat32 a g16 f) |
  \subdivide-beams #1/8 2,2 { d-sharp32( e) g-. e-. c,16 g'' } b-flat16( c32 b-flat a16 g) |
  f8[ r16 f,] \p a c f \cresc a |
  c4 \breathe e-flat, |
  d8[ r16 f] a-flat b d f |
  a-flat4 \f \breathe b,, |
  c8[ \tweak Y-offset #3 \breathe e32( f) c-. a-.] \subdivide-beams #1/8 2,2 { g-sharp'( a) f-. c-. b'( c) a-. f-. } |
  c8 b'32( c) a-. f-.\subdivide-beams #1/8 2,2 { e'( f) c-. a-. b( c) a-. f-. } |
  c8 a'32( b-flat!) g-. e-. c,8 b''32( c) b-flat-. g-. |
  f8 e32( f) c-. a-. f8-. \bar "|."
}
