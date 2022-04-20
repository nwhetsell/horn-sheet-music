\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Moderato" 4=66

  \key g \minor
  \time 2/4

  #(define measures-one-to-eight #{
    \relative {
      g'16 b-flat a g f-sharp g a f-sharp |
      g16 b-flat a g f-sharp a f-sharp d |
      <<
        { \repeat unfold 2 { g16[ b-flat d b-flat] g c e-flat c } }
        { s2 \f s16 \breathe s \p }
      >> |
      \stemDown
      <<
        { \repeat unfold 2 { g16 a c a g a d a } }
        { s2 \f s16 s \p }
      >> |<<
        { \repeat unfold 2 { g16 b-flat d g g, c e-flat g } }
        { s2 \f s \p }
      >> |
    }
  #})

  <<
    { \measures-one-to-eight }
    { s2 \f s16 s_\markup { \dynamic "p" \italic "subito" } }
  >>
  <<
    { \repeat unfold 2 { g'16[ g' f g] e-flat g d g } }
    { s16 \breathe s \f s4. s16 s \p }
  >> |
  g,16 f' \f e-flat f d f c f |
  f,16 f' \p e-flat f d f c f |
  f,16 e-flat' \f d e-flat c e-flat b-flat e-flat |
  e-flat,16 e-flat' \p d e-flat c e-flat b-flat e-flat |
  e-flat,16 d' \f c d b-flat d a d |
  d,16 d' \p c d b-flat d a d |
  <<
    { \repeat unfold 2 { d,16[ c' b-flat c] a c g c } }
    { s16 \breathe s \f s4. s16 s \p }
  >> |
  \stemNeutral
  <<
    { \repeat unfold 2 { d,16 b-flat' a b-flat g b-flat f-sharp b-flat } }
    { s16 s \f s4. s16 s \mf }
  >> |
  d,16[ \p \> \tweak Y-offset #4 \breathe a' g a] f-sharp a e-flat a |
  d,16 a' g a f-sharp a d, d' \! \tweak X-offset #0.75 \breathe |

  <<
    { \measures-one-to-eight }
    { s2 \f s16 s \p }
  >>
  g,16[ \ff \breathe g' e-flat c] g g' d b-flat |
  \stemNeutral
  g16 16 e-flat c g g' d b-flat |
  g2 | \bar "|."
}
