\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro scherzando"

  \key g \major
  \time 2/4

  \set Timing.beamExceptions = \beamExceptions { \tuplet 3/2 8 { 16[ 16 16] 16[ 16 16] 16[ 16 16] 16[ 16 16] } }

  \tuplet 3/2 { d''16( \mf e d) } b8-. \tuplet 3/2 { b16( c b) } g8-. |
  \tuplet 3/2 { g16( a g) } d8-. d4-> |
  b16-. d-. g-. b-. d-. g,-. b-. d-. |
  e16-.[ r b-.] r \tuplet 3/2 { c16( d c) } a8-. |
  \tuplet 3/2 { c16( d c) } a8-. \tuplet 3/2 { a16( b a) } f-sharp8-.
  \tuplet 3/2 { f-sharp16( g f-sharp) } d8-. d4-> |
  a16-. d-. f-sharp-. a-. d-. d,-. f-sharp-. a-. |
  d16-.[ r a-.] r \tuplet 3/2 { b16( c b) } g8-. |
  \tuplet 3/2 { d'16( e d) } b8-. \tuplet 3/2 { b16( c b) } g8-. |
  \tuplet 3/2 { g16( a g) } d8-. d4-> |
  b16-. d-. g-. b-. d-. g,-. b-. d-. |
  g16-.[ r f-sharp-.] r \tuplet 3/2 { e16( f-sharp e) } c8-. |
  a16-. g-sharp-. a-. b-. c-. b-. c-. e-. |
  g-natural,!16-. f-sharp-. g-. a-. b-. a-. b-. d-. |
  d,16-. e-. f-sharp-. g-. a-. b-. c-. d-. |
  g8-. d-. g,,-. r |

  \tuplet 3/2 8 { a'16\(( \f b a) g( a g) f-sharp( g f-sharp) e( f-sharp e)\) } |
  d8( d') a4-^ |
  \tuplet 3/2 8 { a16\(( b a) g( a g) f-sharp( g f-sharp) e( f-sharp e)\) } |
  d8( f-sharp') d4-> |
  \tuplet 3/2 8 { c-sharp16\(( d c-sharp) b( c-sharp b) a( b a) g( a g)\) } |
  f-sharp16-. d-. f-sharp-. a-. d4-> |
  b16-. g-. b-. d-. g4-> |
  f-sharp16-. d-. a-. f-sharp-. d4-> |
  \tuplet 3/2 8 { a'16\(( b a) g( a g) f-sharp( g f-sharp) e( f-sharp e)\) } |
  d16-. f-sharp-. a-. d-. a4-^ |
  \tuplet 3/2 8 { a16\(( b a) g( a g) f-sharp( g f-sharp) e( f-sharp e)\) } |
  d16-. f-sharp-. a-. f-sharp'-. d4-> |
  \tuplet 3/2 8 { c-sharp16\(( d c-sharp) b( c-sharp b) a( b a) g( a g)\) } |
  f-sharp16-. d-. f-sharp-. a-. g-. e-. g-. b-. |
  a16-. f-sharp-. a-. d-. c-sharp-. a-. c-sharp-. e-. |
  \repeat unfold 2 { d4~( d16 c-sharp e d) | }
  \override Beam.positions = #'(-2.812 . -2.812)
  \repeat unfold 4 { d16( c-sharp e d) } |
  \revert Beam.positions
  d16( e c! d b c a b |
  g16 a f-sharp g e f-sharp d e) |
  c!16( d e f-sharp g f-sharp g g-sharp |
  a8) r r4 |
  a-sharp8-. r r4 |
  b8-. r r4 |
  c8-. r r4 |
  c-sharp8-. r r4 |

  \tuplet 3/2 { d16( e d) } b8-. \tuplet 3/2 { b16( c b) } g8-. |
  \tuplet 3/2 { g16( a g) } d8-. d4-> |
  b16-. d-. g-. b-. d-. g,-. b-. d-. |
  e16-.[ r b-.] r \tuplet 3/2 { c16( d c) } a8-. |
  \tuplet 3/2 { c16( d c) } a8-. \tuplet 3/2 { a16( b a) } f-sharp8-. |
  \tuplet 3/2 { f-sharp16( g f-sharp) } d8-. d4-> |
  a16-. d-. f-sharp-. a-. d-. d,-. f-sharp-. a-. |
  d16-.[ r a-.] r \tuplet 3/2 { b16( c b) } g8-. |
  \tuplet 3/2 { d'16( e d) } b8-. \tuplet 3/2 { b16( c b) } g8-. |
  \tuplet 3/2 { g16( a g) } d8-. d4-> |
  b16-. d-. g-. b-. d-. g,-. b-. d-. |
  g16-.[ r f-sharp-.] r \tuplet 3/2 { e16( f-sharp e) } c8-. |
  a16-. g-sharp-. a-. b-. c-. b-. c-. e-. |
  g-natural,!16-. f-sharp-. g-. a-. b-. a-. b-. d-. |
  d,16-. e-. f-sharp-. g-. a-. b-. c-. d-. |
  g8-. d-. g,,-. r |

  \repeat unfold 2 {
    \tuplet 3/2 8 { d''16\(( e d) c( d c) b( c b) a( b a)\) } |
    g8( g') d4-^ |
  }
  \tuplet 3/2 8 {
    e16( f-sharp e) d( c d) c( b c) a( b a) |
    d16( e d) c( d c) b( c b) g( a g) |
  }
  d16-. e-. f-sharp-. g-. a-. b-. c-. d-. |
  \repeat unfold 2 {
    g,16( f-sharp) g-. b-. e->( d) b-. g-. |
    f-sharp16( e-sharp) f-sharp-. a-. e-natural'!->( d) c-. a-. |
  }
  g16-. g,-. b-. d-. g-. b,-. d-. g-. |
  b16-. d,-. g-. b-. d-. g,-. b-. d-. |
  g8-. r r4 |
  g,8-. r r4 |
  g,2-^ | \bar "|."
}
