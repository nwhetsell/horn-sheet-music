\version "2.22.0"

\relative {
  \language "english"

  \key c \major
  \time 4/4

  % Alternates from 1st edition
  \bar "" \mark \default
  e'8-. c-. d( e) f-. d-. e( f) | \bar "||" \noBreak

  \mark \default
  e8-. c( d) e-. f-. d( e) f-. | \bar "||" \noBreak

  \mark \default
  e8-. c( d) e( f) d( e) f\laissezVibrer | \bar "||" \noBreak

  \mark \default
  e8( c d) e-. f( d e) f-. | \bar "||" \noBreak

  \mark \default
  e8( c) d( e) f( d) e( f) | \bar "||" \break \noPageBreak

  % Alternates from Gumpert edition
  \mark \default
  e8-. c-. d-. e-. f-. d-. e-. f-. | \bar "||" \noBreak

  \mark \default
  e8-. c( d e) f-. d( e f) | \bar "||"
}
