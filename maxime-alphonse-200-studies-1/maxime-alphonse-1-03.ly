\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Moderato" 4=100

  \key e-flat \major
  \time 2/4

  #(define measures-one-to-nine #{
    \relative {
      e-flat'4-> \f g-> |
      f4-> a-flat-> |
      g4-> b-flat-> |
      a-flat4-> c-> |
      b-flat4-> r8 b-flat-. |

      c8-. 8-. d-. 8-. |
      b-flat8-. 8-. r8 8-. |
      c8-. 8-. d-. 8-. |
      e-flat8-. 8-. r8 8-. |
    }
  #})

  \measures-one-to-nine
  d''8-. 8-. c-. 8-. |
  d8-. 8-. r8 8-. |
  c8-. b-flat-. c-. a-. |
  b-flat8-. 8-. r8 8-. \< |

  b-flat8-. 8-. c-. 8-. |
  a-flat8-. \mf \tweak minimum-length #8 \> 8-. r \! 8-. \< |
  a-flat8-. 8-. b-flat-. 8-. |
  g8-. \f \tweak minimum-length #6 \> 8-. r \! 8-. \< |
  g8-. 8-. a-flat-. 8-. |
  f8-. \mf \tweak minimum-length #8 \> 8-. r4 \! |

  <<
    { \measures-one-to-nine }
    {
      s2*4 |
      s4. s8 \p \cresc |
      s2*3 |
      s2 \f \dim |
    }
  >>
  d'8-. 8-. d-flat-. 8-. |
  c8-. 8-. r c-flat8-. |
  b-flat8-. 8-. a-flat-. 8-. |
  g8-. 8-. r g-flat8-. |
  f8-. 8-. e-flat-. d-. |
  e-flat8-. 8-. r8 8-. \mf |
  e-flat8-. 8-. f-. 8-. |
  g8-. 8-. r b-flat,-. |
  b-flat8-. 8-. 8-. 8-. |
  e-flat8-. 8-. r4 | \bar "|."
}
