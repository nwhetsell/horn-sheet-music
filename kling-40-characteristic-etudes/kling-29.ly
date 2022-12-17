\version "2.24.0"

\include "../subdivide-beams.ily"

\relative {
  \language "english"

  \transposition f

  \tempo "Andante"

  \key f \major
  \time 2/4

  f'8-. \p f-. a-. a-. |
  c8-. c-. a4-^ |
  b-flat8 b-flat g g |
  e8 e c4 |
  f8 f a a |
  c8 c a4 |
  f'8 \< f \> b, b \! |
  c4. r8 |
  b-flat!8^>( c,) a'^>( c,) |
  g'8-. g-. g16( \< a b-flat! c) |
  d16^>( \> c,) c'^>( \! c,) b-flat'^>( c,) a'^>( c,) |
  g'8-. g-. g8.( \< g-sharp16) |
  a8 \cresc a c c |
  f8 f a4 \! |
  g8 g f16( \> e d e) \! |
  f8 f f r | \bar "||"

  \tuplet 6/4 4 { f,16-. c-. d-. e-. f-. g-. a-. f-. g-. a-. b-flat-. b-. } |
  \tuplet 6/4 { c16( f) e-. d-. c-. b-flat! } a4 |
  \tuplet 6/4 4 { b-flat16-. e,-. f-. g-. a-. b-flat-. a-. f-. g-. a-. b-flat-. c-. } |
  \tuplet 6/4 { g16( a) g-. f-. e-. d-. } c4 |
  \tuplet 6/4 4 { f16-. c-. d-. e-. f-. g-. a-. f-. g-. a-. b-flat-. b-. } |
  \tuplet 6/4 { c16( f) e-. d-. c-. b-flat! } a4 |
  \tuplet 6/4 4 { g16-. \< a-. b-. c-. d-. e-. f-. \> d-. b-. g-. f-. d-. \! } |
  \tuplet 6/4 { c16-. e-. g-. c-. e-. g-. } c8 r |
  \subdivide-beams #1/8 2,2 { \tuplet 3/2 8 { b-flat,!16-. c,-. c-. b-flat'-. c,-. c-. a'-. c,-. c-. a'-. c,-. c-. } } |
  \tuplet 6/4 4 { g'16-. c,-. d-. e-. f-. f-sharp-. g-. f-sharp-. g-. a-. b-flat-. c-. } |
  \subdivide-beams #1/8 2,2 { \tuplet 3/2 8 { d16-. c,-. c-. c'-. c,-. c-. b-flat'-. c,-. c-. a'-. c,-. c-. } } |
  \tuplet 6/4 4 {
    g'16-. f-sharp-. f-. e-. e-flat-. d-. c-. e-flat-. f!-. f-sharp-. g-. g-sharp-. |
    a16-. f-. g-. a-. b-flat-. b-. c-. a-. b-flat-. c-. d-. e-. |
  }
  \tuplet 6/4 { f16-. c-. d-. e-. f-. g-. } a4 |
  \tuplet 6/4 4 { g16( b-flat) a-. g-. f-. e-. d-. c-. b-. b-flat-. a-. g-. } |
  \tuplet 6/4 { f16-. a-. b-flat-. c-. d-. e-. } f8-. r | \bar "||"

  \subdivide-beams #1/8 2,2 {
    f,32( c) b-. c-. d-. e-. f-. g-. a( f) g-. a-. b-flat!-. c-. d-. e-. |
    f32( e) g-. f-. e-. d-. c-. b-flat-. a4 |
    b-flat32( d) c-. b-flat-. a( c) b-flat-. a-. g( b-flat) a-. g-. f( a) g-. f-. |
    e32( g) f-. e-. d( f) e-. d-. c( b c b c c-sharp d e) |
    f32( c) b-. c-. d-. e-. f-. g-. a( f) g-. a-. b-flat!-. c-. d-. e-. |
  }
  \subdivide-beams #1/8 2,2 { f32( e) g-. f-. e-. d-. c-. b-flat-. } a4 |
  \subdivide-beams #1/8 2,2 { g32( a) b-. c-. d-. e-. f-. e-. g( f) e-. d-. c-. b-. a-. g-. } |
  \subdivide-beams #1/8 2,2 { c16-. e32-. c-. g( c) e, g } c,8 r |
  \subdivide-beams #1/8 2,2 { \repeat unfold 2 { b-flat'!32-. c,( b! c) } \repeat unfold 2 { a'32-. c,( b c) } } |
  \subdivide-beams #1/8 2,2 { g'32 c,( b c) e( c) e-. g-. } c8( c-sharp) |
  \subdivide-beams #1/8 2,2 {
    d32-. c,( b c) c'-. c,( b c) b-flat'!32-. c,( b c) a'32-. c,( b c) |
    g'32-. c( b c d c g e) c( c-sharp d e f f-sharp g g-sharp) |
    a32( f) e-. f-. g( a) b-flat-. b-. c( a) g-sharp-. a-. b-flat-. c-. d-. e-. |
  }
  \subdivide-beams #1/8 2,2 { f32( c) d-. e-. f-. f-sharp-. g-. g-sharp-. } a4 |
  \subdivide-beams #1/8 2,2 { g32( d) b-flat-. g-. d-. g-. b-flat-. d-. c( e) g-. e-. c-. b-flat-. g-. e-. } |
  \subdivide-beams #1/8 2,2 { f16-. g32-. f-. e( f) a-. c-. } f8 r | \bar "|."
}
