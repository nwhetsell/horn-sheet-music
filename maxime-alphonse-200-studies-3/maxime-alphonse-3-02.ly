\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegretto" 4.=88

  \key b-flat \major
  \time 6/8

  #(define measures-one-to-seven #{
    \relative {
      f''4-> d8 f,4 g8) |
      b-flat8.-> d16 f8-. d4 g8( |
      f4-> d8 b-flat4 g8) |
      d'8.-> c16 b-flat8-. f4 \breathe 8( |
      e-flat4-> g8 b-flat4 c8) |
      d8.-> c16 b-flat8-. c4 f,8( |
      e-flat4-> g8 b-flat4
    }
  #})

  \partial 8 { b-flat'8( \p } |
  \measures-one-to-seven c8) |
  d4.~8 r d \mf |

  d8.-> c16 b-flat8-. c4 d8-. |
  d8.-> c16 b-flat8-. a-flat4 d8-. |
  d8.-> c16 b-flat8-. c4 d8-. |
  d8.-> c16 b-flat8-. f'4 \breathe 8-. \f |
  f8.-> e-flat16 d-flat8-. e-flat4 f8-. |
  f8.-> e-flat16 d-flat8-. c-flat4 f8-. |
  f8.-> e-flat16 d-flat8-. e-flat4 f8-. |
  f8.-> e-flat16 d-flat8-. b-flat4 \breathe 8-. |
  a!8.-> g16 b-flat8-. d!4 b-flat8-. |
  a8.-> g16 b-flat8-. f4 b-flat8-. |
  a8.-> g16 b-flat8-. d4 8-. |
  g8.-> f16 d8-. 4( c8) |
  d4.~8 r b-flat( \mf |

  \measures-one-to-seven c8 |
  b-flat4.) \breathe 8 \> a g \! |

  f4( d8) r a' \p g |
  f4( d8) g f d |
  \tempo "Senza rallentare"
  b-flat4( \< d8 f4 g8 |
  b-flat4 d8 f4 g8 \! |
  f4.) r8 d-. \f g-. |
  f4-> r8 b-flat,-. \p f-. d-. |
  b-flat2. | \bar "|."
}
