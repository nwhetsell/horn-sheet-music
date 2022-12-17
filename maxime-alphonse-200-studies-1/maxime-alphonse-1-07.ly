\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegretto" 4=104

  \key a \minor
  \time 4/4

  #(define measures-one-to-three #{
    \relative {
      a'8-! r8 8-! r8 8-! r r b16-. c-. |
      b8-! r8 8-! r8 8-! r r c16-. d-. |
      c8 8 b8 8 a8 8 g8 8 |
    }
  #})

  #(define measures-four-to-seven #{
    \relative {
      e'2. r4 |
      \measures-one-to-three
    }
  #})

  #(define measures-one-to-seven #{
    \relative {
      \measures-one-to-three
      \measures-four-to-seven
    }
  #})

  \repeat volta 2 {
    <>_\markup { \dynamic "mf" \italic "staccato" }
    \measures-one-to-seven
  }
  \alternative {
    { a'2. r4 | }
    { a2 r4 c8 \f d | }
  }

  #(define measures-ten-to-twelve #{
    \relative {
      e''4 \< 4 f-sharp \> e8 d |
      e8 c a4~8 \! r8 c d |
      e4 \< 4 4 f-sharp\sf |
    }
  #})

  \measures-ten-to-twelve
  e8 \> c a4~8 \! r8 c \mf d |
  \measures-ten-to-twelve
  e8 \> c a4~8 \! r8 c-. \f a-. |

  b8-. g-sharp-. e'4->~8 r c-. a-. |
  g-sharp8-. e-. e'4->~8 r c-. \p a-. |
  b8-. g-sharp-. e'4->~8 r c \p a |
  g-sharp8 e e'4->~8 r c \mf d |

  \measures-ten-to-twelve
  e8 \> c a4~4 \! r4 | \bar "||"

  a8-! \mf r8 8-! r8 8-! r r b16-. c-. |
  b8-! r8 8-! r8 8-! r r c16-. d-. |
  c8 8 b8 8 a8 8 g!8 8 |
  <<
    { \measures-four-to-seven }
    { s1*2 s2. s8 \tempo "Senza rallentando" }
  >>
  a2. r4 | \bar "|."
}
