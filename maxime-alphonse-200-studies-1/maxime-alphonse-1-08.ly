\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Andante"

  \key a-flat \major
  \time 2/4

  a-flat'8-. \f e-flat'4-> 8->~ |
  e-flat16 c d-flat b-flat c8 \> a-flat |
  a-flat8-. \! e-flat'4-> 8->~ |
  e-flat16 c d-flat b-flat c4 \> \breathe |

  a-flat8-. \mf e-flat4-> 8 |
  f16-> a-flat f a-flat e-flat4 |
  a-flat8-. e-flat4-> 8 |
  f16 a-flat f a-flat c4 \breathe |

  c8-. \f a-flat4-> 8 |
  b-flat16-> c b-flat c a-flat4 |
  c8-. a-flat4-> 8 |
  b-flat16 c a-flat c e-flat4 \breathe |

  a-flat,8-. \f e-flat'4-> 8->~ |
  e-flat16 c d-flat b-flat c8 \> a-flat |
  a-flat8-. \! e-flat'4-> 8->~ |
  <<
    {
      \tempo "Rall."
      \override Hairpin.minimum-length = #3
      e-flat16 c d-flat b-flat a-flat4 \>
      \revert Hairpin.minimum-length
    }
    { s4. s8 \! }
  >> | \bar "|."
}
