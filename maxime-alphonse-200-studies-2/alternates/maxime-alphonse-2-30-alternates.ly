\version "2.24.0"

\relative {
  \language "english"

  \key g \major
  \time 3/4

  \override Score.NonMusicalPaperColumn.line-break-permission = ##f

  \bar "" \mark \default
  g'8( d) g( b) a( f-sharp) | g( b) a( c) b( d) | \bar "||"

  \mark \default
  g,8-. d-. g-. b-. a-. f-sharp-. | g-. b-. a-. c-. b-. d-. | \bar "||"

  \mark \default
  g,8( d g) b-. a-. f-sharp-. | g( b a) c-. b-. d-. | \bar "||"

  \mark \default
  g,8-. d-. g( b a) f-sharp-. | g-. b-. a( c b) d-. | \bar "||" \break \noPageBreak

  \mark \default
  g,8 d( g b a) f-sharp | g b( a c b) d | \bar "||"

  \mark \default
  g,8. d16 g8. b16 a8. f-sharp16 | g8. b16 a8. c16 b8. d16 | \bar "||"

  \mark \default
  g,8.( d16 g8. b16 a8. f-sharp16) | g8.( b16 a8. c16 b8. d16) | \bar "||"

  \mark \default
  g,8 d16 16 g8 b16 16 a8 f-sharp16 16 | g8 b16 16 a8 c16 16 b8 d16 16 | \bar "||"

  \revert Score.NonMusicalPaperColumn.line-break-permission
}
