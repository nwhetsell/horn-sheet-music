\version "2.24.0"

\include "settings.ily"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro vivo"

  \key c \major
  \time 2/4

  \tuplet 3/2 4 {
    g'8( \f e) c-. c-. c-. c-. |
    c'8( g) e-. e-. e-. e-. |
    e'8( c) g-. g-. g-. g-. |
    g'8( e) c-. c-. c-. c-. |
    b8( d) c-. b-. a-. g-. |
    e'8( g) f-. e-. d-. c-. |
    b8( d) c-. a( c) b-. |
    g-. g-. g-. g-. g-. g-. |
    g8( \f e) c-. c-. c-. c-. |
    c'8( g) e-. e-. e-. e-. |
    e'8( c) g-. g-. g-. g-. |
    g'8( e) c-. c-. c-. c-. |
    d8-. g( f-sharp g d) b-. |
    a8-. d( c-sharp d c) a-. |
    g8-. b-. c-. d-. e-. f-sharp-. |
  }
  g8-. r r4 |
  \tuplet 3/2 4 {
    f!8( e) d-. d-. d-. d-. |
    e8( d) c-. c-. c-. c-. |
    d8( c) b-. b( a) g-. |
    f-sharp8( g) c-. e( c) e-. |
    g8( f) e-. d-. d-. d-. |
    f8( e) d-. c-. c-. c-. |
    e8( d) c-. b( a) g-. |
    c8-. g,-. c-. e-. g-. c-. |
    a8-. f,-. a-. d-. f-. a-. |
    g8-. g,-. b-. d-. g-. b-. |
    c8-. g-. e-. c-. g-. e-. |
    c8-. g'''-. e-. c-. g-. e-. |
    f,8-. f''-. d-. a-. f-. d-. |
    g,8-. e''-. c-. g-. e-. c-. |
    g8-. d''-. b-. g-. f-. d-. |
    c8-. e-. f-. g-. a-. b-. |
    c8-. g-. a-. b-. c-. d-. |
    e8-. b-. c-. d-. e-. f-. |
    g8( e) c-. e( c) g-. |
    c8( g) e-. g( e) c-. |
    b-flat8-. c-. d-. g-. b-flat-. c-. |
    e8-. e,-. g-. b-flat-. c-. e-. |
    g8-. g,-. b-flat-. c-. e-. g-. |
    f8-. f,-. f-. f-sharp'-. f-sharp,-. f-sharp-. |
    \repeat unfold 2 { g'8( f-sharp) g-. g( f-sharp) g-. | }
    g8( f-sharp) f-. e-. d-. c-. |
    b8-. a-. g-. f-. e-. d-. |
  }
  c4 r |
  \tuplet 3/2 4 {
    g'8( e) c-. c-. c-. c-. |
    c'8( g) e-. e-. e-. e-. |
    e'8( c) g-. g-. g-. g-. |
  }
  g'8 r \tuplet 3/2 { g,,-. a-. b-. } |
  c8 r r4 | \bar "|."
}
