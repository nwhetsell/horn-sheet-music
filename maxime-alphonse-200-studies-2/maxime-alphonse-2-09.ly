\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegretto" 4=88

  \key g \major
  \time 3/4

  <>_\markup { \dynamic "p" \italic "legato" } \repeat unfold 2 {
    g'8( b g b g b |
    d8 c d c a f-sharp)
  } \breathe |
  \repeat unfold 2 {
    b8( d-sharp b d-sharp b d-sharp |
    f-sharp8 e f-sharp e c-sharp a-sharp)
  } \breathe |
  b8( d b d b d |
  a8 d a d a d) |
  g,8( d g d g d |
  \tempo "Rall." f-sharp8 d f-sharp d f-sharp d) \breathe |

  \tempo "Tempo"
  g8( b g b g b |
  d8 c d c a f-sharp) |
  g8( b g b g b |
  d8 c d c a f-sharp |
  g8) \breathe g,( b d g d) |
  b'8( b, d g b g) |
  d'8( d, g b d b |
  g'2.) | \bar "|."
}
