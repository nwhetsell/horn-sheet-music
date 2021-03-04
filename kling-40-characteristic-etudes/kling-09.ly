\version "2.22.0"

\include "settings.ily"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro maestoso"

  \key c \major
  \time 4/4

  \partial 4 { g'8. \tweak X-offset #(if preserve-line-breaks? -3.5 0) #(make-dynamic-script (markup #:dynamic "ff" #:normal-text (#:italic "fieramente"))) g16 } |
  c2~( \stemDown \tuplet 3/2 4 { 8 g) c-. d( g,) d'-. } \stemNeutral |
  e2. c8. e16 |
  g2~8 f16-. e-. d-. c-. b-. a-. |
  g16( b a c) b( d c e) d4 g,8. \ff g16 |
  d'2~( \tuplet 3/2 4 { 8 g,) d'-. e( g,) e'-. } |
  f2. d8. f16 |
  g8-. f16-. e-. d-. c-. b-. a-. g8-. f-sharp-. f-. d-. |
  c16( e d f) e( a g d') c4 r |

  b8 \p e4-> d8->~8 c-. e,-. f-sharp-. |
  g4( \grace { a16 g } f-sharp8) e-. d4 e16-. \< f-sharp-. g-. a-. \! |
  b8 e4-> d8->~8 c-sharp-. \< c-. a-. \! |
  a-sharp4.( b16 c b4) g16-. \< a-. b-. c-. \! |
  d4( g->~4) \tuplet 3/2 { d8-. c-. b-. } |
  a4( e'->~4) \tuplet 3/2 { c8-. b-. a-. } |
  g8 d4-> \once \stemDown b'8->~8 a-. d-. c-. |
  \afterGrace { \once \slurDown c2\trill( \< } { b32 d \> c } b4) \! b16-. c-. c-sharp-. d-. |
  d4( g->~ \tuplet 3/2 4 { 8) f-sharp-. e-. d-. c-. b-. } |
  a4( e'->~ \tuplet 3/2 { 8) d-. c-. } \tuplet 5/4 { b16-. a-. g-. f-sharp-. e-. } |
  d4.( \< b'8) b( \> a d f-sharp,) \! |
  g2 r4 g8. \mf g16 |

  \tuplet 3/2 { f8( d b) } g4~ \tuplet 3/2 4 { 8 b( d f a g) } |
  \tuplet 3/2 { d-sharp8->( e c) } g4~ \tuplet 3/2 4 { 8 g( c e g c) } |
  \tuplet 3/2 4 { b8( d b) a( c a) g( b g) f( a f) } |
  \tuplet 3/2 4 { d-sharp8( e b c a' f-sharp } g4) g8. f-sharp16 |
  \tuplet 3/2 { f-natural!8( d b) } g4~ \tuplet 3/2 4 { 8 b( d f a g) } |
  \tuplet 3/2 { d-sharp8->( e c) } g4~ \tuplet 3/2 4 { 8 g( c e g c) } |
  \tuplet 3/2 4 { a8( f a) g( e g) f( d f) d( b d) } |
  \tuplet 3/2 4 { c8( g' e c g e } c4) g''8. \ff g16 |

  c2~( \stemDown \tuplet 3/2 4 { 8 g) c-. d( g,) d'-. } \stemNeutral |
  e2. b-flat8. c16 |
  e2~ \tuplet 3/2 4 { 8 b-flat( c e) f-. g-. } |
  f2~ \tuplet 3/2 4 { 8 e-. d-. c-. b-natural!-. a-. } |
  g8 e4-> c-> g-> e8 |
  c2~8 d-> e-> f-> |
  g2-> #(if (string=? bass-clef-name "bass^8") #{ \clef \bass-clef-name #}) b,-> |

  c4 #(if (string=? bass-clef-name "bass^8") #{ \clef "treble" #}) \tempo "più vivo" e'16( \f c) e-. g-. c( e,) g-. c-. e( g,) c-. e-. |
  g16( f) e-. d-. c-. b-. a-. g-. f-sharp( g b a) g-. f-. e-. d-. |
  c8 r e16( c) e-. g-. c( e,) g-. c-. e( g,) c-. e-. |
  g16( f) e-. d-. c-. b-. a-. g-. f-sharp( g b a) g-. f-. e-. d-. |
  \repeat unfold 4 { c16( e) g-. c-. b->( g) f-. d-. } |
  c8-. c16( e) e( g) g( c) c( e,) e( g) g( c) c( e) |
  e16( g,) g( c) c( e) e( g) g( e) e( c) c( g) g( e) |
  e'( c) c( g) g( e) e( c) c'( g) g( e) e( c) c-. e-. |
  c8-. g16-. c-. e-. c-. e-. g-. c8-. e16-. c-. g-. e-. c-. g-. |
  c,4-. r c''-. r |
  \partial 2. { c,2-^ r4 } | \bar "|."
}
