\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Moderato" 4=69

  \key b-flat \major
  \time 2/4

  #(define measures-one-to-seven #{
    \relative {
      \repeat unfold 2 {
        b-flat'16( f b-flat8~8) d-. |
      }
      \repeat unfold 2 {
        c16( f, c'8~8) e-flat-. |
      }
      \repeat unfold 2 {
        d16( b-flat d8~8) f-. |
      }
      e-flat16 d c b-flat a g f e-flat |
    }
  #})

  <<
    { \measures-one-to-seven }
    {
      s2 \f |
      s2*3 \breathe |
      s2*2 |
      s16 \>
    }
  >>
  d'16 \< e-flat f g f g a b-flat |
  c16 d e-flat d c \> b-flat a c |

  <<
    { \measures-one-to-seven }
    {
      s2 \p \breathe |
      s2*4 \breathe |
    }
  >>
  d,16 b-flat c d e-flat f g a |
  b-flat16 f d f b-flat4 | \bar "|."
}
