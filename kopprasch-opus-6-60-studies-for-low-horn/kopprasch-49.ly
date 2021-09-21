\version "2.22.0"

\include "../turn-markup.ily"
\include "settings.ily"

\relative {
  \language "english"

  \transposition f

  \tempo "Adagio"

  \key c \major
  \time 4/4

  g2_\markup { \dynamic "p" \italic "dolce" } c4 e |
  g4.( \< a16 g) f8 e d c \! |
  f4. c8 f f( g a) |
  f-sharp4( \> g8. e16) c4 \! r |
  f!2 \p d4 b |
  g4.( \< f-sharp16 g) a8 b c d \! |
  e4. a8 g4 f-sharp |
  g2( \> g,4) \! r |
  c2-- \f c'-- |
  b2-- r4 b, |
  a2-- a'-- |
  g2-- r4 g, |
  f2-- f'-- |
  e2-- c~-- |
  c4 \breathe b g' b, |
  c2( c,4) r |
  g'2 \f b4 d |
  g4 \breathe b8( a g f-sharp e d) |
  c8( b a g f-sharp) e'( d c) |
  c4~( c16 b d c) b4 r |
  g'2 b4.( d-sharp,8) |
  <<
    { e4.( f-sharp8) }
    { s4 s^#(turn-with-accidentals (markup #:sharp) (markup #:sharp)) }
  >> g4 b, |
  c8( e) g-sharp( a) \once \stemUp b-flat4( \grace { c16 b-flat } a8) g |
  g2( \> \grace { f-sharp32 g a g } f-sharp4) \! r |
  g,8 \p \< b d g b d b g |
  c4. \> \breathe a8 f-sharp d c a |
  g8 \< b d g b e16( d c b a g) |
  <<
    { c4.( \> a8) }
    { s4 s^\turn-markup }
  >> f-sharp8 d c a |

  % These measures are not in the 1st edition.
  g8 \< b d g b e16( d c b a g) |
  c4. \mf \breathe a8 f-sharp d c a |

  #(if (string=? bass-clef-name "bass^8") #{ \clef \bass-clef-name #})
  g2 \breathe f-sharp4 f |
  e4 r8 #(if (not (string=? bass-clef-name "bass^8")) #{ \clef \bass-clef-name #}) d c b a g |
  f-sharp4 \breathe #(if (not (string=? bass-clef-name "bass^8")) #{ \clef "treble" #}) <e''' \tweak font-size #-2 e,> <d \tweak font-size #-2 d,> <c \tweak font-size #-2 c,> |
  <c \tweak font-size #-2 c,>2( \grace { <d d,>16 <c c,> } <b \tweak font-size #-2 b,>4) r |
  g2 f-sharp4 f |
  e!4 r8 d c b a g |
  f-sharp4 \breathe <e'' \tweak font-size #-2 e,> <d \tweak font-size #-2 d,> <f-sharp, \tweak font-size #-2 f-sharp,> |
  <g \tweak font-size #-2 g,>2 r |
  g,1~ \< |
  g2 \> r \! | \bar "||"

  \clef "treble"
  a-flat2 \f c4 e-flat |
  a-flat4.( b-flat16 a-flat g8 a-flat) b-flat c |
  d-flat4.( b-flat8 g)[ \tweak Y-offset #3 \breathe e-flat f g] |
  a-flat4 r e!2 |
  f2 c4 a-flat |
  f4 r8 f' \p \< e( f) g a-flat \! |
  b-flat8( g) e c b!( \tweak to-barline ##f \> c) d e |
  f2. \! r4 |
  f,2-- \f f'-- |
  g-flat2-- r4 g-flat, |
  g2-- g'-- |
  a-flat2-- r4 a-flat, \mf |
  g2 c4 \< e-flat |
  g8( b! c d) \! e-flat( b c f-sharp,) |
  g2( \> \grace { a-flat16 g } e-flat4) c \! |
  a-flat4 c g c |
  \afterGrace f-sharp,1\trill( { \override Stem.no-stem-extend = ##f e16 f-sharp) \revert Stem.no-stem-extend } |
  g4. f-sharp16( g) c4 \< e-flat |
  g4.( a-flat16 g) f8( e-flat) d c \breathe |
  a-flat2^>( \> g4) \! r8\fermata b #(make-dynamic-script (markup #:dynamic "p" #:normal-text (#:italic "dolce"))) \< |
  c8( e!) g c e( c) g e \! |
  f4. \tweak rotation #'(-10 0 0) \> \breathe d8 b-.( g-. f-. d-.) \! |
  c8( e) g c e( g) e c |
  b8 \< c d e f g a b \! |
  c2 b4 b-flat |
  a4 r8 g f e d c |
  b4 \breathe a' \> g f |
  f2( e4) \! r |
  c2( \p b4) b-flat |
  a4 r8 g f-.( e-. d-. c-.) |
  b4 \breathe a-flat'( g b!) |
  c2 r |
  c,1~_\markup { \dynamic "pp" } \< |
  c2 \> r \! | \bar "|."
}
