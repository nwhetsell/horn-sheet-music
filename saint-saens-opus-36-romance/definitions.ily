\version "2.22.0"

source-url = "https://imslp.org/wiki/Romance,_Op.36_(Saint-Saëns,_Camille)"
\header {
  composer-last-name = "Saint-Saëns"
  composer-first-name = "Camille"
  title = "Romance"
  opus = "Op. 36"
  instrument = "Horn in F"
}

\include "../titling.ily"
\include "settings.ily"

\pointAndClickOff

\layout {
  \set Score.skipBars = ##t
  \context {
    \Score
    #(if preserve-line-breaks? #{
      \override NonMusicalPaperColumn.line-break-permission = ##f
    #})
  }
}
