\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegretto" 4=84

  \key a \major
  \time 2/4

  #(define measures-one-to-six #{
    \relative {
      r16 a'-. b-. c-sharp-. e-. f-sharp-. e-. d-. |
      c-sharp16-. b-. a-. g-sharp-. a-. c-sharp-. e,-. r |
      r16 f-sharp-. g-sharp-. a-. c-sharp-. d-. c-sharp-. b-. |
      a16-. g-sharp-. f-sharp-. e-sharp-. f-sharp-. a-. c-sharp,-. r |
      r16 d-. e!-. f-sharp-. a4 |
      r16 d,-. e-. f-sharp-. b4 |
    }
  #})

  <<
    { \measures-one-to-six }
    {
      s16 s \mf s8 s4 |
      s2*3 |
      s8. s16 \> s4 |
      s16 \! s8 s16 \> s4 |
    }
  >>

  r16 \! d'16-. f-sharp-. b-. d-. b-. f-sharp-. d-. |
  f-sharp'16-> d-. b-. f-sharp-. d'-. b-. f-sharp-. r |
  r16 d16-. f-sharp-. g-sharp-. b-. g-sharp-. f-sharp-. d-. |
  d'16-> b-. g-sharp-. f-sharp-. b-. g-sharp-. f-sharp-. r |
  r16 e-. f-sharp-. g-sharp-. b-. g-sharp-. f-sharp-. e-. |
  r16 e-. f-sharp-. g-sharp-. c-sharp-. g-sharp-. f-sharp-. e-. |
  r16 e-. f-sharp-. g-sharp-. a-. b-. c-sharp-. d-. \> |
  e2 |

  <<
    { \measures-one-to-six }
    { s16 \! s \f s8 s4 | }
  >>

  r16 f-sharp,-. \< b-. d-. f-sharp-. d-. b-. g-sharp-. |
  g-sharp'16-. \ff \> f-sharp-. d-. b-. f-sharp'-. d-. b-. \! r |
  r16 f-sharp-. \dim g-sharp-. b-. d-. b-. g-sharp-. f-sharp-. |
  f-sharp'16-> d-. b-. g-sharp-. d'-. b-. f-sharp-. r |
  r16 e-. f-sharp-. g-sharp-. c-sharp-. g-sharp-. f-sharp-. e-. |
  r16 c-sharp-. d-. e-. a-. f-sharp-. e-. c-sharp-. |
  r16 a-. \p \< b-. c-sharp-. d-. e-. f-sharp-. g-sharp-. |
  <<
    { a2 }
    {
      \override Hairpin.minimum-length = #4
      s4 \> s \!
      \revert Hairpin.minimum-length
    }
  >> | \bar "|."
}
