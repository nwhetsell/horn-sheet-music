\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro"

  \key a \minor
  \time 4/4

  \repeat volta 2 {
    \partial 4 { e'4 \mf } |
    a16( e') d-. c-. b( d) c-. b-. a( c) b-. a-. g-sharp( b) a-. g-sharp-. |
    a16( e) a-. b-. c( d) b-. c-. a( e) a-. b-. c( d) b-. c-. |
    a16( e' d) c-. b( d c) b-. a( c b) a-. g-sharp( b a) g-sharp-. |
    a16-. e( a) b-. c( d) a-. c-. b4( e8) r \breathe |
    a,16( \f e) a-. b-. c( d) b( c) a-. a( c) e-. a( g) f-. e-. |
    d16( a d) e-. f( g) e( f) d( g, b) d-. g( f) e-. d-. |
    c16( g' f) e-. d( f e) d-. c( e d) c-. b( d c) b-. |
    c16( g c) d-. e( f) d( e) c-. e-. g( f) e-. d-. c-. b-. |
    a16( f) a-. c-. d( e) c-. d-. b( d) f-. e-. d( c) b-. a-. |
    g16( b d) c-. b( d f) e-. d( f a) g-. f-. e-. d-. c-. |
    b16( c) d-. e-. f( a) g-. f-. e( g) f-. e-. d( f) e-. d-. |
    c16( e) d-. c-. b( d) c-. b-. c4
  }

  g4 \f |
  c16( g') f-. e-. d( f) e-. d-. c( e) d-. c-. b( d) c-. b-. |
  c16( g c) d-. e( f) d( e) c( g c) d-. e( f) d( e) |
  c16( g' f) e-. d( f e) d-. c( e d) c-. b( d c) b-. |
  c16( g c) d-. e( f)
    d( % The 1st edition has c here.
    e) d4\fermata( g,8) r |
  c16( g c) d-. e( f) d( e) c-sharp-. e-. g( f) e-. d-. c-sharp-. a-. |
  d16( a d) e-. f( g) e( f) d( e) c!( d) b( c) a( b) |
  g16( d) g-. a-. b( c) a( b) g-. \> b-. d( c) b-. a-. g-. f-. |
  e16( \p c) e-. f-. g( a) f( g) e4 r |
  c'16( d) b( c) a( b) g( a) f4 r |
  f16( d) f-. g-. a( b) g( a) f4 r |
  d'16( e) c( d) b( c) a( b) g4 r |
  g16( e) g-. a-. b( c) a( b) g4 r |
  e'16( f) d( e) c( d) b( c) a4 r |
  a16( f) a-. b-. c( d) a( c) b( g) b-. c-. d( e) b( d) |
  c16( g' f) e-. d( f e) d-. c( e d) c-. b( d c) b-. |
  c16( g c) d-. e( f) d( e) c( e,) b'-. c-. d( \dim e) c( d) |
  b16( e,) a-. b-. c( d) b( c) a^\markup { \italic "rit." }( e g-sharp) a-. b( c) a( b) |
  g-sharp2\fermata \p r4 \tempo "a tempo" e4 \f |

  a16( e') d-. c-. b( d) c-. b-. a( c) b-. a-. g-sharp( b) a-. g-sharp-. |
  a16( e) a-. b-. c( d) b( c) a( e) a-. b-. c( d) b( c) |
  a16( \< c-sharp) d-. e-. f( g) e( f) d( e) c( d) b( c) a( b) |
  g-sharp16( \f e) g-sharp-. b-. e8 r
    a,16( f) a-. c-. % The first edition has c a c e here.
    <a' \tweak font-size #-2 f>8 r |
  d,16( a) d-. f-. a8 r c,16( a) c-. e-. a8 r |
  d-sharp,,16-> c'( b a) e-> c'( b a) f-> c'( b a) d-sharp,-> c'( b a) |
  e8 c16( e) a( e) a-. c-. e( a,) c-. e-. a( g) f-. e-. |
  f( d) b-. d-. c( e) c-. a-. d( b) g-sharp-. b-. a( c) a-. e-. |
  f-. d'-. f( d) e( c) d( b) c( a) d( b) c( a) b( e,) |
  \partial 2. { a2. } | \bar "|."
}
