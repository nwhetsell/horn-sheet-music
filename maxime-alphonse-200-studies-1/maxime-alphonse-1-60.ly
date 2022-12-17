\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Molto moderato" 4=69

  \key g \minor
  \time 4/4

  #(define measures-one-to-two #{
    \relative {
      <> \mf \repeat unfold 3 { g'8-> a16-! b-flat-! } c-! a-! f-sharp-! d-! |
      g16-! \< b-flat-! a-! c-! b-flat-! d-! c-! e-flat-! d2 \! \breathe |
    }
  #})

  \measures-one-to-two
  \repeat unfold 3 { g'8-> a16-! b-flat-! } c-! a-! f-sharp-! d-! |
  g2. r4 |

  <> \f \repeat unfold 3 { b-flat8-> c16-! d-! } e-flat-! c-! a-! f!-! |
  b-flat16-! \< d-! c-! e-flat-! d-! f-! e-flat-! g-! f2 \! \breathe |
  \repeat unfold 3 { b-flat,8-> c16-! d-! } e-flat-! c-! a-! f-! |
  b-flat2. r4 |
  c16-! \mf \> a-! f-sharp-! d-! g4~4 b-flat16-! g-! e-flat-! c-! |
  \tempo "Rall." d2 \< e4 f-sharp \breathe |

  \tempo "Tempo"
  \measures-one-to-two
  <> \f \tweak to-barline ##f \> \repeat unfold 4 { g8-> a16-! b-flat-! } |
  g2. \! r4 | \bar "|."
}
