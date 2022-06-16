\version "2.22.0"

\include "settings.ily"

\removeWithTag \removed-tags

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro moderato"

  \key c \major
  \time 3/4

  g16( \p c) e-. g-. a( g) f-sharp-. g-. e8 r |
  c16( \< e) g-. \tag #'1st-edition b \tag #'gumpert c -. d( c) b-. c-. g8 \! r |
  e16( \f g) c-. e-. f( e) d-. e-. d( c) b-. c-. |
  a16( \> g) f-sharp-. g-. f( e) d-sharp-. e-. c8 r |
  b16( \p d) g-. b-. c( b) a-. b-. g8 r |
  d16( \< g) b-. d-. e( d) c-sharp-. d-. b8 \! r |
  g16( \f b) d-. f-. g( f) e-. f-. e( d) c-. d-. |
  c16( b) a-. b-. g( f) e-. f-. d8 r |
  c'16( \p d) e-. d-. c( g) e-. c-. g8 r |
  d''16( e) f-. e-. d( b) g-. d-. b8 r |
  e'16( \f f) g-. f-. e( c) g-. e-. f'( d) b-. g-. |
  c16( d) e-. d-. c( a) f-sharp-. a-. g8 r |
  c,16( \p e) g-. c-. d( c) b-. c-. g8 r |
  f-sharp16( \< a) d-. f-sharp-. g( f-sharp) e-. f-sharp-. e( d) c-sharp-. d |
  d16( \> c!) b-. c-. b( a) g-. a-. f-sharp8 \! r |
  b16( \f d) e-. f-sharp-. g( b,) c-. d-. e( a,) b-. c-. |
  d16( g,) a-. b-. c( f-sharp,) g-. a-. \tag #'1st-edition b8 \tag #'gumpert g8 r |
  e16( a) c-. e-. d( c) b-. c-. b( a) g-. a-. |
  a16( g) f-sharp-. a-. b( g) d-. b-. g8 r |
  d'16( \p \< g) b-. d-. e( d) c-sharp-. d-. b8 \! r |
  d,16( \< f-sharp) a-. d-. e( d) c-sharp-. d-. a8 \! r |
  a16( \f g) f-sharp-. g-. c( b) a-sharp-. b-. e( d) c-sharp-. d-. |
  g16-. g,( f-sharp g) g,4 r | \bar "||"

  g16( \f g') b-flat-. d-. e-flat( d) c-sharp-. d-. c( b-flat!) a-. b-flat-. |
  a16( g) f-sharp-. g-. c( b-flat) a-. b-flat-. g8 r |
  e-flat16( g) b-flat-. e-flat-. f( e-flat) d-. e-flat-. d( c) b-. c-. |
  b-flat16( a) g-. a-. d( c) b-. c-. a8 r |
  f16( \p a) c-. e-flat-. f( e-flat) d-. e-flat-. c8 r |
  f,16( \< b-flat) d-. f-. g( f) e-. f-. d8 \! r |
  g,16( \f b!) d-. g-. a-flat( g) f-sharp-. g-. f( e-flat) d-. e-flat-. |
  d16( c) b-. c -. b-flat( a-flat) g-. a-flat-. g( f) e-flat-. f-. |
  g4 r r |
  g16( b!) d-. g-. a-flat,( g) f-sharp-. g-. g,8 r |
  g'16( c) e-flat-. g-. a-flat,( g) f-sharp-. g-. g,8 r |
  \tag #'1st-edition { \tempo "poco rit." }
  \tag #'gumpert { \override TextSpanner.bound-details.left.text = "poco rit." }
  g16(-\tag #'gumpert \startTextSpan \dim b) d-. g-. \tweak NoteColumn.X-offset #1 a-flat,( g) f-sharp-. g-. \clef \bass-clef-name g,8 r |
  \tag #'1st-edition { \tempo \markup { \combine
    "rit."
    \transparent "p" % This aligns the baselines of “rit.” and “poco rit.”.
  } }
  \clef "treble" g'16( c) e-flat-. g-. \tweak NoteColumn.X-offset #1 a-flat,( g) f-sharp-. g-. c8 f-sharp, |
  g4 \clef \bass-clef-name g,4\fermata \! r-\tag #'gumpert \stopTextSpan | \bar "||"

  \tag #'1st-edition { \tempo "a tempo" }
  \clef "treble" g'16( \p c) e-. g-. a( g) f-sharp-. g-. e8 r |
  c16( \< e) g-. c-. d( c) b-. c-. g8 \! r |
  e16( \f g) c-. e-. f( e) d-. e-. d( c) b-. c-. |
  a16( \> g) f-sharp-. g-. f( e) d-sharp-. e-. c8 \! r |
  c16( \p e) g-. b-flat-. c( b-flat) a-. b-flat-. g8 r |
  e16( \mf g) c-. e-. f( e) d-. e-. c8 r |

  \tag #'gumpert {
    c,16( \< e) g-. c-. d( c) b-. c-. g8 \! r |
    e16( \f g) c-. e-. f( e) d-. e-. d( c) b-. c-. |
    a16( \> g) f-sharp-. g-. f( e) d-sharp-. e-. c8 \! r |
    c16( \p e) g-. b-flat-. c( b-flat) a-. b-flat-. g8 r |
    e16( \< g) c-. e-. f( e) d-. e-. c8 \! r |
  }

  f,16( \f a) c-. f-. e( d) c-sharp-. d-. c( b) a-. b-. |
  d16( \> c) b-. c-. a( g) f-sharp-. g-. c,8 \! r |
  e16( \mf g) a-. b-. c( e,) f-. g-. a( d,) e-. f-. |
  g16( c,) d-. e-. f( b,) c-. d-. e8 r |
  f16( a) \tag #'1st-edition d \tag #'gumpert c -. f-. e( d) c-sharp-. d-. c( b) a-. b-. |
  d16( c) b-. c-. e( c) g-. e-. c8 r |
  g16( c) e-. g-. a( g) f-sharp-. g-. e8 r |
  g,16( b) d-. \tag #'1st-edition f \tag #'gumpert g -. a( g) f-sharp-. g-. d8 r |
  d16( \< c b c) f( e d-sharp e) a( g f-sharp g) |
  c-. \f c,( b c) c,4 r | \bar "|."
}
