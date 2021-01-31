\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro scherzando"

  \key e \major
  \time 3/8

  b'4.~( \p \< |
  b8 g-sharp b |
  c-sharp8 g-sharp c-sharp) \! |
  d-sharp8( f-sharp8.-> e16) |
  d-sharp4.~ |
  d-sharp8. \< c-sharp16( \> b-sharp d-sharp) \! |
  c-sharp4.~ |
  c-sharp4 r8 |
  a4.~( \p \< |
  a8 f-sharp a |
  b8 f-sharp b) \! |
  c-sharp8( e8.-> d-sharp16) |
  c-sharp4.~ |
  c-sharp8. \< b16( \> a-sharp c-sharp) \! |
  b4.~ |
  b4 r8 |
  b4.~( \cresc |
  b8 g-sharp b |
  c-sharp8 g-sharp c-sharp) |
  d-sharp8( f-sharp8.-> e16) |
  d-sharp4.~ |
  d-sharp8. c-sharp16( b-sharp d-sharp) |
  c-sharp4.~ |
  c-sharp4 r8 |
  b4.~( \f \< |
  b8 a-sharp b |
  c-sharp8 e d-sharp) \! |
  g-sharp4( \ff f-sharp8) |
  e4.~ |
  e8. b16( g-sharp b) |
  e,4.~ |
  e8 r b'16-._\markup { \dynamic "p" \italic "leggiero" } r |

  \repeat unfold 2 { f-sharp'16-. r b,-. f-sharp'-. b,-. r } |
  \repeat unfold 2 { e16-. r b-. e-. b-. r } |
  b16( \< c-sharp) d-sharp-. e-. f-sharp-. g-sharp-. |
  a16( \> f-sharp) d-sharp-. \! b-. a-. f-sharp-. |
  e16( g-sharp) b-. c-sharp-. d-sharp-. e-. |
  b4 b16-. \p r |
  f-sharp'16-. b,-. f-sharp'-. r b,-. f-sharp'-. |
  b,16-. r f-sharp'-. b,-. f-sharp'-. r |
  e16-. b-. e-. r b-. e-. |
  b16-. r e-. b-. e-. r |
  a-sharp,16( \< g-sharp) f-sharp-. g-sharp-. a-sharp-. b-. |
  c-sharp16( d-sharp) e-. \! c-sharp-. a-sharp-. f-sharp-. |
  b16( \> d-sharp) b-. f-sharp-. d-sharp-. f-sharp-. \! |
  b,4 r8 |

  b'4.~_\markup { \dynamic "p" \italic "dolce" }( |
  b8 \acciaccatura d c b) |
  a8( \< e' d \! |
  f-sharp8 e c) |
  b4.~( |
  b8 a g) |
  d4.~ |
  d16 e-. f-sharp-. g-. a-. b-. |
  c16( f-sharp) f-sharp4-> |
  a,16( e') e4-> |
  d,16( d') d4-> |
  d,16( c') c8.->( b16) |
  g16( a) b-. c-. d-. e-. |
  d( e) f-sharp-. g-. f-sharp-. g-. |
  g,4.~( |
  g8 a a-sharp) |

  b4.~( |
  b8 \acciaccatura d-sharp! c-sharp! b) |
  a-sharp8( \< e' d-sharp! |
  f-sharp8 e c-sharp) \! |
  d-sharp4.~( |
  d-sharp8 c-sharp b) |
  f-sharp4.~( |
  f-sharp16 \< g-sharp) a-sharp-. b-. c-sharp-. d-sharp-. |
  e16( \f g-sharp) g-sharp4-> |
  c-sharp,16( e) e4-> |
  a-sharp,16( c-sharp) c-sharp4-> |
  f-sharp,16( d-sharp') d-sharp8.->( c-sharp16) |
  b4.~ |
  b16 a-sharp( \< c-sharp e g f-sharp) |
  b,4.~ \> |
  b16 \! a-sharp( \< c-sharp e g-sharp! f-sharp) \! |
  b,4.~ |
  b16 a-sharp( c-sharp e g f-sharp) |
  b,16-. a-sharp( c-sharp e g-sharp! f-sharp) |
  b,16^\markup { \italic "poco rit." }( \< a-sharp c-sharp b a-sharp c-sharp |
  b16 \> a-sharp c-sharp b d-sharp16.\fermata c-sharp32) |

  \tempo "a tempo"
  b4.~( \p \< |
  b8 g-sharp b |
  c-sharp8 g-sharp c-sharp) \! |
  d-sharp8( f-sharp8.-> e16) |
  d-sharp4.~ |
  d-sharp8. \< c-sharp16( \> b-sharp d-sharp) \! |
  c-sharp4.~ |
  c-sharp4 r8 |
  a4.~( \p \< |
  a8 f-sharp a |
  b8 f-sharp b) \! |
  c-sharp8( e8.-> d-sharp16) |
  c-sharp4.~ |
  c-sharp8. \< b16( \> a-sharp c-sharp) \! |
  b4.~ |
  b4 r8 |
  b4.~( \cresc |
  b8 g-sharp b |
  c-sharp8 g-sharp c-sharp) |
  d-sharp8( f-sharp8.-> e16) |
  d-sharp4.~ |
  d-sharp8. c-sharp16( b-sharp d-sharp) |
  c-sharp4.~ |
  c-sharp4 r8 |
  b4.~( \f \< |
  b8 a-sharp b |
  c-sharp8 e d-sharp) \! |
  g-sharp4( \ff \> f-sharp8) \! |

  e8_\markup { \italic "risoluto" } e,16-. g-sharp-. b-. e-. |
  d-sharp8 f-sharp,16-. a-. b-. d-sharp-. |
  e8 g-sharp,16-. b-. e-. g-sharp-. |
  a16->( f-sharp) d-sharp-. b-. a-sharp-. a-. |
  g-sharp8 e16-. g-sharp-. b-. e-. |
  d-sharp8 f-sharp,16-. a-. b-. d-sharp-. |
  e8 g-sharp,16-. b-. e-. g-sharp-. |
  a16( f-sharp) d-sharp-. b-. a-. f-sharp-. |
  e4 r8 |
  e'4 r16 e, |
  e4.~ |
  e4.\fermata | \bar "|."
}
