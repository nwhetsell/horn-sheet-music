\version "2.22.0"

\relative {
  \language "english"

  \key d \major
  \time 2/2

  \override Score.NonMusicalPaperColumn.line-break-permission = ##f

  \bar "" \mark \default
  d''8( c-sharp) d-. f-sharp-. e( d) c-sharp-. e-. | \bar "||"

  \mark \default
  d8-. c-sharp-. d( f-sharp) e-. d-. c-sharp( e) | \bar "||"

  \mark \default
  d8( c-sharp) d( f-sharp) e( d) c-sharp( e) | \bar "||"

  \mark \default
  d8-. c-sharp( d) f-sharp-. e-. d( c-sharp) e-. | \bar "||"

  \mark \default
  d8-. c-sharp( d f-sharp) e-. d( c-sharp e) | \bar "||"

  \mark \default
  d8( c-sharp d) f-sharp-. e( d c-sharp) e-. | \bar "||"

  \mark \default
  d8( c-sharp) d( f-sharp e) d-. c-sharp-. e-. | \bar "||" \break \noPageBreak

  \mark \default
  d8( c-sharp d) f-sharp-. e( d) c-sharp( e) | \bar "||"

  \mark \default
  d8-. c-sharp-. d-. f-sharp-. e( d c-sharp e) | \bar "||"

  \mark \default
  d8-. c-sharp-. d( f-sharp e d) c-sharp-. e-. | \bar "||"

  \mark \default
  d8-. c-sharp( d f-sharp e d c-sharp e) | \bar "||"

  \mark \default
  d8( c-sharp d) f-sharp( e d) c-sharp( e) | \bar "||"

  \mark \default
  d8-. c-sharp-. d( f-sharp e) d-. c-sharp( e) | \bar "||"

  \mark \default
  d8( c-sharp d f-sharp e d c-sharp e) | \bar "||"

  \revert Score.NonMusicalPaperColumn.line-break-permission
}
