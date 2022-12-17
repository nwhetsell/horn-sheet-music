\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro molto"

  \key c \major
  \time 6/8

  \repeat volta 2 {
    c''8-._\markup { \dynamic "f" \italic "sempre staccato" } e-. g-. g,-. c-. e-. |
    e,8-. g-. c-. c,-. e-. g-. |
    g,8-. c-. e-. g-. e-. c-. |
    g8-. b-. d-. g4 r8 |
    d8-. \mf b g g' d b |
    b'8 \< g d d' b g \! |
    e'8 c a c a f-sharp |
    g8 \> b, d g,4 \! r8 |
    c'8 \f e g g, c e |
    e,8 g c c, e g |
    g,8 c e g e c |
    f8 d b g4 r8 |

    g8 \p b d b d g |
    d8 \< g b g b d |
    % The 1st edition has:
    % g8 \f c e c e g |
    % e8 g c g c e |

    c8 \f e g f d b |
    c8 \> g e c4 \! r8 |
  }
  \repeat volta 2 {
    f'8 \f d b d b g |
    f8 d b d b g |
    g''8 e c e c g |
    c8 g e g e c |
    g4 r8 b8 \mf d g |
    d8 g b g b d |
    g,,4 r8 c e g |
    e8 g c g c e |
    d8 b g e' c a |
    d8 b g c a f-sharp |
    g8 b d d, g b |
    b,8 d g g,4 r8 |
    c'8 \p e g g, c e |
    e,8 g c c, e g |
    g,8 c e g e c |
    f8 \> d b g4 \! r8 |

    g8 \mf b d b d g |
    d8 \< g b g b d |
    % The 1st edition has:
    % g8 c e c e g |
    % e8 g c g c e |

    c8 \f e g f d b |
    c8 g e c4 r8 |
  }
}
