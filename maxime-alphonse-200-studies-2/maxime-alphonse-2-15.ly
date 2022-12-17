\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro moderato" 8=116

  \key c \major
  \time 2/8

  c''16 \mf b c d |
  c16 g e c |
  d'16 c d e |
  d16 b g d |
  e'16 d e f |
  e16 c g e |
  f16 g a b |
  c16 b d b |
  g8. r16 |
  c16 b c d |
  c16 g e c |
  d'16 c d e |
  d16 b g d |
  e'16 d e f |
  e16 c g e |
  f16 g a b |
  c16 e g e |
  c8. r16 | \bar "||"

  c8_\markup { \dynamic "mf" \italic "più leggiero" } c16 d |
  e-flat8 c16 d |
  e-flat16 c d b |
  c16 g a b |
  c8 c16 d |
  e-flat8 c16 d |
  e-flat16 c d b |
  c8. r16 |
  e-flat8 \f e-flat16 f |
  g8 e-flat16 f |
  g16 e-flat f d |
  e-flat16 b-flat c d |
  e-flat8 e-flat16 f |
  g8 e-flat16 f |
  g16 e-flat f d |
  e-flat8. r16 |
  <> \mf \repeat unfold 2 { d8 d16 c | }
  d16 f e-flat c |
  d16 c b c |
  \repeat unfold 2 { d8 d16 c | }
  d16 f e-flat c |
  d8. r16 |
  <> \p \repeat unfold 2 { d8 d16 c | }
  d16 f e-flat c |
  d16 c b c |
  \repeat unfold 2 { d8 d16 c | }
  d16 f e-flat c |
  c8. r16 |
  c8 \mf c16 d |
  e-flat8 c16 d |
  e-flat16 c d b |
  c16 g a-flat b |
  c8 c16 d |
  e-flat8 c16 d |
  e-flat16 c d b |
  c8. r16 | \bar "||"

  c16 \f b c d |
  c16 g e! c |
  d'16 c d e |
  d16 b g d |
  e'16 d e f |
  e16 c g e |
  f16 g a b |
  c16 b d b |
  g8. r16 |
  c16 b c d |
  c16 g e c |
  d'16 c d e |
  d16 b g d |
  e'16 d e f |
  e16 c g e |
  f16 g a b |
  c16 b d b |
  c8. r16 | \bar "|."
}
