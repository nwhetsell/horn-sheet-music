\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Moderato" 4.=69

  \key a \minor
  \time 6/8

  a'8_\markup { \dynamic "p" \italic "espressivo" } b( c) 8 b( a) |
  g-sharp8 f-sharp( g-sharp) a4( e8) |
  f-sharp8 g-sharp a8 8 b c |
  b8( c) a b4 r8 |
  a8 b( c) 8 b( a) |
  g-sharp8 f-sharp( g-sharp) a4( e8) |
  f-sharp8 \< g-sharp a8 8 b c |
  b8( \> c) a8 4 \! r8 |

  e'8 \mf 8( f!) e4( d8) |
  c8 8( d) e4( a,8) |
  a8 \> g-sharp g f-sharp f e |
  d8 c d e4 \! r8 |
  e'8 \mf 8( f) e4( d8) |
  c8 8( d) e4( a,8) |
  g \> f-sharp f e d-sharp d |
  c8 d b a4 \! r8 | \bar "||"

  \key a \major

  a'8 \p b c-sharp8 8 b a |
  g-sharp8 f-sharp g-sharp a4 e8 |
  f-sharp8 g-sharp a8 8 b c-sharp |
  b8 c-sharp a b4 r8 |
  a8 b c-sharp8 8 b a |
  g-sharp8 f-sharp g-sharp a4 e8 |
  a8 g-sharp g f-sharp f e |
  d8 c b a4 r8 | \bar "|."
}
