\version "2.22.0"

\relative {
  \language "english"

  \key c \major
  \time 2/4

  \override Score.NonMusicalPaperColumn.line-break-permission = ##f

  % Alternates from 1st edition
  \bar "" \mark \default
  c'16( e) e-. g-. g( c) c-. b-. | b( a) a-. g-. g8 r | \bar "||" \noBreak

  \mark \default
  c,16-. e-. e( g) g-. c-. c( b) | b-. a-. a( g) g8 r | \bar "||" \noBreak

  \mark \default
  c,16-. e~e g-. g-. c~c b-. | \noBreak b-. a~a g-. g8 r | \bar "||" \noBreak

  \mark \default
  c,16-. e~e g~g c~c b~ | \noBreak b a~a g~8 r | \bar "||"

  \revert Score.NonMusicalPaperColumn.line-break-permission
}
