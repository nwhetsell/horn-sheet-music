\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro moderato"

  \key f \major
  \time 4/4

  \partial 4 { c''8. \mf c16 } |
  a8 r c8. c16 a8 r c8. c16 |
  c16( b-flat a b-flat g4) r b-flat8. b-flat16 |
  g8 r b-flat8. b-flat16 g8 r b-flat8. b-flat16 |
  b-flat16( a g a f4) r f8. \f a16 |
  c4 a8. c16 f4 c8. f16 |
  a8-. r f4->~4 c8.->( \p f16) |
  c8 r a8.->( c16) b-flat8 r g8.->( b-flat16) |
  a8 r a16( \pp b-flat c b-flat a8) r f8. \ff a16 |
  c4 a8. c16 f4 c8. f16 |
  a8-. r f4->~4 c8.->( \p f16) |
  c8 r a8.->( c16) b-flat8 r g8.->( a16) |
  f4 f'16( \f e f e f4) r |

  c4 \ff c8.\trill( b32 c) d4 d8.\trill( c-sharp32 d) |
  e8.( c16 e8) r e-. \p r f-. r |
  g8-. \< r f-. r e-. r d-. r |
  d16( \f c b c b c b c) e( d c-sharp d c-sharp d c-sharp d) |
  e8.( c16 e8) r e-. \p g,-. f'-. g,-. |
  g'8-. g,-. f'-. g,-. e'-. g,-. d'-. g,-. |
  c8 r c4~ \> c4\fermata c8. \mf c16 |

  a8 r c8. c16 a8 r c8. c16 |
  c16( b-flat a b-flat g4) r b-flat8. b-flat16 |
  g8 r b-flat8. b-flat16 g8 r b-flat8. b-flat16 |
  b-flat16( a g a f4) r f8. \f a16 |
  c4 a8. c16 f4 c8. f16 |
  a8-. r f4->~4 c8.->( \p f16) |
  c8 r a8.->( c16) b-flat8 r g8.->( b-flat16) |
  a8 r a16( \pp b-flat c b-flat a8) r f8. \ff a16 |
  c4 a8. c16 f4 c8. f16 |
  a8-. r f4->~4 c8.->( \p f16) |
  c8 r a8.->( c16) b-flat8 r g8.->( a16) |
  \partial 2. {
    f4 f'16( \f c) a-. c-. f,4 | \bar "||"
    \caesura \once \set Staff.caesuraType = #'((scripts . (fermata)))
  } |
  \partial 4 { c'16_\markup { \dynamic "mf" \italic "legato" }( b d c | }

  a8) r c16( b d c a8) r c16( b d c) |
  c16( b-flat! a b-flat g4) r b-flat16( a c b-flat |
  g8) r b-flat16( a c b-flat g8) r b-flat16( a c b-flat) |
  b-flat16( a g a f4) r f16( \f c) f-. a-. |
  c4 a16( f) a-. c-. f4 c16( a) c-. f-. |
  a8 r f4->~4 c16( \p a) c-. f-. |
  c8 r a16( f) a-. c-. b-flat8 r g16( e) g-. b-flat-. |
  a8 r f4->~4 \tuplet 5/4 { f16-. \ff g-. a-. b-flat-. b-. } |
  c4 \tuplet 5/4 { a16-. b-flat-. c-. d-. e-. } f4 \tuplet 5/4 { c16-. d-. e-. f-. g-. } |
  a8 r f4->~ \f f4 \tuplet 5/4 { a16-. \p g-. f-. e-. d-. } |
  c8 r \tuplet 5/4 { f16-. e-. d-. c-. b-flat-. } a8 r \tuplet 5/4 { d16-. c-. b-flat-. a-. g-. } |
  f8 r f16( \f a) c-. f-. f,8 r r4 |

  c'16( \f g) e-. g-. c( g) c-. e-. d( b) g-. b-. d( b) d-. f-. |
  e16( c) g-. c-. e8 r e16( \p c) g-. e'-. f( d) g,-. f'-. |
  g16( \< e) g,-. g'-. f( d) g,-. f'-. e( c) g-. e'-. d( b) g-. b-. |
  d16( \f c b c b c b c) e16( d c-sharp d c-sharp d c-sharp d) |
  e16( c) e-. g-. e8 r e16( \pp c) g-. e'-. f( d) g,-. f'-. |
  g16( e) g,-. g'-. f( d) g,-. f'-. e( c) g-. e'-. d( b) g-. d'-. |
  c8 r c4~ \> c4\fermata \tuplet 6/4 { c16( \mf b d c b c) } |

  a8 r \tuplet 6/4 { c16( b d c b c) } a8 r \tuplet 6/4 { c16( b d c b c) } |
  \tuplet 6/4 { c16( b-flat! a b-flat d b-flat) } g4 r \tuplet 6/4 { b-flat16( a c b-flat a b-flat) } |
  g8 r \tuplet 6/4 { b-flat16( a c b-flat a b-flat) } g8 r \tuplet 6/4 { b-flat16( a c b-flat a b-flat) } |
  \tuplet 6/4 { b-flat16( a g a c a) } f4 r \tuplet 6/4 { f16( \f c) a-. c-. f-. a-. } |
  c4 \tuplet 6/4 { a16( f) c-. f-. a-. c-. } f4 \tuplet 6/4 { c16( a) f-. a-. c-. f-. } |
  a8-. r f4->~4 c16-. \p d-. e-. f-. |
  c8-. r a16-. b-flat-. c-. d-. b-flat8-. r g16-. a-. b-flat-. c-. |
  a8 r f4->~4 \tuplet 6/4 { f16( \ff e) f-. g-. a-. b-flat-. } |
  c4 \tuplet 7/4 { a16( g) a-. b-flat-. c-. d-. e-. } f4 \tuplet 7/4 { c16( b) c-. d-. e-. f-. g-. } |
  a8-. r f4->~4 c16-. \pp d-. e-. f-. |
  c8-. r a16-. b-flat-. c-. d-. b-flat8-. r g16-. a-. b-flat-. c-. |
  \partial 2. { f,8 r f'4-. \f f,-. } | \bar "|."
}
