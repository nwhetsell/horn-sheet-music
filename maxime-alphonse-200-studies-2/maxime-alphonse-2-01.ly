\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro" 4=132

  \key c \major
  \time 4/4

  #(define first-nine-measures #{
    \relative {
      c'4 \p \< d8 e f g a b |
      c8 e \> d c b a g f |
      e4 \< f8 g a b c d |
      e8 g \> f e d c b a |
      g4 \< \breathe a8 b c d e c |
      f4 \> e8 d c b a g |
      f4 \< g8 a b c d b |
      e4 \> d8 c b a g f |
      e4 \< \breathe f8 g a b c a |
    }
  #})

  \first-nine-measures
  d''4 \> c8 b a g f-sharp a \! |
  g4 b8 d b g d b |
  g2 r |

  g'8 \f b d b g b d b |
  c4 e8 c g4 e8 c |
  g'8_\markup { \dynamic "p" \italic "subito" } b d b g b d b |
  c4 c,8 e g4 c8 e |
  g2 r4 g4-! \f |
  g8-> f e d c b a g |
  f8 a c a f' r f4-! |
  f8-> e d c b a g f |
  e8 g c g e' r \breathe e4-! |
  e8-> d c b a g f e |
  d8-> g b g d'-. r d-. r |
  e,8-> g c g e'-. r e-. r |
  f,8-> a c a f'-. r f-. r \breathe |

  g,8-> \f c e c g' e c e |
  g,8-> b d b g' d b d |
  c8-> e c g b-> d b g |
  c8->_\markup { \dynamic "p" \italic "subito" } e c g b-> d b g |
  c4-> \f b8 a g f e d |
  c2 r |

  \first-nine-measures
  d'4 \> c8 b a g f e |
  d4 \< e8 f g a b g |
  c4 \f c,8 e g4 e8 g |
  c2 r | \bar "|."
}
