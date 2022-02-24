\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Andante" 4=88

  \key d-flat \major
  \time 3/4

  #(define measures-one-to-ten #{
    \relative {
      d-flat''4.->) r8 a-flat4( |
      e-flat'4.->) r8 a-flat,4( \tweak to-barline ##f \< |
      f'4 \> d-flat) \! r8. d-flat16-. |
      e-flat8.-. f16-. e-flat8.-. d-flat16-. c8.-. d-flat16-. |
      e-flat8.-. c16-. a-flat8-. r a-flat4( |
      d-flat4.->) r8 a-flat4( |
      e-flat'4.->) r8 a-flat,4( \tweak to-barline ##f \< |
      f'4 \> d-flat) \! r8. f16-. |
      e-flat8.-. f16-. g-flat8.-. e-flat16-. f8.-. d-flat16-. |
      e-flat8.-. c16-. d-flat8-. r
    }
  #})

  \partial 4 { a-flat'4( \mf } |
  \measures-one-to-ten a-flat4( \p |
  \measures-one-to-ten r4 |

  \repeat volta 2 {
    #(define measures-twenty-to-twenty-five #{
      \relative {
        a-flat'4.( \f f8 b-flat g-flat |
        a-flat8 f d-flat) r8 d-flat'4( \p |
        g-flat,4.->) r8 d-flat'4( |
        f,4.->) r8 d-flat'4( |
        e-flat,8.->) f16 e-flat8. d-flat16 c8. d-flat16 |
      }
    #})

    <>_\markup { \concat { \dynamic "p" " per la seconda volta" } }
    \measures-twenty-to-twenty-five
    e-flat8. c16 a-flat4 r |
    \measures-twenty-to-twenty-five
  }
  \alternative {
    { e-flat'8. c16 d-flat4. r8 | }
    { e-flat8. c16 d-flat8 r a-flat'4( \mf | \bar "||" }
  }

  \measures-one-to-ten r4 | \bar "|."
}
