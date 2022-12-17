\version "2.24.0"

\relative {
  \language "english"

  \key c \major
  \time 4/4

  \override Score.NonMusicalPaperColumn.line-break-permission = ##f

  % Alternates from 1st edition
  \bar "" \mark \default
  c'8-. d16-. e-. f-. g-. a-. b-. c( b) a-. g-. f-. e-. d-. c-. | \bar "||"

  \mark \default
  c8-. d16-. e-. f-. g-. a-. b( c b) a-. g-. f-. e-. d-. c-. | \bar "||"

  \mark \default
  c8-. d16-. e-. f( g) a-. b-. c( b) a-. g-. f( e) d-. c-. | \bar "||" \break \noPageBreak

  \mark \default
  c8-. d16( e) f-. g-. a( b) c-. b-. a( g) f-. e-. d( c) | \bar "||"

  \mark \default
  c8-. d16( e) f( g) a( b) c( b) a( g) f( e) d( c) | \bar "||"

  % Alternates from Gumpert edition
  \mark \default
  c8( d16 e f g a b) c( b a g f e d c) | \bar "||"

  \revert Score.NonMusicalPaperColumn.line-break-permission
}
