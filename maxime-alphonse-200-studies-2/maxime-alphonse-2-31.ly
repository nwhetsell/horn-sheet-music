\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Presto" 8=152

  \key b-flat \major
  \time 3/8

  #(define measures-three-to-sixteen #{
    \relative {
      b-flat'16-> c-. d-. r r8 |
      a16-> b-flat-. c-. r r8 |
      c16-> d-. e-flat-. r r8 |
      e-flat16-> f-. g-. r r8 |
      c,16-> d-. e-flat-. r r8 |
      b-flat16-> c-. d-. r r8 |
      d16-> e-flat-. f-. r r8 |
      d16-> c-. b-flat-. r r8 |
      b-flat16-> c-. d-. r r8 |
      b-flat16-> a-. g-. r r8 |
      c16-> e-flat-. g-. r r8 |
      b-flat,16-> d-. f-. r r8 |
      f,16-> a-. c-. r r8 |
      b-flat16-> f-. b-flat, r r8 |
    }
  #})

  b-flat'16-> \f c-. d-. r r8 |
  d16-> e-flat-. f-. r r8 |
  \measures-three-to-sixteen | \bar "||"

  d16-> \f d d e-flat d c |
  d8-> r c16 \p e-flat |
  g16-> r r8 f16 g |
  d16-> r r8 d16 e |
  f16-> r r8 e16 d |
  e16-> r r8 d16 c-sharp |
  b-flat!16-> r r8 a16 g |
  f16 g a f d r |
  d'16-> \f d d e-flat? d c |
  d8-> r c16 \p e-flat |
  g16-> r r8 f16 g |
  d16-> r r8 b-flat16 c |
  d16-> r r8 c16 b-flat |
  c16-> r r8 b-flat16 a |
  g16 r r8 f-sharp16 e |
  d16 e f-sharp d g r | \bar "||"

  b-flat16-> c-. d-. r r8 |
  d16-> e-flat?-. f-. r r8 |
  \measures-three-to-sixteen | \bar "|."
}
