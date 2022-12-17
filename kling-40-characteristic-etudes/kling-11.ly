\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Andante con moto"

  \key a \minor
  \time 4/4

  \partial 4 { e'8. \p e16 } |
  a4_\markup { \italic "espressivo" }( \< e'-. e-. e-.) |
  e4( \> f,4~4) \! f8. f16 |
  e4.( f-sharp8 \< g-sharp a b c) |
  a8.( \> c16 b8. c16 a4) \! e8. e16 |
  a8( \< e') e-. e-. e-. e-. e-. e-. |
  e8( \> f,) f4~4 \! f8. f16 |
  e8( d-sharp \< e f-sharp g-sharp a b c) |
  a8.( \> c16 b8. c16 a4) \! a8. \f b16 |

  c4( g') g g |
  a8. g16 f4~8. e16 d8. c16 |
  b4( g'8.) f16 a,4( f'8.) e16 |
  d16( c e a g4~4) a,8. b16 |
  c4( e) c' b |
  a8. g16 f4~8. e16 d8. c16 |
  \tuplet 3/2 4 { b8( a') g-. a,( g') f-. g,( f') e-. f,( e') d-. } |

  c2. d16( \p c b a) |
  g-sharp4->( e'8) r a,4->( e'8) r |
  b8->( e) e4~4 d16( c b a) |
  g-sharp8->( e') e4 a,8->( e') e4 |
  b8->( e) e4~8 d16( e f e d c) |
  b4-.^\markup { \italic "rit." }( a-. g-sharp-. f-.) |
  e4.( g-sharp16 f e4\fermata) \tempo "a tempo" e8. e16 |

  a4( \< e'-. e-. e-.) |
  e4( \> f,4~4) \! f8. f16 |
  e4.( f-sharp8 \< g-sharp a b c) |
  a8.( \> c16 b8. c16 a4) \! e8. e16 |
  a8( \< e') e-. e-. e-. e-. e-. e-. |
  e8( \> f,) f4~4 \! f8. f16 |
  e8( d-sharp \< e f-sharp g-sharp a b c) |
  a8.( \> c16 b8. c16) \! a8.( e'16 d-sharp8. e16) |
  a,8.( c16 b8. c16) \! a8.( e16 g-sharp8. e16) |
  a4~( a16 \cresc e) f-sharp-. g-sharp-. a( g-sharp) a-. b-. c( b) c-. d-. |
  e4~( e16 a,) b-. c-. d( c) d-. d-sharp-. e-. f-. f-sharp-. g-sharp-. |
  a4 \f r c,4.. \pp c16 |
  \partial 2. { a2 r4 } | \bar "|."
}
