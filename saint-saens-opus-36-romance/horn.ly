\version "2.22.0"

\include "definitions.ily"
\header {
  instrument = "Horn in F"
}

\score {
  \new Staff <<
    \new Voice \include "horn.ily"

    #(if preserve-line-breaks? #{ \new Voice {
      \repeat unfold 2 { s2.*8 \break }
      s2.*9 \break
      s2.*8 \break
      \repeat unfold 3 { s2.*7 \break }
      s2.*8 \break
      \repeat unfold 2 { s2.*7 \break }
      s2.*9 \break
    } #})
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
