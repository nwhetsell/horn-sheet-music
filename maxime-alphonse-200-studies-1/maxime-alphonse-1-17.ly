\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Andante" 4=54

  \key a \major
  \time 4/4

  % Printed editions are missing the last quarter note, which is taken from
  % measure 9.
  a'4._\markup { \dynamic "mf" \italic "espressivo" }( b8) c-sharp4( e,) |

  a4.( b8) c-sharp4( e) \breathe |
  a,4.( b8) c-sharp4( e-sharp,) |
  a4.( b8) c-sharp4( \< f-sharp) |
  e8( \> f-sharp16 e) c-sharp8( d16 c-sharp) a8( b16 a) e4 \breathe |
  d4.( \< f-sharp8) a2 |
  f-sharp4.( a8) c-sharp2 |
  a4.( c-sharp8) e2 \! \breathe |

  a,4.( \p b8) c-sharp4( e,) |
  a4.( b8) c-sharp4( e) |
  f-sharp,4.( g-sharp8) a4( c-sharp,) |
  f-sharp4.( g-sharp8) a4( c-sharp) |
  r4 b,-^ \mf d-^ f-sharp-^ |
  b4.-> c-sharp8-. d4-^ b-^ |
  e4.-> c-sharp8-. a2-> \breathe |
  d4.-> b8-. g-sharp4-^ b-^ |
  b2( \> a) \! | \bar "|."
}
