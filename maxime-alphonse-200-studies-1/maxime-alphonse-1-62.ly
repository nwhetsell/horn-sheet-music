\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Lento" 4=50

  \key b \minor
  \time 4/4

  d'2( \p \< f-sharp~ \> |
  4) \! e8 d c-sharp4. r8 |
  c-sharp2( \< e~ \> |
  4) \! d8 c-sharp b4. r8 |
  d'2( \< g-sharp,) \> \breathe |
  c-sharp2( \< f-sharp,) \> | \bar "||"

  f-sharp2( \mf \< a~ \> |
  4) \! g-sharp8 f-sharp e-sharp4. r8 |
  e-sharp2( \< g-sharp~ \> |
  4) \! f-sharp8 e-sharp f-sharp4. r8 |
  d'2( \< g-sharp,) \> \breathe |
  e'!2( \< a,) \> | \bar "||"

  a2( \< c-sharp~ \> |
  4) \! b8 a g-sharp4. r8 |
  g-sharp2( \< b~ \> |
  4) \! a8 g-sharp f-sharp4. r8 |
  f-sharp'2( \< b,) \> \breathe |
  e2( \< a,) \> | \bar "||"

  a2( \p \< c-sharp?~ \> |
  4) \! b8 a g!4. r8 |
  g2( \< b~ \> |
  4) \! a8 g f-sharp4. r8 |
  d'2( \< e,) \> \breathe |
  <<
    { a2( \< d,) \> }
    { s2. s8 s \! }
  >> | \bar "|."
}
