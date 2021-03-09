\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Vivace"

  \key c \major
  \time 2/4

  \repeat volta 2 {
    \partial 8 { g'8 \f } |
    c16_\markup { \italic "sempre staccato" } g e' g, g' g, e' g, |
    f'16 g, d' g, e' g, c g |
    d'16 g, b g c g e' g, |
    b16 g d' g, f' g, r8 |

    c16 \p g e' g, g' g, e' g, |
    f'16 g, d' g, e' g, c g |
    d'16 g, f' g, d' g, b g |
    c16 g e' g, c8 g,8 \f |

    c16 g e' g, g' g, e' g, |
    f'16 g, d' g, e' g, c g |
    d'16 g, b g c g e' g, |
    b16 g d' g, f' g, r8 |

    c16 \p g e' g, g' g, e' g, |
    f'16 g, d' g, e' g, c g |
    d'16 g, f' g, d' g, b g |
    c16 g e' g, c8
  }
  \repeat volta 2 {
    c'8 \f |
    f16 c e c f c g' c, |
    a'16 c, g' c, f c e c |
    d16 g, c g d' g, b g |
    c16 g d' g, e'8 c, \p |

    f16 c e c f c g' c, |
    a'16 c, g' c, f c e c |
    d16 g, c g d' g, b g |
    c16 g e' g, c8 g' \f |

    c16 g e' g, g' g, e' g, |
    f'16 g, d' g, e' g, c g |
    d'16 g, c g d' g, b g |
    c16 g e' g, c8 g, \p |

    c16 g e' g, g' g, e' g, |
    f'16 g, d' g, e' g, c g |
    d'16 g, c g d' g, b g |
    c16 g e' g, c8
  }
}
