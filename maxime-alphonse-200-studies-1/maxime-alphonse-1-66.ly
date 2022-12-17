\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Moderato" 4=88

  \key b-flat \major
  \time 4/4

  b-flat'8. \mf f16 d f8. b-flat,4 r |
  f'8. d16 b-flat d8. f,4 r |
  b-flat16-> \cresc d8. c16 e-flat8. d16-> f8. e-flat16-> g8. |
  f16-> a8. g16-> b-flat8. a16-> c8. b-flat16-> d8. |
  f2( \> f,4) \! r |

  b-flat8. \f f16 d f8. b-flat,4 r |
  f'8. d16 b-flat d8. f,4 r |
  f16-> \cresc a8. g16-> b-flat8. a16-> c8. b-flat16-> d8. |
  c16 e-flat8. d16-> f8. e-flat16-> g8. f16-> a8. |
  b-flat2( \> b-flat,4) \! r | \bar "|."
}
