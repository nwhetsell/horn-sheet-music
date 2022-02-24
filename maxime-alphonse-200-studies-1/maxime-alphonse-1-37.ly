\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Moderato" 4.=69

  \key g \minor
  \time 6/8

  g'8_\markup { \dynamic "mf" \italic "staccato" } b-flat d g, b-flat d |
  c8 e-flat d c b-flat a |
  g8 b-flat d g, b-flat d |
  c8 \< e-flat \> d c b-flat a \! \breathe |
  b-flat8 d f b-flat, d f |
  e-flat8 g f e-flat d c |
  b-flat8 d f b-flat, d f |
  e-flat8 \< g-flat \> f e-flat d? c \! |
  b-flat8 \> f d b-flat4. \! |

  r8 g-flat' \> e-flat b-flat4. \! |
  r8 f' \> d b-flat4. \! |
  r8 g-flat' \p \cresc e-flat b-flat f' d |
  b-flat8 g-flat' e-flat b-flat f' d |
  b-flat8[ \breathe f' d] d b-flat' f |
  f8 d' b-flat b-flat f' d |
  b-flat8 \f f' d b-flat4. |
  \tempo "Rall." r8 a-flat g \> b-flat a-flat f \breathe |

  \tempo "Tempo"
  <> \p
  \repeat unfold 2 {
    e-flat8 g b-flat e-flat, g b-flat |
    \stemUp a-flat8 \< c \> b-flat a-flat g f \! \stemNeutral |
  } \breathe
  g8 b-flat d g, b-flat d |
  c8 e-flat d c b-flat a! |
  g8 b-flat d g, b-flat d |
  c8 \< e-flat \> d c b-flat a \! |
  r8 g \f \> d b-flat4. \! |
  r8 b-flat' \> g d4. \! |
  r8 d'8 \< b-flat g d' b-flat |
  g8 \f b-flat d g, b-flat d |
  c8 e-flat d c b-flat a |
  g8 e-flat d c b-flat a |
  g2. | \bar "|."
}
