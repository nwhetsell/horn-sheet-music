\version "2.22.0"

\include "../subdivide-beams.ily"
\include "settings.ily"

\relative {
  \language "english"

  \transposition f

  \tempo "Moderato"

  \key b \major
  \time 4/4

  \partial 4 { f-sharp'4( \p } |
  b4) \< b( d-sharp) \> d-sharp( |
  \once \stemDown b2 f-sharp4) \! f-sharp |
  g-sharp4.( \< c-sharp8) b( a-sharp g-sharp a-sharp) |
  b4.( \> \grace { c-sharp32 b a-sharp b } d-sharp8 f-sharp4) \! f-sharp,( |
  b4) \< b( d-sharp) \> d-sharp( |
  \once \stemDown b2 f-sharp4) \! f-sharp |
  g-sharp4.( \grace { a-sharp32 \< g-sharp f-sharpsharp g-sharp } c-sharp8 b a-sharp d-sharp c-sharp) \> |
  b2 r4 \! a-sharp8( b) |
  c-sharp8( f-sharp d-sharp a-sharp) b( d-sharp b g-sharp) |
  a-sharp8( b c-sharp d-sharp c-sharp) r a-sharp8( b) |
  c-sharp8( f-sharp c-sharp a-sharp) b( d-sharp c-sharp e-sharp,) |
  f-sharp4.\(( \< g-sharp8) a-sharp b c-sharp d-sharp\) |
  e8^\markup { \italic "rit." }( \> d-sharp f-sharp e) d-sharp( c-sharp e d-sharp |
  \tempo "Tempo I"
  b4) \< b( d-sharp) \> d-sharp |
  b4.( \! a-sharp16 g-sharp f-sharp4) f-sharp |
  g-sharp8( a-sharp b c-sharp) b( \< a-sharp g-sharp a-sharp) |
  b4.( \> \grace { c-sharp32 b a-sharp b } d-sharp8 f-sharp4) \! f-sharp,16( f-sharpsharp g-sharp a-sharp |
  b4) \tuplet 5/4 { b16( f-sharp d-sharp f-sharp b } d-sharp4) \subdivide-beams #1/8 2,2,2,2 { d-sharp32( c-sharp e d-sharp c-sharp b a-sharp g-sharp) } |
  f-sharp2( d-sharp4) f-sharp4-. |
  g-sharp4.( \grace { a-sharp32 \< g-sharp f-sharpsharp g-sharp } c-sharp8) b( a-sharp f-sharp' \! a-sharp,) |
  b4~( b16 f-sharp d-sharp' f-sharp, b4) a-sharp16_\markup { \italic "leggiero" }( b) c-sharp-. d-sharp-. |

  e16( d-sharp) c-sharp-. b-. a-sharp( b) c-sharp-. d-sharp-. e( d-sharp) c-sharp-. b-. a-sharp-. g-sharp-. f-sharp-. e-. |
  d-sharp16( b) d-sharp-. f-sharp-. b( f-sharp) b-. d-sharp-. f-sharp4 a-sharp,16( b) c-sharp-. d-sharp-.
  e16( d-sharp) c-sharp-. b-. a-sharp( b) c-sharp-. d-sharp-. e( c-sharp) f-sharp-. e-. d-sharp-. c-sharp-. b-. a-sharp-. |
  b16( f-sharp) d-sharp-. f-sharp-. b( f-sharp) b-. d-sharp-. f-sharp4 f-sharp16( e) d-sharp-. c-sharp-. |
  \repeat unfold 2 { b( a) f-sharp-. d-sharp-. b( d-sharp) f-sharp-. a-. } |
  g-sharp16( e) f-sharp-. g-sharp-. a-. b-. c-sharp-. d-sharp-. e4 e-sharp8. e-sharp16 |
  f-sharp16( d-sharp) b-. f-sharp-. d-sharp( f-sharp) b-. d-sharp-. f-sharp( d-sharp) b-. f-sharp-. e'-. c-sharp-. a-sharp-. f-sharp-. |
  b16( d-sharp) b-. f-sharp-. d-sharp( b') f-sharp-. d-sharp-. b4 f-sharp'4( |

  b4) \< b( d-sharp) \> d-sharp( |
  \once \stemDown b2 f-sharp4) \! f-sharp |
  g-sharp4.( \< e'8) d-sharp( c-sharp b a-sharp) |
  \once \stemDown b2( \> f-sharp4) \! f-sharp( |
  b4) \< b( d-sharp) d-sharp( \> |
  b4. a-sharp16 g-sharp f-sharp4) \! f-sharp |
  g-sharp4.( \grace { a-sharp32 g-sharp f-sharpsharp g-sharp } c-sharp8) \< b( a-sharp f-sharp' a-sharp,) \! |
  \repeat unfold 2 { b16->( f-sharp' d-sharp b) a-sharp->( e' c-sharp a-sharp) } |
  b16->( f-sharp' d-sharp b) f-sharp->( d-sharp' b f-sharp) d-sharp->( b' f-sharp d-sharp) b->( f-sharp' d-sharp f-sharp) |
  b2-> b,-> |
  \partial 2. { \clef \bass-clef-name b,2-> r4 } | \bar "|."
}
