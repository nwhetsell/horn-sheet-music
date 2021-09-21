\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro vivace"

  \key c \major
  \time 2/4

  \repeat volta 2 {
    \partial 8 { g8 \p } |
    c16( \< e) d( f) e( g) f( a) |
    g16( \f b) a( c) b( d) c( e) |
    f16( d) e( c) d( b) c( \> a) |
    b16( d) c( e) d8-. \p \breathe g,,-. |
    c16( \< e) d( f) e( g) f( a) |
    g16( \f b) a( c) b( d) c( e) |
    d16( \> b) c( a) b( g) a( f-sharp) |
    g8 \p a16( c) b( d) f-sharp,( a) |
    g16( b) a( c) b( d) f-sharp,( a) |
    g8-. \< g16( b) a( c) b( d) |
    c16( \f e) d( f-sharp) e( g) f-sharp( a) |
    g4 r8
  }
  \repeat volta 2 {
    g,8 \f |
    g'16( e) f!( d) e( c-sharp) d( f) |
    e16( c-sharp) d( e) f( d) e( c) |
    d16( b) c( e) d( b) c( d) |
    e16( c) d( b) c( a) b( c) |
    d16( \> b) c( a) b( g) a( f-sharp) |
    g16( b) a( f-sharp) g8 g, \p |

    c16( \cresc e) d( f) e( g) f( a) |
    g16( b) a( c) b( d) c( e) |
    f16( \f d) e( c) d( b) c( a) |
    b16( \> g) a( f) g( e) f( d) |
    c8 \p d16( f) e( g) b,( d) |
    c16( e) d( f) e( g) b,( d) |
    c8 \< c16( e) d( f) e( g) |
    f16( \f a) g( b) a( c) b( d) |
    c4 r8
  }
}
