\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Moderato" 2.=69

  \key b-flat \major
  \time 6/4

  #(define first-four-measures #{
    \relative {
      f'4.-> \mf b-flat8 d4 4.-> c8 b-flat4 |
      b-flat4.-> d8 f4 2 r4 |
      f4-> d4.-^ b-flat8 f2. |
      f'4-> c4.-^ a8 f2. \breathe |
    }
  #})

  \first-four-measures
  e-flat''4-> c4.-^ a8 f4.-> e8 e-flat4 |
  d2 f4-. b-flat,2 r4 |

  d'2-> \mf e-flat4 d4.-> e-flat8 d4 |
  d4 c b-flat c2 d4 |
  c4.-> b-flat8 a4 g a b-flat |
  c4.-> d8 c4 f2 c4-. |
  c4.-> d8 c4 b-flat a b-flat |
  c2 f,4-. f2 r4 |

  e-flat'2-> \f f4 e-flat4.-> f8 e-flat4 |
  e-flat4 d c d2 e-flat4 |
  d4.-> c8 b-flat4 a b-flat c |
  d4.-> e-flat8 d4 g2 d4-. |
  d4.-> e-flat8 d4 c b-flat c |
  d2 a4-. a2 r4 |

  f'2( \ff c4) f2 r4 |
  c2( \p f,4) c'2 r4 |
  c2( \f \> f,4) \! f'4.-> e-flat8 c4 |
  b-flat2. r |

  \first-four-measures
  e-flat4-> c4.-^ a8 f4. e-flat8 c4 |
  b-flat2-> b-flat'4-. b-flat2 r4 | \bar "|."
}
