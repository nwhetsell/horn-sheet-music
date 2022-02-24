\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Moderato" 4=76

  \key a \minor
  \time 4/4

  #(define measures-one-to-two #{
    \relative {
      a'8 \mf \< b c d e f e \> d |
      c8 a b g-sharp a4 \! r8 c16-. \p a-. |
    }
  #})

  #(define measures-three-to-four #{
    \relative {
      g-sharp'8-. e4-> a8-. g-sharp8-. e4-> c'16-. a-. |
      g-sharp8-. e4-> a16-. c-. b4.-> r8 |
    }
  #})

  \measures-one-to-two
  \measures-three-to-four
  \measures-one-to-two
  b'8-. g!4-> c8-. b8-. g4-> c16-. \< a-. |
  b8-. g4-> c16-. e-. d4.-> \! r8 |

  f8. \f e16 d8 b e8. d16 c8 a |
  d8. c16 b8 a b4 r |
  d8. \mf c16 b8 \> g-sharp c8. b16 a8 f! |
  b8. a16 g-sharp8 f-sharp g-sharp4 \! r |

  a8-> \p \< b16-. 16-. c8-> d16-. 16-. e8-> f16-. 16-. e8-> \> d16-. 16-. |
  c8-> a16-. 16-. b8-> g-sharp16-. 16-. a4 \! r8 c16-. a-. |
  \measures-three-to-four
  a16-> 16-. b8-. c16-> 16-. d8-. e16-> 16-. f8-. e16-> 16-. d8-. |
  c16-> 16-. a8-. b16-> 16-. g-sharp8-. a4 \! r8 c16-. a-. |
  g-sharp8-. e4-> a8-. g-sharp8-. e4-> \tempo "Rall." c'16-. \< a-. |
  e'8-. e4-> e16-. c-. a4.-> \f r8 | \bar "|."
}
