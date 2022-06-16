\version "2.22.0"

\include "../settings.ily"

\removeWithTag \removed-tags

{
  \repeat unfold 4 { s2.*4 \break }
  \tag #'1st-edition s2.*5 \tag #'gumpert s2.*4 \break
  \repeat unfold 2 { s2.*4 \break }
  s2.*5 \break
  s2.*4 \break
  \repeat unfold 3 { \tag #'1st-edition s2.*5 \tag #'gumpert s2.*4 \break }
  \tag #'gumpert {
    s2.*4 \break
    s2.*5 \break
  }
}
