\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegretto" 4.=88

  \key c \major
  \time 6/8

  \partial 8 { c''8( \p } |
  g8-.) r g-. c-. r e( |
  c8-.) r c-. e-. r g( |
  e8-.) r e-. c-. r c( |
  g4.->) r4 a8( |
  e8-.) r e-. a-. r c( |
  a8-.) r a-. c-. r e( |
  c8-.) r c-. a-. r a( |
  e4.->) r4 f8-. |
  c8-. r c( f-.) r a-. |
  f8-. r f( a-.) r c-. |
  a8-. r a( f-.) r f-. |
  c4.-> r4 c8-. |
  g8-. r g( c) r e-. |
  c8-. r c( e) r g-. |
  e8-. r e( c) r c-. |
  g4.-> r |
  g8-> \< c e g4. |
  g8-> c e g4. |
  <> \f \repeat unfold 4 { c,4 r8 } |
  c2. | \bar "|."
}
