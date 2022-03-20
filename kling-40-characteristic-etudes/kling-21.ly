\version "2.22.0"

\include "../subdivide-beams.ily"
\include "../turn-markup.ily"
\include "settings.ily"

\relative {
  \language "english"

  \transposition f

  \tempo "Larghetto"

  \key d \major
  \time 6/8

  \partial 8 { f-sharp'16-._\markup { \dynamic "p" \italic "espressivo" }( g-.) } |
  a4( f-sharp8) d'4( b8) |
  a8.( b16 g a f-sharp4) d16-.( e-.) |
  f-sharp4( a8) e4( a8) |
  f-sharp8.( e16 d b' a4) f-sharp16-.( g-.) |
  a4( \< f-sharp8) d'4( b8) |
  \subdivide-beams #1/8 3,3 { a16-. \! f-sharp'32( e) e( d) d( c-sharp) c-sharp( b) b( a) } a8 r d,16-.( e-.) |
  \subdivide-beams #1/8 3,3 { f-sharp32( \< g a b c-sharp d e f-sharp g-> \! e c-sharp a) g-sharp( \> a c-sharp b a g f-sharp e \! d-sharp e b' a) } |
  \subdivide-beams #1/8 3,3 { d,16 d32( c-sharp) d-. e-. f-sharp-. g-. a-. b-. c-sharp-. d-. } d,8 r r |

  e4( c-sharp'8) a8.( g-sharp16 b a) |
  \subdivide-beams #1/8 3,3 { g-sharp32( \< a g-sharp f-sharp g-sharp a b c-sharp e d b g-sharp \! } e4) r8 |
  e4( d'8) b8.( a-sharp16 c-sharp b) |
  \subdivide-beams #1/8 3,3 { a!32( \< b a g-sharp a b c-sharp d e f-sharp g-sharp a) \! } a,8 r r |
  g!8. \mf \< a16-.( c-sharp-. e-.) a8. e16-.( c-sharp-. a-.) |
  e'4( \f d8) \subdivide-beams #1/8 3,3 { g-sharp32( f-sharp) f-sharp( e) e( d) d( c-sharp) c-sharp( b) b( a) } |
  \subdivide-beams #1/8 3,3 { f-sharp'32( e) e( d) d( c-sharp) c-sharp( b) b( a) a( g-sharp) e'( d) d( c-sharp) c-sharp( b) b( a) a( g-sharp!) g-sharp( f-sharp) } |
  f8.( \ff d'16 c-sharp b) a-sharp8.( g-natural'!16 f-sharp e) |
  \subdivide-beams #1/8 3,3 {
    c-sharp!32->( d e d) a-sharp->( b c-sharp b) e-sharp,->( f-sharp g f-sharp) d( b) f-sharp'-. d-. b'( f-sharp) d'-. b-. f-sharp'( d) b'-. f-sharp-. |
    e32( c-sharp) c-sharp( e) e( c-sharp) c-sharp( e) e( a) e( c-sharp) d( b) b( d) d( b g-sharp') f-sharp-. e-. d-. c-sharp-. b-. |
  }
  a8.( \> e16 c-sharp' b) a4 \! r8 |
  a4.~( \p \< a16 b) c-sharp-. d-. e-. f-sharp-. \! |

  \barNumberCheck #21
  \cadenzaOn
  \tempo "Cadenza ad lib."
  \magnifyMusic \cadenza-magnification {
    g8.\fermata[ f-sharp16( a g)]
    \subdivide-beams #1/8 3 { f-sharp32[( g) e( f-sharp) d( e) c-sharp( d) b( c-sharp) a( b)] g[( a) f-sharp( g) e( f-sharp) d( e)] } c-sharp4\fermata \bar ""
    e32[( g) b-flat-. c-sharp!-. e-.] g->[( e) c-sharp-. b-flat-. g-. e-.]
    d-sharp32->[( f-sharp) a-. c-. d-sharp-. f-sharp-.] a->[( f-sharp) d-sharp-. c-. a-. f-sharp-.] \bar ""
    f32->[( g-sharp) b-. d-. f-. g-sharp-.] b->[( g-sharp) f-. d-. b-. g-sharp-.]
    \subdivide-beams #1/8 2 { a32\fermata[( f-sharp) g-. a-. b( a) b-. c-sharp-.] d[( a) b-. c-sharp-. d( c-sharp) d-. e-.] f-sharp[( c-sharp) d-. e-. f-sharp( e) f-sharp-. g-.] }
    a8\fermata[ \> g-sharp16-.( g-. f-sharp-. e-sharp-. e-. d-sharp-. d-. c-sharp-. c-. b-. a-sharp-.)] \!
  }
  a4\fermata f-sharp16-.[( \p g-.)]
  \cadenzaOff \bar "|"
  \set Score.currentBarNumber = #22

  \tempo "a tempo"
  a4( f-sharp8) d'4( b8) |
  a8.( b16 g a f-sharp4) d16-.( e-.) |
  f-sharp4( a8) e4( a8) |
  f-sharp8.( e16 d b' a4) f-sharp16-.( g-.) |
  a4( \< f-sharp8) d'4( b8) |
  a4( \f f-sharp'8) e4( b8) |
  d8. f-sharp,16( c-sharp' b) a(
    <<
      { e16 g8.\fermata f-sharp16) }
      {
        s32
        \textLengthOn
        \once \override TextScript.extra-spacing-width = #'(-0.5 . 0.5)
        \once \override TextScript.outside-staff-priority = ##f
        \once \override TextScript.Y-offset = #-1.5
        s_\turn-markup
        \textLengthOff
      }
    >> |
  d8.\( f-sharp16( \> a f-sharp') d4\) \! r8 |
  a16( \p \< b c-sharp d e f-sharp g \> e c-sharp a g e) \! |
  f-sharp4( a8) d,8.( e16 f-sharp g) |
  a16( \< b c-sharp d e f-sharp g^\markup { \italic "rit." } \> e c-sharp a g e) \! |
  d8-. r f-sharp'-.( d-.) r f-sharp,-. |
  \partial 1*5/8 { d4.~4 } | \bar "|."
}
