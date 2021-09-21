\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro"

  \key c \major
  \time 4/4

  \override Hairpin.after-line-breaking = ##t
  \override Hairpin.to-barline = ##f

  c'16( \p e) g,-. b-. c( e) g,-. b-. c( e) g-. e-. c8 r |
  f16( \mf a) c,-. e-. f( a) c,-. e-. f( a) c-. a-. f8 r |
  b16( \f d) g,-. b-. d( f) g,-. b-. d( f) g,-. b-. d( f) g-. f-. |
  e16( g) c,-. e-. d( f) b,-. d-. c( e) a,-. c-. b( d) g,-. b-. |
  a16( c) f,-. a-. g( b) e,-. g-. f( \> a) d,-. f-. b,( d) g,-. b-. |
  c8 \! r c16( \p e) g,-. b-. c( e) g,-. b-. c( e) g-. e-. |
  f-sharp8 r f-sharp16( \mf a) d,-. e-. f-sharp( a) d,-. e-. f-sharp( a) c-. a-. |
  b16( \cresc d) g,-. b-. d-sharp( e) a,-. c-. b( d) g,-. b-. a( c) f-sharp,-. a-. |
  g8[ \f \breathe e'16( d)] f-sharp,-. a-. e'( d) g,-. b-. e( d) f-sharp,-. a-. e'( d) |
  b16-. d( g) b,-. a-. c( e) a,-. g-. b( d) g,-. f-sharp-. a( d) f-sharp,-. |
  g16( b) d,-. f-sharp-. g( b) d,-. f-sharp-. g4 r | \bar "||"
  \once \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
  \once \override Score.RehearsalMark.font-size = #0
  \mark \markup { \musicglyph #"scripts.ufermata" }

  e16( \p g) b,-. d-sharp-. e( g) b,-. d-sharp-. e( g) b-. g-. e8 r |
  e16( \mf g) c,-. d-sharp-. e( g) c,-. d-sharp-. e( g) c-. g-. e8 r |
  f16( \f a) d-natural,!-. f-sharp-. g( b) e,-. g-sharp-. a( c) f,-. a-sharp-. b( d) g,-. b-. |
  d-sharp16( e) a,-. c-. e( f) b,-. d-. f-sharp( g) b,-. d-. e( f) g,-. b-. |
  c8 r c16( e-flat) g,-. b-. c( e-flat) g,-. b-. c( b-flat) a-flat-. g-. |
  a-flat8 r a-flat16( \> c) e-flat,-. g-. a-flat( c) e-flat,-. g-. a-flat( g) f-. e-. |
  f8 \! r f16( \mf a-flat) c,-. e-. f( a-flat) c,-. e-. f( e-flat) d-. c-. |
  b!16( d) g,-. b-. c( e-flat) g-. c-. b( d) g,-. b-. c( g) e-flat-. c-. |
  g'16-. b( d) f-sharp,-. g-. c( e-flat) f-sharp,-. g4 r |

  c,16( \p e!) g,-. b-. c( e) g,-. b-. c( e) g-. e-. c8 r |
  f16( \mf a) c,-. e-. f( a) c,-. e-. f( a) c-. a-. f8 r |
  b16( \< d) g,-. b-. d( f) g,-. b-. d( f)
    g,-. b-. d8 % The 1st edition has b d g here.
    \! r |
  e16( \f g) a,-. c-sharp-. d( f) g,-. b-. c( e) f,-. a-. b( d) g,-. b-. |
  c16( e) g,-. c-. d( f) g,-. b-. c( e) g,-. c-. b( d) g,-. r |
  c16( e) g-sharp,-. b-. a( c) e,-. g-. \> f( a) d,-. f-. b,( d) g,-. b-. \! |
  c8 g16-. \p b-. c( \cresc e) g-. e-. f( a) c,-. e-. f( a) c-. a-. |
  b( d) g,-. a-. b( d) f-. d-. e( \f g) c,-. e-. d( f) b,-. d-. |
  c8 g16-. c-. d( f) g,-. b-. c( e) g,-. c-. d( f) g,-. b-. |
  c( e) g,-. b-. c( e) e,-. f-. g( c) c,-. d-. e( g) g,-. b-. |
  c( e) g,-. b-. c( e) g,-. b-. c4 r | \bar "|."

  \revert Hairpin.after-line-breaking
  \revert Hairpin.to-barline
}
