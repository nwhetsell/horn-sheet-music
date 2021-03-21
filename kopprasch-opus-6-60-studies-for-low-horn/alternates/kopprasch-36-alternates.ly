\version "2.22.0"

\relative {
  \language "english"

  \key f \major
  \time 2/4

  % Alternates from 1st and Gumpert editions
  \bar "" \mark \default
  \partial 8 { c''8 } | f16( d) e-. c-. d( b-flat) c-. a-. | \bar "||"

  \mark \default
  \partial 8 { c8 } | f16-. d-. e( c) d-. b-flat-. c( a) | \bar "||"

  \mark \default
  \partial 8 { c8( } | f16) d( e) c( d) b-flat( c) a\laissezVibrer | \bar "||"

  \mark \default
  \partial 8 { c8-. } | f16-. d( e c) d-. b-flat( c a) | \bar "||"
}
