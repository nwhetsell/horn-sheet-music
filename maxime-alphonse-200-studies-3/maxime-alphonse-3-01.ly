\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro moderato" 4=112-116

  \key g \major
  \time 3/4

  #(define measures-one-to-three #{
    \relative {
      g'4 g,4. b8 |
      d8 g b d c f-sharp, |
      g4 g,4. b8 |
    }
  #})

  <> \f
  \measures-one-to-three
  d'8 g b d c a |
  b4.-> d8 g4 \breathe |
  a,4.-> c8 g'4 |
  g,4.-> b8 d4 |
  f-sharp,4.-> a8 d4 |

  r8 d,8-. \mf f-sharp-. a-. d-. f-sharp-. |
  r8 d,8-. g-. b-. d-. g-. |
  r8 g,16 f-sharp e8 a f-sharp d' |
  r8 g,16 f-sharp e8 a d,4 |

  r8 e'16-. d-. e8-. c4-> d8-. |
  e16-> f-sharp-. e-. d-. c-. d-. e-. f-sharp-. e8 c16 \< d |
  e16 f-sharp \> e d c b a g f-sharp e d c \! |
  r8 d'16-. c-. d8-. b4-> c8-. |
  d16-> e-. d-. c-. b-. c-. d-. e-. d8 b16 \< c |
  d16 e \> d c b a g f-sharp e d c b \! |

  r8 b16-. \cresc d-. g-.[ r d-. g-.] b-.[ r g-. b-.] |
  d16-> e d c-sharp d4~16 e \> d b |
  g16 e d8 \! r16 g, \p \cresc a b c d e f-sharp |
  g16 b, c d e f-sharp g a b d, e f-sharp |
  g16 a b c d g, a b c d e f-sharp |
  g4 \f g,4. b8 |
  \tempo "Rall." \afterGrace a2.\trill( { g16 a) }

  \tempo "Tempo"
  <<
    { \measures-one-to-three }
    { s4 s4. \breathe }
  >>
  d,8 g b g b d |
  g2 r4 | \bar "|."
}
