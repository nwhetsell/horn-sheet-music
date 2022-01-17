\version "2.22.0"

\relative c'' {
  \language "english"

  \transposition f

  \tempo \markup {
    \concat {
      \bold "Allegro"
      " ("
      \smaller \general-align #Y #DOWN \note {4} #1
      " = 120 a 152)"
    }
  }

  \key a \major
  \time 4/4

  #(define measures-one-to-twelve #{
    \relative {
      r8 c-sharp'' \mf 4:8 4:8 8 b |
      r8 a a4:8 4:8 8 b |
      r8 c-sharp c-sharp4:8 4:8 8 e |
      \repeat unfold 2 { r8 d d4:8 4:8 c-sharp8 b | }
      r8 b b4:8 4:8 8 c-sharp |
      r8 d d4:8 4:8 8 f-sharp |
      r8 e e4:8 4:8 d8 c-sharp |
      r8 e e4:8 4:8 f-sharp8 c-sharp |
      r8 d d4:8 4:8 e8 b |
      r8 c-sharp c-sharp4:8 4:8 d8 c-sharp |
    }
  #})

  \measures-one-to-twelve
  r8 b b4:8 4:8 8 a |
  e'4 r8 e, \< f-sharp g-sharp a b \! |

  \measures-one-to-twelve
  r8 b b4:8 4:8 a8 g-sharp |
  b2( a4) r | \bar "|."
}
