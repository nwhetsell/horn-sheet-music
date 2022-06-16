\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro vivace"

  \key c \major
  \time 4/4

  \repeat volta 2 {
    e'8( \p c) d-. e-. f( d) e-. f-. |
    g8( e) f-. g-. a( \cresc f) g-. a-. |
    b8( g) a-. b-. c( a) b-. c-. |
    d8( b) c-. d-. e( d) c-. b-. |
    c8( \f a) b-. c-. d( c) b-. a-. |
    b8( d) c-. b-. a( \> c) b-. a-. |
    g8( b) a-. g-. f-sharp( a) g-. f-sharp-. |
    g4 \p r g8( a) b-. g-. |
    a8( b) c-. b-. a( b) c-. a-. |
    b8( c) d-. c-. b( \cresc c) d-. b-. |
    c8( d) e-. d-. c( d) e-. c-. |
    d8( e) f-sharp-. e-. d( e) f-sharp-. d-. |
    g8( \f d) b-. g-. f-sharp( g) a-. f-sharp-. |
    g8( a) b-. g-. a( c) b-. a-. |
    g2 r |
  }
  \repeat volta 2 {
    a8( \p c) b-. a-. g-sharp( e) f-sharp-. g-sharp-. |
    a8( c) b-. a-. b( d) c-. b-. |
    c8( \cresc e) d-. c-. b( g) a-. b-. |
    c8( e) d-. c-. d( f) e-. d-. |
    e8( \f g) f-. e-. d( f) e-. d-. |
    c8( e) d-. c-. b4 r |
    c8( e) d-. c-. b( d) c-. b-. |
    a8( c) b-. a-. g-sharp4 r |
    a8( c) b-. a-. g!( \> b) a-. g-. |
    f8( a) g-. f-. e( \p c) d-. e-. |
    f8( \cresc d) e-. f-. g( e) f-. g-. |
    a8( f) g-. a-. b( g) a-. b-. |
    c8( \f e) d-. c-. b( g) a-. b-. |

    c8( g) e-. c-. b( g)
    % The staccatos are in the 1st edition.
    <a \tag #'gumpert \tweak font-size #-2 f>-\tag #'non-gumpert -. <b \tag #'gumpert \tweak font-size #-2 d,>-\tag #'non-gumpert -. |

    <c \tag #'gumpert \tweak font-size #-2 c,>2 r |
  }
}
