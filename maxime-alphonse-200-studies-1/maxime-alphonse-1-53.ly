\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegretto" 4.=100

  \key a-flat \major
  \time 12/8

  #(define measures-one-to-two #{
    \relative {
      e-flat'8-.[ r a-flat8-.] 8-.[ r b-flat8-.] 8-.[ r c8-.] 8-.[ r e-flat-.] |
      e-flat8-.[ r f8-.] 8-.[ r e-flat8-.] 8-.[ r c8-.] 8-.[ r a-flat-.] |
    }
  #})

  \partial 8 { e-flat'8-. \p } |
  \measures-one-to-two
  e-flat4.->~8 g-. b-flat-. e-flat,4.-> r4 8-. |
  e-flat8-.[ r g8-.] 8-.[ r b-flat8-.] 8-.[ r d-flat8-.] 8-.[ r e-flat-.] |
  e-flat8-.[ r f8-.] 8-.[ r e-flat8-.] 8-.[ r d-flat8-.] 8-.[ r b-flat-.] |
  e-flat,4.->~8 g-. b-flat-. e-flat,4.-> r4 8-. \p \cresc |

  e-flat8-.[ r a-flat8-.] 8-.[ r f8-.] 8-.[ r b-flat8-.] 8-.[ r g-.] |
  g8-.[ r c8-.] 8-.[ r a-flat8-.] 8-.[ r d-flat8-.] 8-.[ r b-flat-.] |
  b-flat8-.[ r e-flat8-.] 8-.[ r c8-.] 8-.[ r f8-.] 8-.[ r d-flat-.] |
  d-flat8-.[ r g8-.] g2.->~ \ff 8 e-flat-. c-. |
  f4.->~ \> 8 d-flat-. b-flat-. e-flat4.->~8 c-. a-flat-. \! |
  d-flat-> b-flat-. g-. \repeat unfold 3 { e-flat-. g-. f-. } |
  e-flat4.->~8 d-. \< e-flat-. f-. e-flat-. f-. g-. f-. g-. |
  a-flat2. \> r4. \! r4 e-flat8-. \p |

  \measures-one-to-two
  e-flat2. r4. r4 a-flat,8-. \< |
  a-flat8-.[ r c8-.] 8-.[ r e-flat8-.] 8-.[ r a-flat8-.] 8-.[ r c-.] |
  c8-.[ \tweak to-barline ##f \> r e-flat8-.] 8-.[ r c8-.] 8-.[ r a-flat8-.] 8-.[ r e-flat-.] |
  a-flat2. \! r | \bar "|."
}
