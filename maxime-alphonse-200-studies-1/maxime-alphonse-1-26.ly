\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Andante" 4.=54

  \key a \major
  \time 6/8

  #(define measures-one-to-eight #{
    \relative {
      e'8 4 e'8 4 |
      a,8 4 b8 4 |
      e,8 4 e'8 4 |
      a,8 4 c-sharp8 4 \breathe |
      f-sharp,8 4 f-sharp'8 4 |
      b,8 4 c-sharp8 4 |
      f-sharp,8 4 f-sharp'8 4 |
      b,8 4 d8 4 \breathe |
    }
  #})

  <>_\markup { \dynamic "f" \italic "pesante" }
  <<
    { \measures-one-to-eight }
    {
      \repeat unfold 5 { s8-^ s4-> }
      s8_\markup { \italic "segue" }
    }
  >>
  d''8 4 g-sharp,8 4 |
  e'8 4 a,8 4 |
  c-sharp8 4 f-sharp,8 4 |
  d'8 4 g-sharp,8 4 \breathe |
  b8 4 e-sharp,8 4 |
  c-sharp'8 4 a8 4 |
  a8 4 d-sharp,8 4 |
  b'8 \> 4 e,8 4 \breathe | \bar "||"

  <> \mf
  \measures-one-to-eight
  c-sharp'8 4 a8 4 |
  e'8 4 e,8 4 |
  a8 4 e8 4 |
  c-sharp'8 4 c-sharp,8 4 |
  r8 c-sharp( d) f-sharp( e) r |
  r8 c-sharp( d) f-sharp-. e-. d-. |
  e4.-> r |

  e8-^ \f 4-> c-sharp8-^ 4-> |
  a'8-^ 4-> a,8-^ 4-> | \bar "|."
}
