\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro"

  \key f \major
  \time 2/4

  \repeat volta 2 {
    \partial 8 a'16( \p \< b-flat) |
    c16( b c) f-. d( c-sharp d) f-. |
    e16( \f d-sharp e) g-. f( e) d-. c-. |
    c16( b-flat d) c-. b-flat( a) g-. f-. |
    e16( \> c') g-. e-. c8 a'16( \p \< b-flat) |
    c16( b c) f-. d( c-sharp d) f-. |
    e16( \f d-sharp e) g-. f( e f) <a \tweak font-size #-2 d,>-. |
    g16( f-sharp) g-. e-. f( e f) d-. |
    e16( d-sharp e) g-. d( \< c-sharp d) g-. |
    c-natural,!16( \mf b c) f-. b,( a-sharp b) e-. |

    \stemDown a-natural,!16( g-sharp a) d-. b( g-sharp b) d-. \stemNeutral |
    % The 1st edition has:
    % a-natural,!16( g a) d-. b( g a) b-. |

    c16( e) c-. g-. a( c) a-. f-. |
    e16( \> g) e-. c-. d( f) d-. b-. |
    c8[ \p r16 e] g( f-sharp g) b-. |
    c16( b c) e-. f( d) b-. g-. |
    c16( e) c-. g-. a( c) a-. f-. |
    e16( g) e-. c-. d( f) d-. b-. |
    c4 r |
    c16( \p b) c-. e-. g( f-sharp) g-. e-. |
  }
  \alternative {
    { c4 r8 }
    { c4 r | \bar ".|:-||" }
  }
  \repeat volta 2 {
    e16( \p d-sharp e) g-. b-flat!( a b-flat) g-. |
    e4 r |
    a16( c-sharp) e-. d-. c-sharp( e) g-. e-. |
    c-sharp4 r |
    f,16-. \f d'( c-sharp d) g,-. d'( c-sharp d) |
    a16-. d( c-sharp d) b-flat!-. d( c-sharp d) |
    a16( f') e-. d-. c-sharp( e) d-. c-sharp-. |
    d4 r |
    b-flat16( d) c-natural!-. b-flat-. a( c) b-flat-. a-. |
    g16( b-flat) a-. g-. f( a) g-. f-. |
    e16( \> g) f-. e-. d( f) e-. d-. \! |
    c4 r8 a'16( \p b-flat) |

    c16( \< b c) f-. d( c-sharp d) f-. |
    e16( \f d-sharp e) g-. f( e) d-. c-. |
    c16( b-flat) d-. c-. b-flat( a) g-. f-. |
    e16( \> c') g-. e-. c8 \p a'16( b-flat) |
    c16( b c) a-. b-flat( a b-flat) g-. |
    a16( g a) c-. g( f-sharp g) c-. |
    f-natural,!16( e f) b-flat-. e,( d-sharp e) a-. |
    g16( d') b-flat-. g-. e( b-flat') g-. e-. |
    f8[ r16 a] c( b c) e-. |
    f16( c) a-. c-. b-flat!( g) e-. c-. |
    f8[ r16 a] c( \< b c) e-. |
    f16( \f <a \tweak font-size #-2 e>) f-. c-. d( f) d-. b-flat!-. |
    a16( c) a-. f-. g( \> b-flat) g-. e-. \! |
    f4 r |
    f16( \p e f) a-. c( b c) a-. |
  }
  \alternative {
    { f4 r | }
    { f4 r8 \bar "|." }
  }
}
