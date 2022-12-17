\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro vivace"

  \key g \major
  \time 2/4

  <> \f \repeat unfold 3 { d''16( e) b( e) } d( e) b( d) |
  \repeat unfold 3 { c16( d) a( d) } c( d) a( c) |
  \repeat unfold 3 { b16( d) g,( d') } b( d) g,( b) |
  a16-. d( c-sharp d) c-. d( c-sharp d) |
  b16-. d( c-sharp d) a-. d( c-sharp d) |
  \repeat unfold 3 { d16( e) b( e) } d( e) b( d) |
  \repeat unfold 3 { c16( d) a( d) } c( d) a( c) |
  \repeat unfold 3 { b16( d) g,( d') } b( d) g,( b) |
  \repeat unfold 4 { a16( d) f-sharp,( d') } |
  \repeat unfold 4 { g,16( b) d,( b') } |
  \repeat unfold 3 { a16( c) e,( c') } a( c) e,( a) |
  g16( b) d,( b') b( d) g,( b) |
  c16( e) g,( c) b( d) g,( b) |
  \repeat unfold 2 { a16( d) f-sharp,( d') } |
  g,4. r8 |

  <> \f \repeat unfold 3 { e'16( g) c,( g') } e( g) c,( e) |
  \repeat unfold 3 { d16( g) b,( g') } d( g) b,( d) |
  \repeat unfold 3 { c16( e) a,( e') } c( e) a,( c) |
  \repeat unfold 3 { b16( d) g,( d') } b( d) g,( b) |
  \repeat unfold 3 { a16( c) e,( c') } a( c) e,( a) |
  \repeat unfold 3 { g16( b) d,( b') } g( b) d,( g) |
  \repeat unfold 3 { f-sharp16( a) d,( a') } f-sharp( a) d,( f-sharp) |
  \repeat unfold 2 {
    g16( f-sharp) g-. b-. d( g,) b-. d-.
    e16( g,) c-. e-. d( g,) b-. d-.
    c16( e,) a-. c-. b( d,) g-. b-.
    a16( d,) f-sharp-. a-.
  } |
  \repeat unfold 4 { g16( d') b( d) } |
  g2\fermata | \bar "|."
}
