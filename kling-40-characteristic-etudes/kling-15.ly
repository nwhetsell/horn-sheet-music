\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro moderato"

  \key g \major
  \time 3/4

  \partial 4 { g'8. \p a16 } |
  b8( e) d4.( g,8) |
  \tuplet 3/2 { f-sharp8( a e') } d4.( c8) |
  c8( \< f-sharp) f-sharp( c) f-sharp( c) |
  b8( \> e) e( b) \! \tuplet 3/2 { d8( g,) a-. } |
  b8( e) d4.( g,8) |
  \tuplet 3/2 { e8( \< c') e-. } g4.( \! e8) |
  d8( \> g,) b( d) e( f-sharp,) \! |
  g4 r a8. \ff a16 |

  a8( g') f-sharp4.( e8) |
  a,8( f-sharp') e4.( d8) |
  c-sharp8( e g b a g) |
  f-sharp8( a) e( a) \tuplet 3/2 { d,8( c-sharp) b-. } |
  a8( g') f-sharp->( e) f-sharp->( e) |
  a,8( f-sharp') e->( d) e->( d) |
  c-sharp8( a') g-. e-. c-sharp-. a-. |
  d4~8 \tuplet 3/2 { c-sharp16( \tweak X-offset -1 \p d e } d8) d-. |
  d4~8 \tuplet 3/2 { c-sharp16( d e } d8) d-. |
  d8-. \tuplet 3/2 { c-sharp16( d e) } <> \cresc \repeat unfold 2 { d8 \tuplet 3/2 { c-sharp16( d e) } } |
  \override Beam.positions = #'(-2.812 . -2.812)
  d16^\markup { \italic "rit." }( c-sharp \repeat unfold 3 { e d c-sharp } e) |
  \revert Beam.positions
  <<
    { \afterGrace { d2.\trill_( } { c-sharp16 d) \! } }
    {
      \override Hairpin.minimum-length = #3
      s2 \< s4 \>
      \revert Hairpin.minimum-length
    }
  >> |
  d,2\fermata \tempo "a tempo" g8. \p a16 |

  \tuplet 3/2 { b8( g) e'-. } d4.( g,8) |
  f-sharp16( \< a c e) d4.( \> c8) |
  \override Beam.positions = #'(-2.25 . -2.25)
  <> \< \tuplet 3/2 4 { \repeat unfold 4 { c8( f-sharp) } c( } |
  \override Beam.positions = #'(-2.75 . -2.75)
  <> \> \tuplet 3/2 4 { \repeat unfold 3 { e) b( } \revert Beam.positions d) g,-. a-. } \! |
  b16( g b e) d4.( g,8) |
  e16( \< g c e) g4.\fermata( \f e8) |
  \tuplet 3/2 4 { d8( \> g) b,( d) g,( b e) d-. f-sharp,-. } \! |
  \partial 2 { g2 } | \bar "|."
}
