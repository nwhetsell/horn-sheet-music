\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Moderato" 4.=72

  \key c \major
  \time 12/8

  \partial 4. { g'4. \mf } |
  \repeat unfold 2 {
    c2.~( 8 d c b a b) |
  }
  c8( d e) e( d c) c( b a) a( g f-sharp) |
  g2.~8[ \tweak Y-offset #3.25 \breathe a( g] f-sharp e f-sharp) |
  g2.~( 8 a g f-sharp e f-sharp) |
  g8( \< a b) b( c d) d( e f!) f( e d) |
  e2.~( \> 8 f e d e d) \! |
  c2.~8[ \breathe d( c] b c b) |
  a8( \cresc b c) c( b a) b( c d) d( c b) |
  c8( d e) e( d c) d( e f) d( e f) |
  g2.( \! g,4.) \breathe 4. \p |

  \repeat unfold 2 {
    c2.~( 8 d c) b-. a-. b-. |
  }
  c8( d e) e-. d-. c-. c( b a) a-. g-. f-. |
  e2.~8[ \tweak Y-offset #2.5 \breathe f( e)] d-. c-. d-. |
  e2.~( 8 f e) d-. c-. d-. |
  e8( f) g-. g( a) b-. b( c) d-. d( e) f-. |
  e8( d) c-. c( b) a-. a( g) f-. f( e) d-. |
  c8-.[ \< \breathe d-. e-.] f-. g-. a-. g-. \tweak to-barline ##f \> e-. f-. g-. a-. b-. |
  c2. \! r | \bar "|."
}
