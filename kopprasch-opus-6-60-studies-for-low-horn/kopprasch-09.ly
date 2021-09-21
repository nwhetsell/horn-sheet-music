\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Tempo giusto"

  \key f \major
  \time 3/4

  \repeat volta 2 {
    c''16-. \p c( d c) a-. a( b-flat a) f8 r |
    f'16-. \f f( g f) d-. d( e d) b-flat8 r |
    g16-. g( a g) c-. c( d c) b-flat-. b-flat( c b-flat) |
    a16-. \> a( b-flat a) g-. g( a g) f8 r |
    g16-. \p g( a g) a-. \cresc a( b a) b-. b( c b) |
    c16-. c( d c) d-. d( e d) e-. \f e( f e) |
    d16-. d( c d) a-. a( g a) b-. b( a b) |
    c16-. c( d c) e-. e( f e) c8 r |
    d16( \p c-sharp d) d-. b( a b) b-. g8 r |
    e'16( d e) e-. c( b c) c-. g8 r |
    f'16-. \f f( e f) d-. d( c-sharp d) b-. b( a b) |
    c!16-. \> c( d c) g-. g( a g) c,8 \! r |

    g''16-. \f g( a g) e-. e( f e) c8 r |
    a16-. \p a( b a) d-. d( e d) f8 r |
    f16-. \f f( g f) d-. d( e d) b8 r |
    g16-. \p g( a g) c-. c( d c) e8 r |
    c-sharp16-. \< c-sharp( d c-sharp) a-. a( b-flat! a) c-sharp-. c-sharp( d c-sharp) |
    d16-. \f d( e d) e-. e( f e) f8 r |
    e16-. e( f e) c-. c( d c) b-flat!-. b-flat( c b-flat) |
    g-. \> g( a g) e-. e( f e) c8 r |

    c'16-. \p c( d c) a-. a( b-flat a) f8 r |
    f'16-. \f f( g f) d-. d( e d) b-flat8 r |
    g16-. \p \< g( a g) c-. c( d c) b-flat-. b-flat( c b-flat) |
    a16-. \> a( b-flat a) g-. g( a g) f8 r |
    a16-. \p a( g a) b-flat-. \cresc b-flat( a b-flat) c-. c( b-flat c) |
    d16-. d( c d) e-. e( d e) f-. \f f( e f) |
    d16-. d( e d) b-flat-. b-flat( c b-flat) g-. g( a g) |
    f16-. \> f( g f) a-. a( b-flat a) f8 r |
    b-flat16( \p a b-flat) b-flat-. g( f g) g-. e8 r |
    c'16( \< b-flat c) c-. a( g a) a-. f8 r |
    f'16-. \f f( g f) d-. d( e d) b-flat-. b-flat( c b-flat) |
    g-. g( a g) c-. c( d c) f,8 r |
  }
}
