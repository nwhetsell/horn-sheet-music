\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro vivace"

  \key c \major
  \time 2/4

  \repeat volta 2 {
    \partial 8 c'16( \p e) |
    g8-. e16( g) c8-. g16( e) |
    c8-. e16( g) c8-. e16( c) |
    b8-. \< g16( b) d8-. b16( d) |
    f8-. \> d16( b) g8 \! r |
    c8-. \f e16( g) g,8-. d'16( f) |
    c,8-. c'16( e) g,,8-. b'16( d) |
    e,8-. \p c'16( e) e,8-. b'16( d) |
    e,8-. \< a16( c) e,8-. g-sharp16( b) |
    a8-. \mf e16( a) c8-. a16( c) |
    e4 r |
    g-sharp,8-. e16( g-sharp) b8-. g-sharp16( b) |
    e4 r |
    c8-. a16( c) e8-. c16( a) |
    e8-. g-sharp16( b) d8-. b16( g-sharp) |
    a8-. c16( e) f8-. b,16( d) |
    g-natural,!8-. b16( d) e8-. a,16( c) |
    f,8-. \< a16( d) f-sharp,8-. a16( d) |
    g,8-. \f b16( d) g8
  }
  \repeat volta 2 {
    r8 |
    a,8-. \f c-sharp16( e) g8-. e16( c-sharp) |
    a8-. d16( f) a-flat,8-. d16( f) |
    g,8-. b16( d) f8-. d16( b) |
    g8-. c16( e) g,8-. b16( d) |
    f-sharp,8-. a16( c) e-flat8-. c16( a) |
    g8-. b16( d) g8-. d16( b) |
    f-sharp8-. a16( c) e-flat8-. c16( a) |

    g8-. b16( d) g8 r |
    % The 1st edition has:
    % g8-. d16( b) g8 r |

    g,,8-. \p b'16( d) g,,8-. a'16( c) |
    g,8-. g'16( b) g,8-. f'16( a) |
    g,8-. e'16( g) g,8-. d'16( f) |
    g,8-. c16( e) g,8-. b16( d) |
    r4 r8\fermata c16( \p e) |

    g8-. e16( g) c8-. g16( e) |
    c8-. e16( g) c8-. e16( c) |
    b8-. \< g16( b) d8-. b16( d) |
    f8-. \> d16( b) g8 \! r |
    c8-. \f e16( g) f,8-. d'16( f) |
    g,8-. c16( e) g,,8-. b'16( d) |
    a8-. c16( e) f8-. b,16( d) |
    g,8-. b16( d) e8-. a,16( c) |
    f,8-. a16( c) d8-. g,16( b) |
    e,8-. g16( b) c8-. a16( d) |
    f8-. d16( b) g8-. g,16( b) |
    c4 r8 c16( \p e) |

    g8-. e16( g) b-flat8-. g16( e) |
    c8-. f16( a) c8-. a16( f) |
    g8-. \< b16( d) f8-. \tweak to-barline ##f \> d16( b) |
    c4 \! r8 c,16( \p e) |
    g8-. e16( g) c8-. g16( e) |
    c4 r8
  }
}
