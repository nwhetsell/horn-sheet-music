\version "2.22.0"

\include "settings.ily"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro vivace"

  \key c \major
  \time 4/4

  r8 c''( \mf \< e d c b a g) |
  g1~ \> |
  g8 d'( f d c b a g) |
  g1~ \> |
  g8 c( \< e d c b a g) |
  g8-. g-. \p f-sharp-. g-. a-. b-. c-. c-sharp-. |
  d8-. d( \< f d c b a g) |
  g8-. g-. \p f-sharp-. g-. a-. b-. c-. d-. |
  e8-. e( g e) d-. d( f d) |
  c8-. c( e c) b-. b( d b) |
  a8-. a( c a) g-. \cresc g( b g) |
  f8-. f( a f) e-. e( g e) |
  d8-. d( f d) c-. c( e c) |
  b8-. b( d b) a-. a( c a) |
  g8-. g( b g) f-. f( a f) |
  e8-. e( g e) d-. d( f d) |
  \clef \bass-clef-name
  c2 \f c4. c8 |
  c8( b a g a b c d) |
  c8( e f g a g a b) |
  \clef "treble"
  c8( e f g a g a b |
  c8) c( e d c b a g) |
  g8-. d'( f d c b a g) |
  \tuplet 3/2 4 {
    g8-. c( d e d) c( d c) b( c b) a-. |
    g8-. d'( e f e) d( e d) c-. b( a) g-. |
  }
  <>_\markup { \italic "legato" } \repeat unfold 2 { c8( e g c, b d g, b) | }
  c8( e c b) a( c a g) |
  f8( a f e) d( f d c) |
  b8( d b a) g( b g f) |
  e8( f g f e f g a) |
  b8( c d c b c d e) |
  f8( g a g f g a b) |
  c8-. c( e d c b a g) |
  g4 \tuplet 3/2 4 { a8-. g-. a-. b-. a-. b-. c-. b-. c-. } |
  d8-. d( f d c b a g)
  g4 \tuplet 3/2 4 { b8-. a-. b-. c-. b-. c-. d-. c-. d-. } |
  e8-. e( g e) d-. d( f d) |
  c8-. c( e c) b-. b( d b) |
  \tuplet 3/2 4 { e8( g) e-. d( f) d-. c( e) c-. b( d) b-. } |
  e16-. e( g e) d-. d( f d) c-. c( e c) b-. b( d b) |
  c8-. c( e d c b a g) |
  g8-. g( c b a g f e) |
  e8-. e( \dim a g f e d c) |
  c8-. c( e d c b a g) |
  \clef \bass-clef-name
  g8-. g( c b a g f e) |
  e8-. e( a g f e d c) |
  c8-. g-. c-. e-. g-. c,-. e-. g-. |
  c8-. \cresc e,-. g-. c-. e-. g,-. c-. e-. |
  \clef "treble"
  g8-. c,-. e-. g-. c-. e,-. g-. c-. |
  e8-. g,-. c-. e-. g-. c,-. e-. g,-. |
  c8-. \f c-. g-. e-. c-. c-. g-. e-. |
  c4-. r c''-. r |
  c,,1\fermata | \bar "|."
}
