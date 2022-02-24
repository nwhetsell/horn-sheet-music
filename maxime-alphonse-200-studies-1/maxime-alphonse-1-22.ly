\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro" 4=120

  \key g \major
  \time 3/4

  g'8->( d) g( b) a-. f-sharp-. |
  g8->( d) g( b) a-. c-. |
  b8->( g) b( d) c-. a-. |
  b8->( g) b( d) c-. e-. |

  d4-> r8 e-. d-. c-. |
  d4-> r8 c-. b-. a-. |
  b4-> r8 a-. g-. f-sharp-. |
  g4-> r8 f-sharp-. e-. d-. |

  e8->( \cresc a) g( f-sharp) g e |
  f-sharp8->( b) a( g) a f-sharp |
  g8->( c) b( a) b g |
  d'4 \f d, r |

  g8 \p d( g b) a f-sharp |
  g8 d( g b) a c |
  b8 g( b d) c a |
  b8 g( b d) c e |

  d4 r8 g-. \mf f-sharp-. e-. |
  f-sharp4-> r8 e-. d-. c-. |
  d4-> r8 c-. b-. a-. |
  b4-> r8 a-. g-. f-sharp-. |

  g8->( d g b) d-. b-. |
  c8->( a f-sharp d) e-. f-sharp-. |
  g8->( d g b) d-. b-. |
  <<
    { g2. \> }
    { s2 s4 \! }
  >> | \bar "|."
}
