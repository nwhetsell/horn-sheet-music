\version "2.22.0"

\relative {
  \language "english"

  \key g \major
  \time 4/4

  \partial 8 { d''8 } |

  % Alternates from 1st edition
  \mark \default
  e16-. d-. c( b) d-. c-. b( a) c-. b-. a( g) b-. a-. g( f-sharp) | \bar "||" \noBreak

  \mark \default
  e'16( d c) b-. d( c b) a-. c( b a) g-. b( a g) f-sharp-. | \bar "||" \noBreak

  \mark \default
  e'16-. d( c b) d-. c( b a) c-. b( a g) b-. a( g f-sharp) | \bar "||" \noBreak

  \mark \default
  e'16-. d( c) b( d) c( b) a( c) b( a) g( b) a( g) f-sharp\laissezVibrer | \bar "||" \break \noPageBreak

  % Alternates from Gumpert edition
  \mark \default
  e'16( d c) b-. d( c b) a-. c( b a) g-. b( a g) f-sharp-. | \bar "||" \noBreak

  \mark \default
  e'16-. d( c) b-. d-. c( b) a-. c-. b( a) g-. b-. a( g) f-sharp-. | \bar "||" \noBreak

  \mark \default
  e'16( d c b) d( c b a) c( b a g) b( a g f-sharp) | \bar "||"
}
