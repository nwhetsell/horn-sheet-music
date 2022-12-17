\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Moderato"

  \key c \major
  \time 6/4

  \repeat volta 2 {
    c'4( \mf e') c g e c |
    b4( \< f'') d b g f |
    e4( \f g') e c g e |
    g,4( \> f') d b g2 \! |
    c4( \f g'') e c g e |
    d4( f') d a f d |
    g,4( f'') d b g f |
    e4( \> c') g e c2 |
    e4( \p e') b g-sharp e b |
    c4( e') c a e c |
    b4 \tweak details.accidental-collision #6 ( d-sharp') b a f-sharp d-sharp |

    e4( c') a f! d! c |
    % The 1st edition has:
    % e4( e') b g e2 |
    % f-sharp4( c') a f-sharp d c |

    b4( \< d') b g d b |
    c4( \mf e') c a f-sharp d |
    g,4( g') d b g2 |
  }
  \repeat volta 2 {
    g4 \tweak details.accidental-collision #11 ( \f f-natural''!) d b g f |
    d4 b g b d g |
    c4( g') e c g e |
    c4( c') g e c2 |
    c4 \tweak details.accidental-collision #40 ( e-flat') c g e-flat c |
    a-flat4( c') a-flat e-flat c a-flat |
    g4( c') g e-flat c g |
    f-sharp4( c'') a! f-sharp e-flat c |
    b4 r g \tweak details.accidental-collision #11 ( f-natural''!) d b |
    g4 f d b g r\fermata |

    c4( \p e') c b-flat g e |
    f4( f') c a f2 |
    g,4( b') g f d b |
    c4( c') g e c r |

    c4( \mf e') c g e c |
    b4( \< f'') d b g f |
    e4( \f g') e c g e |
    d4( a') f d b g |
    c,4( g''') e c g e |
    c4( e') c g e c |
    g4( g') e c g e |
    c2. r2. |
  }
}
