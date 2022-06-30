\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Lento" 4=60

  \key a \minor
  \time 4/4

  \afterGrace a'1\trill( \p { g-sharp16 a) } |
  b2( e,) \breathe |
  \afterGrace b'1\trill_( { a16 b } |
  c1) \> \breathe |
  e4.->( \mf d8) c4.( b-flat8) |
  \afterGrace b-flat1\trill( { a16 g-sharp) } |
  a1 \breathe |

  c4.( b!8) a4.( g!8) |
  \afterGrace g1\trill_( { f16 e } |
  f1) \breathe |
  a4.( g8) f4.( e8) |
  d2( \< d') |
  \afterGrace { d-sharp1\trill( \tweak to-barline ##f \> } { c-sharp16 d-sharp } |
  e2) \! r8. e,16 f-sharp g-sharp a b |

  \afterGrace c!2\trill_( { b16 c) } \afterGrace c-sharp2\trill_( { b16 c-sharp) } |
  \afterGrace d2\trill_( { c!16 d) } \afterGrace e2\trill_( { d16 e) } |
  f1 \breathe |
  e4~ \> \tuplet 3/2 { 8 c a } e4.( \cresc f-sharp8) |
  \afterGrace f-sharp1\trill( { e16 f-sharp) } |
  \afterGrace g-sharp1\trill( { f-sharp16 g-sharp) } |
  a4. \! r8 a, \mf b16 c d e f-sharp g-sharp |

  \afterGrace a1\trill( { g-sharp16 a) } |
  c2 \breathe c,8 d16 e f-sharp g-sharp a b |
  \afterGrace c1\trill( { b16 c) } |
  e2 \breathe e,8 f-sharp16 g-sharp a b c! d |
  \afterGrace e1\trill( { d-sharp16 e) } |
  a,4 4 4 4 |
  a2 r | \bar "|."
}
