\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro" 4=120

  \key f \major
  \time 4/4

  c''4_\markup { \dynamic "p" \italic "con grazia" } d8 e f e d c |
  c8( b-flat) b-flat4~4 c8( d) |
  e8 d c b-flat a c f,4 |
  r8 c' \> a f e g c4 \! |
  r8 c \> b-flat g f a c4 \! |
  r4 f4->~( \mf 8 d) b4 |
  r4 g'4->~( 8 e) c4 |
  r8 c \p \< d e f( \> e) e d |
  d8( c) d c \! c( b) a b |
  d8( c) c4~4 r |

  c4 \p d8 e f e d c |
  c8( b-flat!) b-flat4~4 c8( d) |
  e8 d c b-flat a c f,4 |
  r8 c' a f e g c4 |
  r8 c b-flat g f a c4 |
  r4 f4->~( \f \< 8 g) a-flat4 \! |
  r4 f4->~( \> 8 d) b4 \! |
  r8 c \p d c c( b-flat!) b-flat a |
  c8( b-flat) b-flat a a( g) b-flat e, |
  g8( f) f4~4 r | \bar "||"

  r4 a2->_\markup { \dynamic "f" \italic "con fuoco" } f4-! |
  d4-! d'2-> a4-! |
  f4-! f'2-> d4-! |
  a4-! r r d_\markup { \dynamic "p" \italic "con grazia" } |
  d8( c) c b-flat b-flat r r c-sharp,8-. \mf |
  b-flat'8->( a) a g g4-^ e'4-^ \< |
  f,4-^ d'-^ e,-^ g'-^ |
  f8.-> \f g16-. e8.-> f16 d8->[ \breathe f \decresc d c] |
  c8.( b16) b4 r8 d b a \! |
  a8.( g-sharp16) g-sharp4 r d'-^ \mf \< |
  e,4-^ c'-^ d,-^ f'-^ |
  e8.-> \f f16-. d8.-> e16-. c4-> r | \bar "||"

  c4 \p d8 e f e d c |
  c8( b-flat) b-flat4~4 c8( d) |
  e8 d c b-flat a c f,4 |
  r8 c' \< a f e g c4 \! |
  r8 c \< b-flat g f a c4 \! |
  r4 f4->~( \mf \< 8 g) a-flat4 \! |
  r4 f4->~( \> 8 d) b4 \! |
  r8 c \dim d c c b-flat! b-flat a |
  c8( b-flat) b-flat a a g b-flat e, |
  g8( f) \! f4~4 r | \bar "|."
}
