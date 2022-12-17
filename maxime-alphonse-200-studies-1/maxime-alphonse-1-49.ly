\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Adagio" 4=60

  \key e \minor
  \time 3/4

  \partial 4 { e'4_\markup { \dynamic "p" \italic "espressivo" }( } |
  \stemUp b'2) \stemNeutral 8.( a-sharp16) |
  b4. g-sharp8 g8.( f-sharp16) |
  e2( d-sharp4) |
  e4. r8 e4( \mf \tweak to-barline ##f \< |
  d'!2) \! c-sharp8.( c16) |
  b4. c-sharp8 b8.( a16) |
  b2( c-sharp4) |
  b4. r8 g4( \f |
  e'2->) e,4( |
  c-sharp'2->) c4 |
  e8.( f-sharp16 e2) \breathe |

  d8( e16 d) c8( d16 c) b8 a |
  b2. \breathe |
  c4~( 8 b16 a) c8.( d16) |
  c16( b a c) b2 \breathe |
  c8( \> b16 a) b4~8 a16( g) |
  a8 g16( f-sharp) g2 \! \breathe |
  \tuplet 3/2 { e'8-^ \f \< 8-^ 8-^ } 4.( f-sharp8) |
  \tuplet 3/2 { e8-^ \> d-^ c-^ } d8.( e16) b4 \! \breathe |
  \stemUp \tuplet 3/2 { c-sharp8-> \sf b a } b8. 16 \tuplet 3/2 { c-sharp8 b a } \stemNeutral |
  b4. r8 e,4( \p \dim |

  \stemUp b'2->) \stemNeutral 8.( a-sharp16) |
  b4. g-sharp8 g8.( f-sharp16) |
  e4. g8 \tempo "Rall." e8.( g16) |
  e4. \tweak to-barline ##f \> g8 e8.( g16) |
  e2. \! | \bar "|."
}
