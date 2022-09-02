\version "2.22.0"

source-url = "https://imslp.org/wiki/Le_carnaval_des_animaux_(Saint-Saëns%2C_Camille)"
\header {
  composer-last-name = "Saint-Saëns"
  composer-first-name = "Camille"
  title = "The Swan"
  opus = "The Carnival of the Animals, mvt. 13"
  instrument = "Horn in F"
}

\include "../titling.ily"
\include "music.ily"

\pointAndClickOff

\layout {
  \set Score.markFormatter = #format-mark-box-numbers
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem.neutral-direction = #'()
  }
}

\transposition f
\transpose \tonic b-flat {
  \music
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
