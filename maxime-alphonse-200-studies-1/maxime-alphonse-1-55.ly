\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Andante" 4=80

  \key g \major
  \time 4/4

  g'8_\markup { \dynamic "mf" \italic "legato" }( b g e) d( g d c) |
  b8( d b a) \tuplet 3/2 4 { g( b d g b d) } |
  e8( c g e) d'( b g d) |
  c'8( a f-sharp c) b'( g d b) |
  \tuplet 3/2 4 { d8->( \< a') f-sharp-. d->( b') g-. d->( c') a-. d,->( f-sharp) a-. } |
  d2->~( \f \> \tuplet 3/2 4 { 8 c b d c a) \! } |

  g8[ \breathe b( g e)] d g( d c) |
  b8 d( b a) \tuplet 3/2 4 { g( \< b d g b d) } |
  g8->( \f d b g) d'->( b g d) |
  b'8->( g d b) g'->( d b d) |
  \tuplet 3/2 4 { g,8->[ \breathe d'( b)] g'-> d( b') \repeat unfold 2 { g->( b) d,-. } } |
  g2-> r | \bar "|."
}
