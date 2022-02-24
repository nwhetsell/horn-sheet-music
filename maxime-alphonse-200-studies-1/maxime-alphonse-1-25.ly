\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Moderato" 4.=69

  \key e \major
  \time 9/8

  #(define measures-one-to-six #{
    \relative {
      a'8-. g-sharp4-> f-sharp-> e8->~8 f-sharp-. g-sharp-. |
      b8-. 4-> a-> g-sharp8->~8 a-. b-. |
      d-sharp8-. 4-> c-sharp-> b8->~8 \< c-sharp-. d-sharp-. |
      f-sharp8-. 4-> e-> d-sharp8->~8 c-sharp4-> |
      b4-> a8->~8 g-sharp4-> f-sharp-> 8->~ |
      f-sharp8 g-sharp4-> 4-> 8->~8 f-sharp-. e-. |
    }
  #})

  \partial 4. { r8 b'-. a-. } |
  <<
    { \measures-one-to-six }
    {
      s1*9/8*2 |
      s2. s8 \breathe s4 |
      s8 \f
    }
  >>
  \stemUp b2. \sf \> r8 b-. \p a-. \stemNeutral |

  <<
    { \measures-one-to-six }
    {
      s1*9/8*3 |
      s8 \mf
    }
  >>
  e2.-> r4. | \bar "|."
}
