\version "2.22.0"

\relative {
  \language "english"

  \key c \major
  \time 3/4

  \override Score.NonMusicalPaperColumn.line-break-permission = ##f

  % Alternates from Gumpert edition
  \bar "" \mark \default
  c'8( d e) f-. g-. f-. | e( d c) b-. a-. g-. | \bar "||"

  \mark \default
  c8-. d-. e-. f( g f) | e-. d-. c-. b( a g) | \bar "||"

  \mark \default
  c8. d16 e8. f16 g8. f16 | e8. d16 c8. b16 a8. g16 | \bar "||"

  \revert Score.NonMusicalPaperColumn.line-break-permission
}
