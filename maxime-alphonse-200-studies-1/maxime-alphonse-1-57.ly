\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Moderato" 4=88

  \key b-flat \major
  \time 4/4

  \override Hairpin.minimum-length = #7
  f'4( \mf \< d d'2) \f \> |
  b-flat4( \< f f'2) \f \> |
  \revert Hairpin.minimum-length

  r8 \! f \mf e-flat d c b-flat a g |
  f16 \< g8-> a16->~16 b-flat8-> c16->~16 d8-> e-flat16->~16 f8-> g16->~ |
  g4. \breathe e-flat8 \f c d e-flat c |
  f4.-> d8 b-flat c d b-flat |
  e-flat8-> c a f e-flat c a c |
  e-flat8-- \tempo "Rall." e-- f-- f-sharp-- g-- g-sharp-- a4-- \breathe |

  \tempo "1º Tempo"
  b-flat,8 \p c d e-flat f g a b-flat |
  d,8 e-flat f g a b-flat c d |
  f,8 g a b-flat c d e-flat f |
  e-flat8 d c b-flat a g f e-flat |
  d'8 c b-flat a g f e-flat d |
  c'8 b-flat a g f e-flat d c |
  b-flat2. r4 |

  \override Hairpin.minimum-length = #8
  f'4( \mf \< d d'2) \f \> |
  \revert Hairpin.minimum-length
  f4( \> f, b-flat2\fermata) \! | \bar "|."
}
