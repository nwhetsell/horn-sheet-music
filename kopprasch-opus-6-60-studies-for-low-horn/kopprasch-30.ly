\version "2.22.0"

\include "settings.ily"

\relative {
  \language "english"

  \transposition f

  \tempo "Presto"

  \key c \major
  \time 2/4

  \set Timing.beamExceptions = \beamExceptions { \tuplet 3/2 8 { 16[ 16 16] 16[ 16 16] 16[ 16 16] 16[ 16 16] } }

  \repeat volta 2 {
    \acciaccatura d''8 \tuplet 3/2 8 { c16-. \p \< b-. c-. g-. a-. b( c) b-. c( e) d-. c-.} |
    \tuplet 3/2 8 { g16-. \f a-. b-. c-. g-. e-. g-. e-. c-. } g8\fermata |
    \acciaccatura e''8 \tuplet 3/2 8 { d16-. \p c-sharp-. d-. g,-. b-. c( d) \< c-. d-. f( e) d-. } |
    \acciaccatura c8 \tuplet 3/2 8 { b16-. \f a-. b-. g-. a-. b-. c-. d-. e-. } d8\fermata |
    \acciaccatura f8 \tuplet 3/2 8 {
      e16-. \tweak X-offset #-1.5 \f d-. e-. c( d) e-. f( e) f-. a( f) d-. |
      e16( c) e-. g( e) c-. d( b) d-. f( d) b-. |
    }
    c8 \tuplet 3/2 8 { e,16( \p g) e-. f( a) f-. d( f) d-. } |
    \tuplet 3/2 8 { e16( g) e-. c( e) c-. d( f) d-. b( d) b-. } |
    c8 \< \tuplet 3/2 8 { c16( g) c-. e( c) e-. g( e) g-. } |
    \tuplet 3/2 8 { c16 \mf( g) c-. e( c) g-. f( g) b-. d( b) g-. } |
    c8 \tuplet 3/2 8 { e16( \tweak X-offset #-0.5 \p c) a-. e( g-sharp) b-. d( c) b-. } |
    c8 \tuplet 3/2 8 { a16( b) c-sharp-. d( e) d-. c( b) a-. } |
    \tuplet 3/2 8 {
      b16( a) b-. g-. a-. b-. c( d) c-. b-. a-. g-. |
      a16( g) a-. f-sharp-. g-. a-. b( c) b-. a-. g-. f-sharp-. |
    }
    g8 \tuplet 3/2 8 { d'16( \cresc b) g-. e'( c) g-. d'( b) g-. } |
    \tuplet 3/2 8 { c16( e) c-. a( c) a-. f-sharp( a) f-sharp-. d( f-sharp) d-. } |
    g8 \tuplet 3/2 8 { g16( b) d-. g( \f f-sharp) e-. d( c-sharp) e-. } |
    \tuplet 3/2 8 {
      d16( e d c-natural! d c b c b \stemDown a b a) \stemNeutral |
      g16( b) a-. g( f-sharp) e-. d( e) d-. c-. b-. a-. |
    }
    g4 r | \bar "||"

    g'8 \mf \tuplet 3/2 8 { b-flat16( a) g-. d'( b-flat) g-. \tweak NoteColumn.X-offset #0.5 e-flat'( c) g-. } |
    \tuplet 3/2 8 {
      d'16( g) d-. b-flat( d) b-flat-. c( e-flat) c-. a( c) a-. |
      b-flat16( a) b-flat-. d-. c-. b-flat-. c( b-flat) c-. e-flat-. d-. c-. |
      d16( g) d-. b-flat( d) b-flat-. c( e-flat) c-. a( c) a-. |
    }
    b-flat8 \< \tuplet 3/2 8 { f16( g) a-. b-flat( a) b-flat-. d( c) b-flat-. } |
    f'8 \tuplet 3/2 8 { f16( \f d) b-flat-. g'( f) g-.
      a-. g-. f-. % The 1st edition has a-flat f d here.
    } |
    \tuplet 3/2 8 { e-flat16( d) e-flat-. g-. f-. e-flat-. d( c) d-. b-flat-. c-. d-. } |
    \tuplet 3/2 8 { e-flat16( g) e-flat-. b-flat( e-flat) b-flat-. g( b-flat) g-. } e-flat16-. r |
    \tuplet 3/2 8 { c'16( b-natural!) c-. e-flat-. d-. c-. b( a) b-. g-. a-. b-. } |
    \tuplet 3/2 8 { c16( e-flat) c-. g( c) g-. e-flat( g) e-flat-. } c16-. r |
    \tuplet 3/2 8 { g16-. g'-. a-. b( a g) c,-. c'-. d-. e-flat( d c) } |
    g'8 \tuplet 3/2 8 { g,16( \> f-sharp) g-. a( g) a-. b( a) b-. } |

    \acciaccatura d8 \tuplet 3/2 8 { c16-. \p \< b-. c-. g-. a-. b( c) b-. c( e) d-. c-.} |
    \tuplet 3/2 8 { g16-. \f a-. b-. c-. g-. e-. g-. e-. c-. } g8\fermata |
    \acciaccatura e''8 \tuplet 3/2 8 {
      d16-. \tweak X-offset #-1 \p c-sharp-. d-. g,-. b-. c( d) \< c-. d-. f( e) d-. |
      e16( \f d) e-. c( d) e-. f( e) f-. a( g) f-. |
      e16( c) e-. g( e) c-. d( b) d-. f( d) b-. |
    }
    c8 \tuplet 3/2 8 { e,16( \p g) e-. f( a) f-. d( f) d-. } |
    \tuplet 3/2 8 { e16( g) e-. c( e) c-. d( f) d-. b( d) b-. } |
    c8 \tuplet 3/2 8 { g'16( e) c-. a'( f) c-. g'( e) c-. } |
    \tuplet 3/2 8 { f16( a) f-. d( f) d-. b( d) b-. g( b) g-. } |
    c8 \tuplet 3/2 8 { c16-. \mf e-. g-. c( b) a-. g( f-sharp) a-. } |
    g8 \< \tuplet 3/2 8 { g16-. b-. d-. f( e) d-. c( b) d-. } |
    \tuplet 3/2 8 { c16( \f g') e-. c( e) c-. g( c) g-. e( g) e-. } |
    c4 r |
  }
}
