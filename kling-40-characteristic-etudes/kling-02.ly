\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Moderato"

  \key c \major
  \time 4/4

  g'4.( \p a16 g e8) r c r |
  f8. a16 c4~8. b16 d8 c16 a |
  g4.( a16 g e8) r c r |
  d8. g16 f-sharp8. a16 g4 r |
  g4.( a16 g e8) r c r |
  f8( \< g a b) \acciaccatura d c( \> d c a) |
  g( \< e'^\markup { \italic "rit." }) c a g \> f d8. g16 \! |
  \tempo "a tempo"
  c,4 r r2 |
  f4.( g16 f e8) d-. e-. f-. |
  g4-. c-. e-. r |
  f,4.( g16 f e8) d-. e-. f-. |
  g4-. e'-. g8\fermata f16-. e-. d-. c-. b-. a-. |
  g4.( a16 g f8) e-. d-. e-. |
  f16( g f e f g a b c b c b \acciaccatura d8 c16 b c a) |
  \acciaccatura g8 g'16 f e d c b a g d' c b a g32( a f g e f d g) |
  c,4\fermata r r2 | \bar "||"

  g'8-. c16( b d c e c) f-sharp,4( g8) r |
  a8-. d16( c-sharp e d f d) g-sharp,4( a8) r |
  a16( g f-sharp g) c( b a-sharp b) e( d c! b) a( g a f) |
  e16( c) e-. g-. f( d) f-. a-. g8 r r4 |
  g8-. a16-. b-. c-. d-. e-flat-. e-. f-sharp,4( g8) r |
  a8-. b16-. c-. c-sharp-. d-. e-. f-. g-sharp,4( a8) r |
  g8 c16( e g8) c,16( e g f) d-. b-. g( a) f-. d-. |
  c8-. e16-. f-. g8-. a16-. b-. c8-. r r4 |
  d4.( e16 d c8) b-. c-. d-. |
  e8. d16 c8. b16 a8. g16 f8. e16 |
  f4.( g16 f e8) d-. e-. f-. |
  \afterGrace g4\trill_\markup { \italic "rit." }( { f-sharp16 g } \afterGrace c4\trill { b16 c } \afterGrace e4\trill { d-sharp16 e } g8) r |
  \tempo "a tempo"
  \repeat unfold 2 { c,8-. d16( c) b-flat( g) e-. c-. } |
  c'8 r f,16( a) c-. f-. a( g) f-. e-. d-. c-. b-. a-. |
  g8-. c16( e g8) c,16( e g f) d-. b-. g( a) f-. d-. |
  c8-. e16-. f-. g8-. a16-. b-. c8 r r4 | \bar "||"

  g8-._\markup { \italic "leggiero" } a16-. b-. c-. d-. e-. f-. g8-. r g,-. r |
  a8-. b16-. c-. d-. e-. f-. g-. a8-. r a,-. r |
  g8-. a16-. b-. c-. d-. e-. f-. g8-. r g,-. r |
  f'16-. g-. a8-. d,16-. e-. f8-. b,16-. c-. d8-. f,16-. g-. a-flat8-. |
  g8-. a!16-. b-. c-. d-. e-. f-. g8-. r g,-. r |
  a8-. b16-. c-. d-. e-. f-. g-. a8-. r a,-. r |
  g8-. a16-. b-. c-. d-. e-. f-. g8-. r g-. r |
  c,4 r r2 |
  \repeat unfold 2 {
    \repeat unfold 2 { f16( d) b-. g-. a( g) b-. d-. } |
    e16( c) g-. e-. c'( g) e-. c-. e( g) c-. e-. g8-. r |
  }
  g16( f) e-. d( e d) c-. b-flat( c b-flat) a-. g( a g) f-. e( |
  a'16 g) f-. e( f e) d-. c( d c) b-. a( b a) g-. f-. |
  \repeat unfold 2 { g'16( f) e-. d-. c-. b-. a-. g-. } |
  c8 r r4 r2 |
  \repeat unfold 2 { f16( d) b-. g-. a-flat( g) b-. d-. } |
  e16( c,) d-. e-. f-. g-. a-. b-. c-. d-. e-. f-. g8-. r |
  \repeat unfold 2 { a-flat,16( g) b-. d-. f( d) b-. g-. } |
  e'16-. c,-. d-. e-. f-. g-. a-. b-. c( b) d( c) e( d) f( e) |
  g16( a) f( g) e( f) d( e) c( d) b-flat( c) a( b-flat) g( a) |
  f8 c8->~8 d16-. e-. f-. g-. a-. b!-. c-. d-. e-. f-. |
  g8 g4-> g8~( g16 f) e-. d-. c-. b-. a-. g-. |
  c4 r r2 | \bar "|."
}
