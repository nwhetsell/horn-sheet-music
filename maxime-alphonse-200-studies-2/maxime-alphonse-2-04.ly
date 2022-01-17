\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Moderato" 4=96

  \key b-flat \major
  \time 3/4

  #(define measures-one-to-four #{
    \relative {
      d''4 e-flat8 d c b-flat |
      c4-> f,4.-- d'8-. |
      c4-> f,4.-- c'8-. |
      b-flat8 \< d f g \tweak to-barline ##f \> f d |
    }
  #})

  #(define measures-one-to-ten #{
    \relative {
      \measures-one-to-four
      c''2 \! \breathe b-flat8 c |
      \measures-one-to-four
      b-flat2 \!
    }
  #})

  \partial 4 { b-flat'8 \p c } |
  \measures-one-to-ten \breathe d8 \f 8 |

  #(define measures-eleven-to-thirteen #{
    \relative {
      d''8 a a4 b-flat8 c |
      d8 \< e-flat f g \> f e-flat \! |
      d8.-> a16-. d4.-> c8-. |
    }
  #})

  \measures-eleven-to-thirteen
  d8.-> b-flat16-. d4.-> a8-. |
  d2-> \breathe d8 \mf 8 |
  \measures-eleven-to-thirteen
  d8.-> b-flat16-. d4.-> g,8-. |
  d'2-> \breathe b-flat8 \p c |

  \measures-one-to-ten r4 | \bar "|."
}
