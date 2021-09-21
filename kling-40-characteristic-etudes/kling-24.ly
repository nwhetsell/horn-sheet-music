\version "2.22.0"

\include "../subdivide-beams.ily"
\include "settings.ily"

\relative {
  \language "english"

  \transposition f

  \tempo "Adagio cantabile"

  \key a \major
  \time 2/4

  a'8..( \p b32) c-sharp16( \< a e c-sharp) \! |
  a16( g-sharp f-sharp e') e8->( d16) r |
  b'8..( c-sharp32) d16( \< b g-sharp e) \! |
  d16( b g-sharp e') a,8-. r |
  b8..( c-sharp32) d-sharp16( \< e f-sharp g-sharp) \! |
  a16. b32 c-sharp16. b32 \appoggiatura { d-sharp16 \> e } d-sharp16. c-sharp32 b16. a32 \! |
  g-sharp8..( a32) b16( \< c-sharp d-sharp e) \! |
  f-sharp16. d-sharp32 b16. a32 g-sharp16. f-sharp32 e16. d!32 |
  \subdivide-beams #1/8 2,2 { c-sharp32-. e-. a-. e-. d-. \cresc f-sharp-. b-. f-sharp-. e-. g-sharp-. c-sharp-. g-sharp-. f-sharp-. a-. d-. a-. } |
  \subdivide-beams #1/8 2,2 { g-sharp32-. b-. e-. b-. e-. b-. e-. b-. } c-sharp16( \> a e c-sharp) |
  a16. \< g-sharp32 f-sharp16. a-sharp32 b16. c-sharp32 d16. f-sharp32 |
  e8-. \> e,-. a-. \! r |
  b'16( \< c-sharp d d-sharp) e( \> c-sharp a e) \! |
  d16( b g-sharp e) a( c-sharp e a) |
  b16( \< c-sharp d d-sharp) e( \> c-sharp d b) |
  \subdivide-beams #1/8 2,2 { \tuplet 5/4 { a32( \< b a g-sharp a } c-sharp16. \> b32 } a8) \! r |
  \subdivide-beams #1/8 2,2 {
    b32-. \cresc g-sharp-. e-. b'-. c-sharp-. a-. e-. c-sharp'-. d-. b-. e,-. d'-. e-. c-sharp-. e,-. e'-. |
    f-sharp32( \! e f-sharp e) d( c-sharp d c-sharp) b( a b a) g-sharp( f-sharp g-sharp f-sharp) |
  }
  e16.( \< a32 c-sharp16. \> a32) \! e'8 r |
  e,16.( \< g-sharp32 b16. g-sharp32) e'8 r \! |
  a,8~( a32 b c-sharp d) e16( \< c-sharp a e) \! |
  f-sharp16. a32 g-sharp16. b32 \appoggiatura { a16 b } a16. b32 c-sharp16. d32 |
  e8.( \< e-sharp16 f-sharp16.) \> d32 a16. f-sharp32 \! |
  \subdivide-beams #1/8 2,2 { e16( d-sharp32 e c-sharp'16. b32 } a8) r |
  \subdivide-beams #1/8 2,2 { e32( \< d-sharp f-sharp e g-sharp \> f-sharp d b \! } a8) r |
  \clef \bass-clef-name
  \subdivide-beams #1/8 2,2 { e32^\markup { \italic "dim. e rit." }( \< d-sharp f-sharp e g-sharp \> f-sharp d b \! } a8) r |
  a8-.( a-.) a4\fermata | \bar "|."
}
