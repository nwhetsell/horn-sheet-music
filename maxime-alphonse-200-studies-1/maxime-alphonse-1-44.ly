\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Molto moderato" 4=72

  \key f \major
  \time 2/4

  #(define measures-one-to-four #{
    \relative {
      c''16-! a16-. 16-. 16-. f4 |
      f'16-! d16-. 16-. 16-. c4 \breathe |
      c16-! a16-. 16-. 16-. f-! d-. 16-. 16-. |
      c16-! d16-. 16-. 16-. f-! a-. 16-. 16-. |
    }
  #})

  <>_\markup { \dynamic "p" \italic "staccato" }
  \measures-one-to-four
  c''8.-> g16 c4~ |
  c8[ \tweak Y-offset #3.75 \breathe g16 16] c8 d |
  c8.-> a16 c4~ |
  c8 a-flat16 16 c8 d |
  c8.->( d16) b-flat8.->( c16) |
  a!8.->( b-flat16) g8.->( a16) |
  f4 r |

  e'16-! \mf c16-. 16-. 16-. a4 |
  c16-! f16-. 16-. 16-. e4 \breathe |
  e16-! c16-. 16-. 16-. a-! f-. 16-. 16-. |
  e16-! f16-. 16-. 16-. a-! c-. 16-. 16-. |
  e8.-> b16 e4~ |
  e8[ \breathe b16 16] e8 f |
  e8.-> c16 e4~ |
  e8 c16 16 e8 f |
  e8.->( f16) d8.->( e16) |
  c8.->( d16) b8.->( c16) |
  a4 r | \bar "||"

  a16-! \p g16-. 16-. 16-. f4~ |
  f16 e16-. 16-. 16-. d4~ |
  d16 e16-. 16-. 16-. f16-. g16-. 16-. 16-. |
  a16-. b16-. 16-. 16-. a4 \breathe |
  a16-! g16-. 16-. 16-. f4~ |
  f16 e16-. 16-. 16-. d4~ |
  d16 e16-. \< 16-. 16-. f16-. g16-. 16-. 16-. |
  a16-. b16-. 16-. 16-. c4 \! \breathe |

  c16-! \mf b-flat!16-. 16-. 16-. a-flat4~ |
  a-flat16 g16-. 16-. 16-. f4~ |
  f16 g16-. 16-. 16-. a-flat16-. b-flat16-. 16-. 16-. |
  c16-. d16-. 16-. 16-. c4 \breathe |
  c16-! b-flat16-. 16-. 16-. a-flat4~ |
  a-flat16 g16-. 16-. 16-. f4~ \< |
  f16 g16-. 16-. 16-. a-flat16-. b-flat16-. 16-. 16-. |
  c16-. d16-. 16-. 16-. e-flat4 \! \breathe |

  e-flat16-> \f f-. e-flat8~16 f-. e-flat-. f-. |
  e-flat16-> f-. e-flat8~8 e-flat,-. \breathe |
  c'16-> \mf d-. c8~16 d-. c-. d-. |
  c16-> d-. c8~8 c,-. \breathe |
  c'16-> \p d-. \tempo "Senza rall." c8~16 c-. b-flat-. c-. |
  a16-. b-flat-. g-. a-. f4 \breathe | \bar "||"

  <> \pp
  \measures-one-to-four
  c'8.->( d16) c4 |
  r16 f-. \p \tweak to-barline ##f \< e-. d-. c-. b-flat-. a-. g-. |
  f4 \! r | \bar "|."
}
