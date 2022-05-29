\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegretto" 4=104

  \key e-flat \major
  \time 3/4

  #(define measures-one-to-six #{
    \relative {
      b-flat'8-. r e-flat2 |
      e-flat,8-. r b-flat'2 \> \breathe |
      c8-. \! r a-flat-. r f-. r |
      d8-. r b-flat'-. r g-. r |
      e-flat8-. c4-> a-flat'8 f d |
      b-flat2. \> \breathe |
    }
  #})

  <<
    { \measures-one-to-six }
    {
      s4 \mf s2 \> |
      s8 \!
    }
  >>

  b-flat'8-. \! r e-flat2 \> |
  e-flat,8-. \! r b-flat'2 \> \breathe |
  e-flat8-. \! r c-. r a-. r |
  f8-. r d'-. r b-flat-. r |
  g8-. e-flat4-> c'8 a f |
  b-flat2. \> \breathe | \bar "||"

  \key g-flat \major % This is d-flat \major in printed editions.

  d-flat8-. \f r g-flat2 \> |
  g-flat,8-. \! r d-flat'2 \> \breathe |
  e-flat8-. \! r c-flat-. r a-flat-. r |
  f8-. r d-flat'-. r b-flat-. r |
  g-flat8-. e-flat4-> c-flat'8 a-flat f |
  d-flat2. \> \breathe |

  d-flat'8-. \! r g-flat2 \> |
  g-flat,8-. \! r d-flat'2 \> \breathe |
  g-flat8-. \! r e-flat-. r c-. r |
  a-flat8-. r f'-. r d-flat-. r |
  b-flat8-. g-flat4-> e-flat'8 c a-flat |
  d-flat2. \> \breathe |

  d-flat,8 \p \cresc r g-flat2 |
  e-flat8 r a-flat2 |
  f8 r b-flat2 |
  g-flat8 r c-flat2 |
  a-flat8 r d-flat2 \f |
  r4 d-flat,2 |
  R2. \bar "||"

  \key e-flat \major

  <<
    { \measures-one-to-six }
    { s4 \p s2-> | }
  >>

  b-flat'8-. \! r e-flat2-> |
  e-flat,8-. r b-flat'2-> \breathe |
  e-flat8-. \< r c-. r a-flat-. r
  d8-. r b-flat-. r g-. \! r |
  r4 r8 a-flat \f f d |
  e-flat2.( |
  e-flat'2.) | \bar "|."
}
