\version "2.24.0"

\relative {
  \language "english"

  \key c \major
  \time 2/4

  \override Score.NonMusicalPaperColumn.line-break-permission = ##f

  \partial 8 { g8 } |

  % Alternates from 1st edition
  \mark \default
  c16-. e-. d-. f-. e-. g-. f-. a-. | \bar "||"

  \mark \default
  c,16( e) d-. f-. e( g) f-. a-. | \bar "||"

  \mark \default
  c,16-. e-. d( f) e-. g-. f( a) | \bar "||"

  \mark \default
  c,16 e( d) f( e) g( f) a\laissezVibrer | \bar "||"

  \mark \default
  c,16( e d) f-. e( g f) a-. | \bar "||"

  \mark \default
  c,16-. e( d f) e-. g( f a) | \bar "||"

  \revert Score.NonMusicalPaperColumn.line-break-permission
}
