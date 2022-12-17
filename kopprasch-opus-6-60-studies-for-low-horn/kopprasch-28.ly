\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Maestoso"

  \key c \minor
  \time 4/4

  \repeat volta 2 {
    c'8. \mf e-flat16 g8. e-flat16 c'8. g16 e-flat'8. c16 |
    b8. \< g16 b8. d16 f8. \> d16 b8. g16 \! |
    c8. g16 e-flat8. g16 c,8. e-flat16 g,8. c16 |
    b8. g'16 d8. b16 g4 r |
    c8. e-flat16 g8. e-flat16 c'8. g16 e-flat'8. c16 |
    d8. \< b-flat!16 d8. f16 a-flat8. \> f16 d8. b-flat16 \! |
    g8. e-flat'16 e-flat,8. \cresc e-flat'16 f,8. e-flat'16 g,8. e-flat'16 |
    a-flat,8. e-flat'16 a,8. e-flat'16 b-flat8. e-flat16 c-flat8. e-flat16 |
    b-flat8. \f e-flat16 g8. e-flat16 b-flat8. a-flat16 f8. d'16 |
    e-flat8. b-flat16 g8. b-flat16 e-flat,4 r |
  }
  \repeat volta 2 {
    g8. \p b-flat16 d-flat8. b-flat16 g8. e16 c'8. b-flat16 |
    a-flat8. \< f16 a-flat8. c16 f8. \> c16 a-flat8. f16 \! |
    a8. c16 e-flat8. c16 a8. f-sharp16 d'8. c16 |
    b-flat8. \< g16 b-flat8. d16 g8. d16 b-flat8. g16 |
    b8. \f d16 f8. e-flat16 d8. b16 g'8. f16 |
    e-flat8. \> c16 a-flat'8. g16 f-sharp8. d16 g8. f16 |
    e8. \p c16 f8. e-flat16 d8. b16 e-flat8. d16 |
    c8. \< g'16 g,8. g'16 b,8. \f g'16 g,8. f'16 |
    e-flat8. b16 c8. f-sharp,16 g8. g,16 c8. e-flat16 |
    g,8. g'16 d8. b16 g4 r |

    c8. \p e-flat16 g8. e-flat16 c'8. g16 e-flat'8. c16 |
    b8. \< g16 b8. d16 f8. \> d16 b8. g16 \! |
    c8. g16 e-flat8. g16 c,8. e-flat16 g,8. c16 |
    b8. g16 b8. d16 f8. d16 b8. g16 |
    c,4 \breathe c'8. \cresc c'16 d,8. c'16 e-flat,8. c'16 |
    f,8. c'16 f-sharp,8. c'16 g8. c16 a-flat8. c16 |
    g8. \f c16 e-flat8. c16 g'8. g,16 b8. g16 |
    c8. \> c,16 e-flat8. c16 g'8. \p g,16 b8. g16 |
    c8. e-flat16 g8. e-flat16 c4 r |
  }
}
