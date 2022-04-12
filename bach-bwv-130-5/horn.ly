\version "2.22.0"

source-url = "https://imslp.org/wiki/Herr_Gott%2C_dich_loben_alle_wir%2C_BWV_130_(Bach%2C_Johann_Sebastian)"
\header {
  composer-last-name = "Bach"
  composer-first-name = "Johann Sebastian"
  title = "Aria (“Lass, o Fürst”)"
  opus = "BWV 130, № 5"
  instrument = "Horn in F"
}

\include "../titling.ily"
\include "tenor.ily"

\pointAndClickOff

\layout {
  \set Score.skipBars = ##t
}

\score {
  \new Staff
    \new Voice {
      <<
        {
          \transpose \tonic d' {
            \transposition f
            \tenor-measures-one-to-eighty-eight \bar "|."
          }
        }
        {
          s2 |
          s1*15 |

          s1 |
          s4 <>( s8 <>) s <>( s4 <>) s |
          s4 <>( s8 <>) s s2 |

          s1*3 |
          s1 |
          s2 <>( s4 <>) s |
          s4 <>( s8 <>) s s2 |
          s2 <>( s4 <>) s |
          s4 \repeat unfold 3 { <>( s8 <>) s } |
          s2 <>( s4 <>) s |
          s4 \repeat unfold 2 { <>( s8 <>) s } s4 |
          s4 <>( s8 <>) s <>( s4 <>) s |
          <>( s1*3 |

          <>) s1 |
          \repeat unfold 2 { s4 <>( s8 <>) s } |
          s2 \repeat unfold 2 { <>( s8 <>) s } |
          s1*2 |
          s4 <>( s8 <>) s <>( s4 <>) s |
          s4 \repeat unfold 3 { <>( s8 <>) s } |
          s4 <>( s8 <>) s <>( s4 <>) s |
          <>( s1*3 |

          <>) s1 |
          \repeat unfold 4 { <>( s8 <>) s } |
          <>( s1*2 |
          <>) s2 \repeat unfold 2 { <>( s8 <>) s } |
          <>( s4 <>) s \repeat unfold 2 { <>( s8 <>) s } |
          s1 |

          s1*3 |
          s1 |
          s4 <>( s2 <>) s4 |
          \repeat unfold 2 { s4 \repeat unfold 3 { <>( s8 <>) s } | }
          s2 \repeat unfold 2 { <>( s8 <>) s } |
          s2 <>( s4 <>) s |
          s4 \repeat unfold 3 { <>( s8 <>) s } |
          \repeat unfold 4 { <>( s8 <>) s } |
          <>( s1*3 |
          s8 <>) s <>( s <>) s s2 |
          s4 \repeat unfold 3 { <>( s8 <>) s } |
          s1 |

          s1*3 |
          s2. <>( s8 <>) s |
          <>( s8 <>) s <>( s4 s s8 <>) s |
          <>( s8 <>) s s2. |
          s4 \repeat unfold 3 { <>( s8 <>) s } |
          <>( s1*4 |
          s8 <>) s \repeat unfold 3 { <>( s <>) s } |
          s4. <>( s8 s4. <>) s8 |
          s2 \repeat unfold 2 { <>( s8 <>) s } |
          s4 \repeat unfold 3 { <>( s8 <>) s } |
          <>( s1*3 |
          s2 <>) s |
        }
      >>
    }
}

\bookpart {
  \paper {
    bookTitleMarkup = ##f
    scoreTitleMarkup = ##f
    evenHeaderMarkup = ##f
    oddHeaderMarkup = \evenHeaderMarkup
  }
  \colophon
}
