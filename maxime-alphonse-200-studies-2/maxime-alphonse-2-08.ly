\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Valzando"

  \key c \major
  \time 3/4

  #(define measures-one-to-sixteen #{
    \relative {
      r4 c'' c |
      r4 d d |
      r4 e e |
      r4 f f |
      r4 e e |
      r4 d d |
      r4 c-sharp c-sharp |
      d2.-> |
      r4 d d |
      r4 e e |
      r4 g g |
      r4 f f |
      r4 e e |
      r4 d d |
      r4 c b |
      c2.-> |
    }
  #})

  <<
    { \measures-one-to-sixteen }
    { s4 <> \mf }
  >>

  r4 e'' \f e |
  r4 c c |
  r4 a f |
  r4 f-sharp f-sharp |
  r4 d' d |
  r4 c c |
  r4 b a |
  b2.-> |
  r4 g g |
  r4 b b |
  r4 a a |
  r4 e' e |
  r4 c c |
  r4 a a |
  r4 c f-sharp, |
  g2.-> |

  <<
    { \measures-one-to-sixteen }
    { s4 <> \p }
  >> \bar "|."
}
