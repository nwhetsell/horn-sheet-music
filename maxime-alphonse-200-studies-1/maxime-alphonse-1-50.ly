\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Molto moderato" 4=66

  \key d \major
  \time 2/4

  #(define measures-one-to-twelve #{
    \relative {
      a'8( d8.) r16 d8 |
      d8( c-sharp8.) r16 c-sharp8 |
      c-sharp8( d8.) r16 d8 |
      d8( a8.) r16 d8 |
      d-sharp8( e8.) r16 e8 |
      e8( g8.) r16 f-sharp8 |
      f-sharp8( e8.) r16 e8 |
      f-sharp8( d!8.) r16 f-sharp8 |
      f-sharp8( e8.) r16 d8 |
      d8( c-sharp8.) r16 c-sharp8 |
      c-sharp8( d8.) r16 d-sharp8 |
      d-sharp8( e8.) r16 e8 |
    }
  #})

  <<
    {
      \partial 8 { a'8 \mf } |
      \measures-one-to-twelve

      e'8( c-sharp8.) r16 a8 |
      a8( c-sharp8.) r16 d8 |
      d8( b8.) r16 g-sharp8 |
      g-sharp8( a8.) r16 a8 |

      \measures-one-to-twelve
      f-sharp'8( d!8.) r16 d8 |
      d-sharp8( e8.) r16 e8 |
      e8( c-sharp8.) r16 c-sharp8 |
      c-sharp8( d!8.) r16 r8 | \bar "|."
    }
    { \repeat unfold 32 { s8-. s-> s4 } }
  >>
}
