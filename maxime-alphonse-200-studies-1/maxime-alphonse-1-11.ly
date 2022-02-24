\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Adagio" 4=66

  \key g \major
  \time 3/4

  b'2( \p a8 g) |
  d'2( c8 b) |
  e2( d8 c) |
  d2. \breathe |
  b2( a8 g) |
  d'2( c8 b) |
  e2( 8 c) |
  a2. \breathe |

  a2( g8 f-sharp) |
  c'2( b8 a) |
  d2( c8 b) |
  c2. \breathe |
  a2( g8 f-sharp) |
  c'2( b8 a) |
  d2( 8 c) |
  b2. \breathe |

  d2 \mf \tweak to-barline ##f \< e8( f-sharp) |
  g2 \! f-sharp8( d) |
  f2 \> e8( c) |
  <<
    { e2. \breathe }
    { s2 s4 \! }
  >> |
  e-flat2 c8( e-flat) |
  d2 b8( d) |
  e-flat2 c8( e-flat) |
  d2. \breathe |

  b2( \p a8 g) |
  d'2( c8 b) |
  e!2( d8 c) |
  d2. \breathe |
  d2( b8 g) |
  c-sharp2( g8 c-sharp) |
  d2( b8 a) |
  g2. \breathe |

  g4.( b8) d,-- g-- |
  b2 r4 |
  b4.( d8) d,-- b'-- |
  g2 r4 |
  g4-_ 4-_ 4-_ |
  g2-_ r4 |
  g4-_ 4-_ 4-_ |
  g2\fermata r4 | \bar "|."
}
