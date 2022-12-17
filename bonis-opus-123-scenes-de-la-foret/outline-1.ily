\version "2.24.0"

outline-one = {
  \language "english"

  \key e-flat \major
  \time 4/4

  \tempo "Moderato" 4=72

  s1*11 |
  \mark \default

  s1*9 |
  s2 \tempo "cédez" s |
  s1*2 |

  \mark \default
  s1 |
  \tempo "poco rit."
  s1 | \bar "||"

  \key d-flat \major
  \tempo "a tempo"
  s1*7 |

  \mark \default
  s1*10 |
  \tempo "rit."
  s1 | \bar "||"

  \mark \default
  \key e-flat \major
  \tempo "a tempo"
  s1*3 |
  s2 \tempo "rit." s |
  \tempo "a tempo"
  s1*4 | \bar "|."
}
