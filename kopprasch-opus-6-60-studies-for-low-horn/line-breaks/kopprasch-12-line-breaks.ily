\version "2.24.0"

{
  \repeat volta 2 {
    s8 s1*3 \break
    \repeat unfold 2 { s1*3 \break }
    s1*2
  }
  \alternative {
    { s2.. }
    { s1 \break }
  }
  \repeat volta 2 {
    s1*2 \break
    \repeat unfold 3 { s1*3 \break }
    s1*2
  }
  \alternative {
    { s1 }
    { s2.. \break }
  }
}
