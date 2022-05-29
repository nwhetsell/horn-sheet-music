\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Molto moderato" 4=58

  \key b-flat \major
  \time 2/4

  #(define measures-one-to-four #{
    \relative {
      b-flat'16[ f d f] b-flat, f' b-flat f |
      d'16 b-flat f b-flat d, b-flat' d b-flat |
      f'16 d b-flat d e-flat c a c |
      d16 b-flat g b-flat c a f a |
    }
  #})

  <<
    { \measures-one-to-four }
    {
      s16-_ \p \repeat unfold 7 { s16-_ } |
      s16_\markup { \italic "segue" }
    }
  >>
  b-flat'16 \< g c a d b-flat e c |
  f16 \> e-flat! d c b-flat a g f |

  <<
    { \measures-one-to-four }
    { s16 \p \tweak Y-offset #3.75 \breathe }
  >>
  b-flat16 g e-flat g a f d f |
  g16 \< f e-flat d e-flat f g a |
  a4( \> b-flat) \! | \bar "|."
}
