\version "2.24.0"

source-url = "https://imslp.org/wiki/English_Suite_No.3_in_G_minor%2C_BWV_808_(Bach%2C_Johann_Sebastian)"
\header {
  composer-last-name = "Bach"
  composer-first-name = "Johann Sebastian"
}

\include "../titling.ily"
\include "settings.ily"

\pointAndClickOff

\layout {
  \context {
    \Score
    skipBars = ##t
    #(if preserve-line-breaks? #{
      \override NonMusicalPaperColumn.line-break-permission = ##f
    #})
  }
}
