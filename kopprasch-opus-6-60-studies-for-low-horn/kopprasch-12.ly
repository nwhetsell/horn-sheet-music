\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro moderato"

  \key g \major
  \time 4/4

  \repeat volta 2 {
    \partial 8 { d''8 \mf } |
    e16( d) c-. b-. d( c) b-. a-. c( b) a-. g-. b( a) g-. f-sharp-. |
    g16( a) b-. c-. a( b) c-. d-. b( c) d-. e-. a,8 r16 d \f |
    g16( f-sharp) e-. d-. f-sharp( e) d-. c-. e( d) c-. b-. d( c) b-. a-. |
    c16( b) \> a-. g-. b( a) g-. f-sharp-. g4 \! r |
    g16( \mf b) a-. g-. a( b) c-. d-. c( b) a-. g-. b( a) g-. f-sharp-. |
    e16( f-sharp) g-. a-. g( a) b-. c-. b( a) g-. f-sharp-. g( \> f-sharp) e-. d-sharp-. |
    e8 r e16( \p f-sharp) g-. a-. f-sharp( \< g) a-. b-. g( a) b-. c-sharp-. |
    d8 r d16( \f e) f-sharp-. g-. c-sharp,( d) e-. f-sharp-. b,( c-sharp!) d-. e-. |
    a,16( b) c-sharp!-. d-. g,( a) b-. c-sharp!-. f-sharp,( \> g) a-. b-. e,( f-sharp) g-. a-. |
    d,8 r d16( \p e) f-sharp-. g-. a( \< b) c-sharp-. d-. c-sharp( d) e-. f-sharp-. |
    d4 \f e16( d) c-sharp-. b-. a4 a16( g) f-sharp-. e-. |
  }
  \alternative {
    { d2 r4 r8 }
    { d2 r | \bar ".|:-||" }
  }
  \repeat volta 2 {
    d'16( \mf c-sharp) b!-. a-. b( c-sharp) d-. e-. f( e) d-. c-sharp-. d( c) b-flat-. a-. |
    b-flat16( a) g-. f-sharp-. g( a) b-flat-. c-. d( c) b-flat!-. a-. b-flat( a) g-. f-sharp-. |
    g16( \< a) b-flat-. c-. a( b-flat) c-. d-. b-flat( c) d-. e-flat-. c( d) e-flat-. f-. |
    e-flat16( \cresc d) c-. b-flat-. a( b-flat) c-. d-. c( b-flat) a-. g-. f-sharp!( g) a-. b-flat-. |
    g4 \breathe g'16( \f f) e-flat-. d-. c-sharp4 g16( a) b-flat-. g-. |
    d4 r r r8. d'16 \mf |
    e16( d) c-. b-. d( c) b-. a-. c( b) a-. g-. b( a) g-. f-sharp-. |
    g16( \< a) b-. c-. a( b) c-. d-. b( c) d-. e-. c( d) e-. f-sharp-. |
    g8 r e16( \f f-sharp) g-. <a \tweak font-size #-2 e>-. d,( e) f-sharp-. g-. c,( d) e-. f-sharp-. |
    g8 r e16( f-sharp) g-. <a \tweak font-size #-2 e>-. d,( e) f-sharp-. g-. c,( d) e-. f-sharp-. |
    b,( c) d-. e-. a,( b) c-. d-. g,( \> a) b-. c-. f-sharp,( g) a-. b-. |
    g8 r g16( \mf \< a) b-. c-. a( b) c-. d-. c( d) e-. f-sharp-. |
    g4 \f <a \tweak font-size #-2 f-sharp>16( g) f-sharp-. e-. d4 d16( c) b-. a-. |
  }
  \alternative {
    { g2 r | }
    { g2 r4 r8 \bar "|." }
  }
}
