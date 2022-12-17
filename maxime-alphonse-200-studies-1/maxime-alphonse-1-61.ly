\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Moderato" 2=63

  \key a \major
  \time 2/2

  a'8 \mf b a g-sharp f-sharp e f-sharp g-sharp |
  a8 b c-sharp a b4( \> e) \! |
  a,8 b a g-sharp f-sharp e f-sharp g-sharp |
  a8 b c-sharp a b2 \breathe | \bar "||"

  c8 \f d c b a g a b |
  c8 d e c d4( \> g) \! |
  c,8 d c b a g a b |
  c8 d e c d2 \breathe | \bar "||"

  b-flat8 \p c b-flat a g f g a |
  b-flat8 c d b-flat c4( \> f) \! |
  b-flat,8 c b-flat a g f g a |
  b-flat8 c d b-flat c2 \breathe | \bar "||"

  a8 \mf b! a g-sharp! f-sharp! e! f-sharp g-sharp |
  a8 b c-sharp a b4( \> e) \! |
  c-sharp d c-sharp b a g-sharp a b |
  c-sharp8 a b g-sharp a2 | \bar "|."
}
