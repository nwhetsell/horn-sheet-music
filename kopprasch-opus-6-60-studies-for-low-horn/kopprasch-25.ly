\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Andantino"

  \key g \major
  \time 6/8

  \repeat volta 2 {
    g8_\markup { \dynamic "mf" \italic "espressivo" } b d g b c |
    c-sharp8( \< d) c \acciaccatura { c \> } b a g \! |
    g,8 c e g c d |
    d-sharp8( \< e) d \acciaccatura { d \> } c b a \! |
    d,8 f-sharp a c b a |
    e'8( d) c-sharp d( b) g |
    f-sharp8( g) a \tempo "rit." d,( e) f-sharp |
    g8( a) b a4.\fermata |

    \tempo "a tempo"
    g,8 \mf b d g b c |
    c-sharp8( \< d) c \acciaccatura { c \> } b a g \! |
    g,8 c e g c d |
    d-sharp8( \< e) d \acciaccatura { d \> } c b a \! |
    f-sharp8 a d f-sharp( e) d |
    b8 d-sharp e g( f-sharp) e |
    d-natural!8( a) f-sharp a( g) e |
    d8( a') f-sharp d4 r8 |

    d'8 \p b g-sharp e( f) d |
    c8 e g-sharp a( c) e |
    c8 a f-sharp d( e-flat) c |
    b8 d f-sharp g( a) b |
    d-sharp,8 \cresc f-sharp b d-sharp( c-sharp) b |
    e8 b g f-sharp( a) c-natural! |
    b8( \f g') e \acciaccatura e \tempo "rit." d-sharp c-sharp d-sharp |
    e8 b g e4 r8\fermata |

    \tempo "a tempo"
    g,8 \mf b d g b c |
    c-sharp8( \< d) c \acciaccatura { c \> } b a g \! |
    g,8 c e g c d |
    d-sharp8( \< e) d \acciaccatura { d \> } c b a |
    d,8 \< f-sharp a d e f-sharp |
    g8[ r f-sharp] \f e( d) c |
    b8( g') d-sharp( e) c-sharp( d) |
    b8( \> c-natural!) a-sharp( b) f-sharp( g) |
    e8 \cresc f f-sharp g g-sharp a |
    a-sharp8 b c c-sharp d d-sharp |
    e8 \f f-sharp g d-sharp e c-sharp |
    d-natural!8 c-sharp c b a g |
    \afterGrace a2.\startTrillSpan { g16\stopTrillSpan( a) } |
    g4 r8 g,\p a b |
    c8 d e-flat e f f-sharp |
    g8 d' b g d' b |
    g4 r8 r4. |
    g,8 \pp d' b g d' b |
    g4 r8 r4. |
  }
}
