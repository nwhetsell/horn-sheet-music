\version "2.24.0"

source-url = "https://imslp.org/wiki/Romance,_Op.36_(Saint-Saëns,_Camille)"
\header {
  composer-last-name = "Saint-Saëns"
  composer-first-name = "Camille"
  title = "Romance"
  opus = "Op. 36"
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
