\version "2.24.0"

source-url = "https://imslp.org/wiki/Le_carnaval_des_animaux_(Saint-Saëns%2C_Camille)"
\header {
  composer-last-name = "Saint-Saëns"
  composer-first-name = "Camille"
  title = "The Swan"
  opus = "The Carnival of the Animals, movement 13"
  instrument = "Cello"
}

\include "../titling.ily"
\include "music.ily"

\pointAndClickOff

\layout {
  \set Score.rehearsalMarkFormatter = #format-mark-box-numbers
  \context {
    \Voice
    \consists Melody_engraver
  }
}

\new Voice {
  \clef "tenor"
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
