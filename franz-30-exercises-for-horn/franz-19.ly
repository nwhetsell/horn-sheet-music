\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Very slowly"

  \key c \major
  \time 3/4

  \repeat volta 2 {
    \partial 8 g'8 \f |
    c2~( 16 a) g-. e-. |
    c2 \breathe r8 8 \p |
    b2~( 16 d) g-. b-. |
    d2 \breathe r8 g, \f |
    d'2~( 16 b) g-. f-sharp-. |
    f!2 \breathe r8 b, \p |
    c2~( 16 e) g-. c-. |
    e2 \breathe r8 c \f |
    g'2~( 16 e) c-. b-. |
    b-flat2 \breathe r8 g-sharp \p \< |
    a2~( 16 b-flat b c) |
    f2 \breathe c4 \mf |
    b2~( 16 c) d-. e-. |
    f4. \f d8-.\noBeam( a-. b-.) |
    d4~( 16 c b c) e( c) g-. e-. |
  }
  \alternative {
    { c2 r8 }
    { c2 r8 c' \mf | }
  }
  \repeat volta 2 {
    g'2~( 16 e) c-. g-. |
    g4. \breathe g8\noBeam( c e) |
    f2~( 16 d) a-. f-. |
    d4. \breathe f8\noBeam( a d) |
    f2~( 16 d) b-. g-. |
    f4. \breathe a8\noBeam( g d-sharp) |
    e2~( 16 f f-sharp g) |
    c2 \breathe r8 d-sharp \f |

    e2~( 16 b) g-sharp-. e-. |
    b8[ \< \tweak Y-offset #3.25 \breathe e( g-sharp b d f)] |
    e2~( \! 16 \> c) a-. e-. |
    c8[ \< \tweak Y-offset #3.25 \breathe e( a c e e-flat)] |
    d2~( \! 16 \> c) a-. f-sharp-. |
    d8[ \< \tweak Y-offset #3.5 \breathe f-sharp( a c e e-flat)] |
    d2~( \! 16 \> b) g-. d-. |
    b8[ \< \tweak Y-offset #2.5 \breathe d( f-sharp g a-sharp b)] |
    c2~( \! 16 \> a) e-. c-. |
    a8[ \< \tweak Y-offset #3 \breathe c( e a c a-sharp)] |
    b2~( \! 16 \> g) d-. b-. |
    g8[ \< \tweak Y-offset #2.5 \breathe b( d f-sharp g b)] |

    a4~ \f 16[ \breathe e'( d-sharp e] f-sharp e) c-. a-. |
    g4~16[ \breathe d'( c-sharp d] e d) b-. g-. |
    f-sharp4~16[ \tweak Y-offset #1 \breathe c'( b c] d c) e,-. f-sharp-. |
    g8[( \> g' f! d a) \breathe b-.] \f |

    c4~( 16 a g f-sharp g e) c-. a-. |
    g2 \breathe r8 c \p |
    b4~( 16 g) b-. d-. g( b) d-. c-. |
    b2 \breathe r8 g \f |
    f'4. d16-. b-. g( f) d-. b-. |
    g2 \breathe r8 f' \p |
    e4~( 16 c) e-. g-. c( d) e-. f-. |
    g2 \breathe r8 c, \f |
    g'8.( e16) c( b-flat) g-. e-. c( b-flat) g-. e-. |
    c8[ \tweak Y-offset #4 \breathe b-flat''( a g] c8.)[ \tweak Y-offset #3.75 \breathe g-sharp16] |
    a4~( 16 f) g-. a-. b-flat( c) d-. e-. |
    f4. \breathe g8\noBeam( f e) |
    d4~( 16 c) b-. a-. g( f) d-. b-. |
    g4~16[ \breathe b d-. f-.] a( a-flat g) b, |
    c4~16[ \breathe 16( b c)] e( c) e-. g-. |
  }
  \alternative {
    { c2 r8 8 \mf | }
    { c2 r8 \bar "|." }
  }
}
