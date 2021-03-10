\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro"

  \key c \major
  \time 2/4

  \repeat volta 2 {
    c'16( \p e) e( g) g( \< c) c( b) |
    b16( \> a) a( g) g8 \! r |
    g16( \p b) b( d) d( \< f) f( e) |
    e16( \> d) d( c) c8 \! r |
    c,16( \f e) e( a) a( c) c( e) |
    e16( a,) a( d) d( g,) g( b) |
    b16( a) a( c) c( f-sharp,) f-sharp( a) |
    g16( a) a( b) g8 r |
  }
  \repeat volta 2 {
    g16( \p b) b( d) d( \< f) f( e) |
    e16( \> d) d( c) \! c( b) b( c) |
    g16( \p c) c( e) e( \< g) g( f) |
    f16( \> e) e( d) \! d( c-sharp) c-sharp( d) |
    f16( \f d) d( b) b( g) g( a-flat) |
    a-flat16( \> g) g( f-sharp) g8 \! r |

    g16( \p a) a( b) b( c) c( d) |
    b16( \cresc c) c( d) d( e) e( f) |
    e16( \f e,) e( g-sharp) g-sharp( b) b( e) |
    e16( e,) e( a) a( c) c( e) |
    e16( f) f( d) d( b) b( g) |
    g16( \> f) f( d) d( b) b( g) |

    c16( \p e) e( g) g( \< c) c( b) |
    b( \> a) a( g) g8 \! r |
    g16( \p b) b( d) d( \< f) f( e) |
    e16( \> d) d( c) c8 \! r |
    c,16( \f e) e( g) g( b-flat) b-flat( g) |
    g16( f) f( a) a( c) c( a) |
    a16( g) g( b-natural!) b( d) d( b) |
    c16( d) d( e) c8 r |
  }
}
