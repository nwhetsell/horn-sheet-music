\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Scherzo" 4.=132

  \key c \major
  \time 3/8

  #(define first-twenty-measures #{
    \relative {
      c''8-. r c-. |
      e8-. r e-. |
      g8-. r g-. |
      e8-. r e-. |
      c8-. r c-. |
      a4.-> |
      r4 e8-. |
      a8-. r a-. |
      c8-. r c-. |
      e8-. r e-. |
      c8-. r c-. |
      a8-. r a-. |
      f4.-> |
      r4 g8-. \p \cresc |
      a8-. r g-. |
      g8-. r g-. |
      b8-. r g-. |
      g8-. r g-. |
      c8-. r g-. |
      g8-. r g'-. \f |
    }
  #})

  \partial 8 { g'8-. \p } |
  \first-twenty-measures
  g'8-. \decresc r g-. |
  f-sharp8-. r f-. |
  f8-. r f-. |
  e8-. r e-flat-. |
  e-flat-. r e-flat |
  d4.-> |
  r4 g,8-. \p |

  \first-twenty-measures
  g'8-. r g-. |
  f8-. r f-. |
  d8-. r d-. |
  b8-. r b-. |
  g8-. r g-. |
  c4.-> | \bar "|."
}
