\version "2.22.0"

\include "settings.ily"

\relative {
  \language "english"

  \transposition f

  \tempo "Moderato"
  \time 4/4

  \repeat volta 2 {
    <> \mf \repeat unfold 2 { e'16( f) g-. a-. g-. c( d c) } |
    \repeat unfold 2 { f,16( g) a-. b-flat-. a-. c( d c) } |
    g16( a) b-natural!-. c-. b-. d( e d) c-. e( f e) d( c) b-. a-. |
    b16-. g( f-sharp g) a( b) c-. d-. g,4 r |
    e16( \p f-natural!) g-. a-. g-. c( d c) f,( \cresc g) a-. b-flat-. a-. c( d c) |
    g16( a) b-natural!-. c-. b-. e( f e) a,( b) c-. d-. c-. \f f( g f) |
    e16( d) c-. b-. c-. a( g-sharp a) d( c) b-. a-. b-. g( f-sharp g) |
    c16( \> b) a-. g-. a-. f-sharp( e f-sharp) g8 \! r g16( \f a) b-. c-. |
    a16-. d( e d) f-sharp,-. d'( e d) g,-. d'( e d) b-. d( e d) |
    a16-. d( e d) f-sharp,-. d'( e d) b4 g16( \p a) b-. c-. |

    a16-. d( e d) f-sharp,-. d'( e d) g,-. d'( e d) b-. d( e d) |
    a16-. d( e d) f-sharp,-. d'( e d) g,4 r |
    % The 1st edition has:
    % a16-. d( e d) g,-. d'( e d) a-. d( e d) f-sharp,-. d'( e d) |
    % g,16-. d'( e d) b-. d( e d) g,4 r |
  }
  \repeat volta 2 {
    b16( \mf c) d-. e-. a,-. d( e d) g,( a) b-. c-. f-sharp,-. b( c b) |
    e,16( f-sharp) g-. a-. d,-. g( a g) f-sharp( g) a-. b-. a-. c( d c) |
    b8 r b16( \p a) g-. f-sharp-. g-. e( d-sharp e) c'( b) a-. g-. |
    a16-. \cresc f-sharp( e f-sharp) d'( c) b-. a-. b-. g( f-sharp g) f-natural'!( e) d-. c-. |
    b16( c) d-. e-. d-. g,( a g) c( \f d) e-. f-. e-. g,( a g) |
    d'16( e) f-. g-. e-. g,( a g) r2\fermata |

    <> \p \repeat unfold 2 { e16( f) g-. a-. g-. c( d c) } |
    f,16( \cresc g) a-. b-flat-. a-. c( d c) g( a) b-. c-. b-. d( e d) |
    a16( b) c-. d-. c-. e( f e) b( c) d-. e-. d-. \f f( g f) |
    e8 r a,16-. \p c( d c) g-. c( d c) g-. b( d b) |
    c8 r b16-. \f g'( <a \tweak font-size #-2 f-sharp> g) c,-. g'( <a \tweak font-size #-2 f-sharp> g) d-. g( <a \tweak font-size #-2 f> <g \tweak font-size #-2 d>) |
    e8( c16) r b,-. \p g'( a g) c,-. g'( a g) d-. g( a g) |
    e8( c) r4 r2 |
  }
}
