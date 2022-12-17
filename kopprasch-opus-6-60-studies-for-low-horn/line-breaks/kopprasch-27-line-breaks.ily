\version "2.24.0"

{
  \repeat volta 2 {
    s8 s2*5 \break
    \repeat unfold 2 { s2*5 \break }
    s2*3
  }
  \alternative {
    { s4. }
    { s2 }
  }
  \repeat volta 2 {
    s2*2 \break
    s2*6 \break
    \repeat unfold 3 { s2*5 \break }
    s2*4
  }
  \alternative {
    { s2 }
    { s4. \break }
  }
}
