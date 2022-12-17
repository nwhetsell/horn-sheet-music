\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Moderato" 4=63

  \key a \major
  \time 3/4

  a'8-^_\markup { \dynamic "f" \italic "pesante" } e'-^ e,-^ e'-^ a,16-> b c-sharp a |
  b8-^ e-^ e,-^ e'-^ b16-> c-sharp d b |
  c-sharp8-^ e-^ e,-^ e'-^ f-sharp16-> e d c-sharp |
  b16-> a g-sharp f-sharp g-sharp-> a b g-sharp a-> b c-sharp a |
  b8-^ f-sharp'-^ f-sharp,-^ f-sharp'-^ \breathe b,16-> c-sharp d b |
  c-sharp8-^ f-sharp-^ f-sharp,-^ f-sharp'-^ c-sharp16-> d e c-sharp |
  d8-^ f-sharp-^ f-sharp,-^ f-sharp'-^ e16-> d c-sharp b |
  a16-> g-sharp f-sharp e f-sharp-> g-sharp a b c-sharp-> a e'8 \breathe |

  e8-^ a,-^ e'-^ e,-^ a16-> c-sharp b a |
  e'8-^ b-^ e-^ e,-^ b'16-> d c-sharp b |
  e8-^ c-sharp-^ e-^ e,-^ \breathe a16-> c-sharp b a |
  g-sharp16-> b a g-sharp f-sharp-> g-sharp a b c-sharp-> d e c-sharp |
  f-sharp8-^ b,-^ f-sharp'-^ f-sharp,-^ b16-> d c-sharp b |
  f-sharp'8-^ c-sharp-^ f-sharp-^ f-sharp,-^ \breathe c-sharp'16-> e d c-sharp |
  f-sharp8-^ d-^ f-sharp-^ f-sharp,-^ f-sharp'16-> e d c-sharp |
  e16-> d b g-sharp e-> f-sharp g-sharp a b-> c-sharp d b |

  a8-^ e'-^ e,-^ e'-^ a,16-> b c-sharp a |
  b8-^ e-^ e,-^ e'-^ \breathe b16-> c-sharp d b |
  c-sharp8-^ e-^ e,-^ e'-^ f-sharp16-> e d c-sharp |
  b16-> a g-sharp f-sharp e-> a g-sharp f-sharp e-> d c-sharp b |
  a4( a') r | \bar "|."
}
