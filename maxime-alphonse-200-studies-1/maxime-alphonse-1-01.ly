\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro moderato" 4=104

  \key c \major
  \time 4/4

  #(define measures-one-to-seven #{
    \relative {
      c'4-> \f e-> g-> r |
      c,8-. d-. e-. f-. g4 r |
      f4-> a-> c-> r |
      f,8-. g-. a-. b-. c4 r |
      b4.-> g8-. c4.-> g8-. |
      b4.-> g8-. c-. g-. e-. c-. |
      g'2-> r |
    }
  #})

  \measures-one-to-seven
  b'4.-> \p g8-. c4.-> g8-. |
  b4.-> g8-. c-. g-. e-flat-. c-. |
  g'2-> r8 g,8 \< a b |

  \measures-one-to-seven
  a'4.-> \mf f8-. d4.-> f8-. |
  g4.-> e8-. f-. d-. c-. b-. |
  b2( \> c4) \! r | \bar "|."
}
