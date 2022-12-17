\version "2.24.0"

\relative {
  \language "english"

  \key g \major
  \time 4/4

  \partial 8 { d''8 } |

  \override Score.NonMusicalPaperColumn.line-break-permission = ##f

  % Alternates from 1st edition
  \mark \default
  e16-. d-. c( b) d-. c-. b( a) c-. b-. a( g) b-. a-. g( f-sharp) | \bar "||"

  \mark \default
  e'16( d c) b-. d( c b) a-. c( b a) g-. b( a g) f-sharp-. | \bar "||"

  \mark \default
  e'16-. d( c b) d-. c( b a) c-. b( a g) b-. a( g f-sharp) | \bar "||"

  \mark \default
  e'16-. d( c) b( d) c( b) a( c) b( a) g( b) a( g) f-sharp\laissezVibrer | \bar "||" \break \noPageBreak

  % Alternates from Gumpert edition
  \mark \default
  e'16( d c) b-. d( c b) a-. c( b a) g-. b( a g) f-sharp-. | \bar "||"

  \mark \default
  e'16-. d( c) b-. d-. c( b) a-. c-. b( a) g-. b-. a( g) f-sharp-. | \bar "||"

  \mark \default
  e'16( d c b) d( c b a) c( b a g) b( a g f-sharp) | \bar "||"

  \revert Score.NonMusicalPaperColumn.line-break-permission
}
