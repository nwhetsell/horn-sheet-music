\version "2.22.0"

\include "settings.ily"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro moderato"

  \key c \major
  \time 4/4

  \partial 4 { g'4 \f } |
  c4 c8. d16 e4 e8. f16 |
  g2~8 a16( g) f( e) d-. c-. |
  b16( d) c( e) d( f) e( g) f( d) e( c) d( b) c( a) |
  <<
    { g4( b8.) a16 g8 r \afterGrace g4\trill( { f-sharp16 g) } }
    { s8. s16^\markup { \override #'(baseline-skip . 2) \halign #0 \center-column { \musicglyph #"scripts.turn" \teeny \sharp } } }
  >> |
  c8 r c8. d16 e4 e8. f16 |
  g2~8 c16( b) a( g) f-. e-. |
  e16( g) f-. e-. d( f) e-. d-. c( e) d-. c-. b( d) c-. b-. |
  d16( c b c e c) g-. e-. c8-. r g'4 \p |
  d'4 d8. e16 f4 f8. g16 |
  e4~( 16 g) d( g) c,8 r \afterGrace g4\trill( { f-sharp16 g } |
  d'8) r d8. e16 f( e f) d-. g( f) e-. d-. |
  e4~( 16 g) d( g) c,8 r g4-. \f |
  c4 c8. e16 g4( b-flat) |
  a4.( f8) c8.( b16 \tuplet 3/2 { d8 c a) } |
  g8( \< c e a) g( \> e f b,) |

  c8-. \p e16-. d-. \repeat unfold 3 { b( c) e-. d-. } |
  a16 r f'-. e-. \repeat unfold 3 { c-sharp( d) f-. e-. } |
  b16 r g'-. f-. \repeat unfold 3 { d-sharp( e) g-. f-. } |
  e16( g) c,( e) g,( c) e,( g) f( \< g) b-. a-. g-. f-. e-. d-. |
  c16 r e'-. \ff d-. \repeat unfold 3 { b->( c e d) } |
  a16 r f'-. e-. \repeat unfold 3 { c-sharp->( d f e) } |
  b16 r g'-. f-. \repeat unfold 3 { d-sharp->( e g f) } |
  e16( g c g) e( g) c,( e) d( f a) f-. d( f) b,( d) |
  \repeat unfold 4 { c16( g') e-. c-. b( f') d-. b-. } |
  c16-. c,-. e-. g-. c-. e,-. g-. c-. e-. g,-. c-. e-. g-. c,-. e-. g-. |
  c8-. r r4 r4 g,4 \ff |
  c4 c8. d16 e4 e8. f16 |
  g2~8 e-. c-. a-. |
  g8-. a16-. b-. c-. d-. e-. f-. g8-. r b,-. r |
  \partial 2. {
    <<
      { c4( e8.) d16 c8 r }
      { s8. s16^\markup { \musicglyph #"scripts.turn" } }
    >>
  } | \bar "|."
}
