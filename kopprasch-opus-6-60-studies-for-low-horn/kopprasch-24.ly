\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro risoluto"

  \key c \major
  \time 4/4

  \repeat volta 2 {
    c'16 \f c' b c a c g c f, c' e, c' d, c' c, c' |
    b,16 \p g c g d' g, e' g, f'4 r |
    b,16 \f d' c d b d a d g, d' f, d' e, d' d, d' |
    c,16 \p g d' g, e' g, f' g, g'4 r |
    c,16 \f e' d e c e b e a, e' g, e' f, e' e, e' |
    d,16\fz f' e f d f c f b, f' a, f' g, f' f, f' |

    e,16\fz g' e g f g d g e g c, g' d g b, g' |
    % The Gumpert edition has:
    % e,16\fz g' f g e g d g c, g' b, g' a, g' g, g' |

    c,8 \> e,16 g f g d g e g c, g' d g b, g' |
    c,8 \mf c'16 e a, e' f-sharp, e' b,8 g'16 d' a d b d |
    c,8 a'16 c g c f-sharp, c' e, c' d, c' e, c' f-sharp, c' |
    d,8 b'16 d c d a d b d g, d' a d f-sharp, d' |
    g,16 d' a d b d a d g,4 r |

    g,16 \f f'' e f d f c f b, f' a, f' g, f' a, f' |
    b,16 g c g d' g, e' g, f'4 r |
    e,16 g' f g e g d g c, g' b, g' a, g' b, g' |
    c,16 g d' g, e' g, f' g, g'4 r |
    e,16 \p e' c e d e b e c e a, e' b e g-sharp, e' |
    a,16 e g-sharp e a e b' e, c' e, d' e, e'4 |
    c,16 \mf c' a c b-flat c g c a c f, c' g c e, c' |
    f,16c e c f c g' c, a'8 c-sharp16 a d a e' a, |
    f'8 e16 g, d' g, c! g b4 r |
    c,16 \f c' b c a c g c f, c' e, c' d, c' c, c' |
    b,16 d' c d b d a d g, d' f, d' e, d' d, d' |
    c,16 e' d e c e b e a, e' g, e' f, e' e, e' |
    d,16 f' e f d f c f b,4 r |
    c,16 e' d e c e b e a,4 r |
    g16 \mf d' c d b d a d g,8 f16 g, e' g, d' g, |
    c8 e16 g f g d g e g c,
      e % The first edition has g here.
      d g b,
      d | % The first edition has g here.
    c8 e16 g, f' g, d' g, e' g, c g d' g, b g |
    c16 g'
      f % The 1st edition has d here.
      g e g d g c,4 r |
  }
}
