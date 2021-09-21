\version "2.22.0"

\include "../subdivide-beams.ily"
\include "../turn-markup.ily"
\include "settings.ily"

\relative {
  \language "english"

  \transposition f

  \tempo "Largo"

  \key c \major
  \time 2/4

  c'4_\markup { \dynamic "p" \italic "dolce" } e8 g |
  <<
    { c8.( d16) }
    { s8 s^\turn-markup }
  >> e8 r64 g, \< a b c d e f |
  g8.\f e16 c g e c |
  \clef \bass-clef-name g8 e16 c g4\fermata |
  \clef "treble" b'4 \p d8 g |
  <<
    { b8.( c16) }
    { s8 s^\turn-markup }
  >> d8 \subdivide-beams #1/16 4,4 { \tuplet 3/2 16 { r32 g,, \< g' b d f } } |
  a8. \f f16 d b g f |
  \subdivide-beams #1/8 2,2 { e16 c'32( g) e c g e } c4\fermata |
  \acciaccatura c'8 e'8.\fp( b16) c( g-sharp a e) |
  <<
    { f8.( g16) }
    { s8 s_\turn-markup }
  >> a16( g f e) \breathe |
  \acciaccatura d8 f'8.\fp( c-sharp16) d( a-sharp b f-sharp) |
  g8.[( \grace { a!32 g f-sharp g } a16)] b16( a g f) \breathe |
  \acciaccatura e8 g'8.\fp( f16) e( d c b) |
  \subdivide-beams #1/8 2,2 { a16 \< b32 c-sharp d e f g } a16 \! r f-sharp,,8( \mf |
  \subdivide-beams #1/8 2,2 {
    g32) c( b c) g-. e'( d-sharp e) c-. \cresc g'( f-sharp g) e-. c'( b c) |
    g32-. e'( d-sharp e) c-. g'( e g)
  } <c \tweak font-size #-2 a>8 r16 c, \f |
  \acciaccatura e8 \afterGrace d2\trill( { c16 d) } |
  c8. g32( e) c8. g32( e) |
  c4 r | \bar "||"

  g'''4 \f e-flat8 c |
  g4 \mf e-flat8 c |
  g16. a-flat32 g16. f-sharp32 g16. c32 e-flat16. c32 |
  c4( \grace { d16 c } b8) r |
  a-flat''4 \f f8 d16 b |
  a-flat4 \mf f8 d16 b |
  <<
    { c8.( d16) }
    { s8 s_\turn-markup }
  >> e-flat16( f f-sharp g) |
  b16( c d e-flat) c8 r |

  a-flat,4 \p c8 e-flat |
  <<
    { a-flat8.( b-flat16) }
    { s8 s_#(turn-with-accidentals (markup #:flat) (markup #:null)) }
  >> c8 r64 e-flat, \< f g a-flat b-flat c d-flat |
  e-flat16(\f a-flat c, d-flat) d( e-flat f e-flat) |
  \acciaccatura e-flat8 d-flat8.( b-flat32 g) e-flat8 r |
  e-flat4 \p g8 b-flat |
  <<
    { d-flat8.( \< e-flat16) }
    { s8 s^#(turn-with-accidentals (markup #:flat) (markup #:null)) }
  >> e16( f g f) \! |
  e-flat16( d-flat c b-flat) a-flat( g e-flat' d-flat) |
  b!4( \> c8) \! r |
  a-flat'4\fp \> f8 d! \! |
  c-flat16( b-flat) b-flat b-flat b-flat8 r |
  a-flat4 \p f8 d! |
  c-flat16( b-flat) b-flat b-flat b-flat8 r |
  \subdivide-beams #1/8 2,2 { c,32 c'( b! c) e-flat( c) e-flat-. g-. c( e-flat,) g-. c-. e-flat( g,) c-. e-flat-. } |
  g16 \> f e-flat d c e-flat,( f f-sharp) |
  g16 \p g, a-flat'( g) b! g, c'( e-flat) |
  f16 g,, e-flat''( c) b g, e-flat'( c) |
  \acciaccatura g8 g'2\fermata |

  \set Timing.beamExceptions = \beamExceptions { \tuplet 3/2 8 { 16[ 16 16] 16[ 16 16] 16[ 16 16] 16[ 16 16] } }

  \acciaccatura c,8 e-natural'!8.( \f \> b16) \tuplet 3/2 8 { d16( c g-sharp) b( a e) } |
  f16( \p \tuplet 3/2 { g!32 f e) } \tuplet 3/2 8 { f16 \< f-sharp g a b c c-sharp d e } |
  \acciaccatura e,8 f'8. \f c-sharp16 \tuplet 3/2 8 { e16( d a-sharp) c( b f-sharp) } |
  <<
    { g8.( \p a16) }
    { s8 s^#(turn-with-accidentals (markup #:null) (markup #:sharp)) }
  >> \tuplet 3/2 8 { b16 \< c d e f f-sharp } |
  \tuplet 3/2 8 {
    g16 \f \> e c b-flat g e c \p d e f g a-flat |
    a! \< b-flat b c c-sharp d d-sharp e f f-sharp g g-sharp |
  }

  \unset Timing.beamExceptions

  a8 \! r f-sharp,,4->( \f |
  \subdivide-beams #1/8 2,2 { g32) e' c g' e c' g e' f-sharp, c' a e-flat' a, c f-sharp, a } |
  g4 a8 \afterGrace b\trill( { a16 b) } |
  c8. g32( e) c8. g32( e) |
  c4 r | \bar "|."
}
