\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro moderato" 4=108

  \key g \major
  \time 3/4

  #(define measures-one-to-six #{
    \relative {
      g'8-. \mf 4-> b-> g16 f-sharp |
      e8-. 4-> g-> e16 d |
      c8-. \< e4-> a-> c8->~ |
      c8 e4-> \> c4-> a16 g |
      g8-. f-sharp8->~8 a16 f-sharp d4 \! \breathe |

      g8-. 4-> b-> g16 f-sharp |
    }
  #})

  \measures-one-to-six
  e'8-. 4-> g-> e16 d |
  c-sharp8-. \< e4-> a-> c-sharp8->~ |
  c-sharp8 e4-> \> c-sharp4-> a16 g |
  g8-. f-sharp8->~8 e16 d d4 \! \breathe | \bar "||"

  \key b-flat \major
  b-flat'8-. \p 4-> d-> b-flat16 a |
  g8-. 4-> b-flat-> g16 f |
  e-flat8-. \< g4-> c-> e-flat8->~ |
  e-flat8 g4-> \> e-flat4-> c16 b-flat |
  b-flat8-. a8->~8 c16 a f4 \breathe |
  b-flat8-. \p 4-> d-> b-flat16 a |
  g8-. 4-> b-flat-> g16 f |
  e8-. \< g4-> c-> e8->~ |
  e8 g4-> \> e4-> c16 b-flat |
  b-flat8-. a8->~8 g16 f f4 \! \breathe | \bar "||"

  f8-. \p \cresc 4-> g-> f16 g |
  a8-. 4-> b-flat-> a16 b-flat |
  c8-. 4-> d-> c16 d |
  e-flat8-. 4-> f-> e-flat16 f |
  g8-. \ff e-flat4-> c-> \breathe d16 e-flat |
  f8-. d4-> b-flat-> \breathe c16 d |
  e-flat8-. c4-> a-> \breathe b-flat16 \> c |
  \stemUp d16 b-flat8 g16 c16 a8 f16 b-flat16 g8 e-flat16 \! \stemNeutral |
  c8-. d4-> e-flat-> f8->~ |
  f8 f-sharp4-> g-> r8 |
  c,8-. d4-> e-> f-sharp8->~ |
  f-sharp8 f-sharp4-> g-sharp-> r8 |
  a,8-. b4-> c-> d8->~ |
  d8 e-flat!4-> f!-> r8 |
  a,8-. b4-> c-> d8->~ |
  \tempo "Rall." d8 e4-> f-sharp-> r8\fermata | \bar "||"

  \key g \major
  \tempo "1º Tempo"
  \measures-one-to-six
  d8-. 4-> g-> d16 c |
  b8-. 4-> d-> b16 a |
  g8-. \breathe b4-> d-> g8->~ |
  g8 b4-> d-> b16 g |
  b8-. g8->~8 d16 b' g4 | \bar "|."
}
