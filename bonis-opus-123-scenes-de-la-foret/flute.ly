\version "2.22.0"

\include "definitions.ily"
\header {
  instrument = "Flute"
}

\score {
  \header { piece = "1. Nocturne" }
  \new Staff <<
    { \include "flute-1.ily" }
    { \include "outline-1.ily" }
  >>
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
