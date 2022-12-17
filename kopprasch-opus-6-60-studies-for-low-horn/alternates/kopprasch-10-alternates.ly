\version "2.24.0"

\relative {
  \language "english"

  \key c \major
  \time 4/4

  \override Score.NonMusicalPaperColumn.line-break-permission = ##f

  % Alternates from 1st edition
  \bar "" \mark \default
  e'8-. c-. d( e) f-. d-. e( f) | \bar "||"

  \mark \default
  e8-. c( d) e-. f-. d( e) f-. | \bar "||"

  \mark \default
  e8-. c( d) e( f) d( e) f\laissezVibrer | \bar "||"

  \mark \default
  e8( c d) e-. f( d e) f-. | \bar "||"

  \mark \default
  e8( c) d( e) f( d) e( f) | \bar "||" \break \noPageBreak

  % Alternates from Gumpert edition
  \mark \default
  e8-. c-. d-. e-. f-. d-. e-. f-. | \bar "||"

  \mark \default
  e8-. c( d e) f-. d( e f) | \bar "||"

  \revert Score.NonMusicalPaperColumn.line-break-permission
}
