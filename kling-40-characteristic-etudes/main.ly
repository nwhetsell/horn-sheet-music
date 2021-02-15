\version "2.22.0"

source-url = "https://imslp.org/wiki/40_Studies_for_Horn_(Kling%2C_Henri)"
\header {
  composer-last-name = "Kling"
  composer-first-name = "Henri"
  title = "40 Characteristic Études for Horn"
  instrument = "Horn in F"
}

\include "../titling.ily"
\include "settings.ily"

\pointAndClickOff

\layout {
  \context {
    \Score
    #(if preserve-line-breaks? #{
      \override NonMusicalPaperColumn.line-break-permission = ##f
    #})
    \override TupletBracket.bracket-visibility = #'if-no-beam
  }
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem.neutral-direction = #'()
  }
}

\book {
  \score {
    \header { piece = "2" }
    \new Staff <<
      \new Voice { \include "kling-02.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kling-02-line-breaks.ily" } #})
    >>
  }

  \score {
    \header { piece = "7" }
    \new Staff <<
      \new Voice { \include "kling-07.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kling-07-line-breaks.ily" } #})
    >>
  }

  \score {
    \header { piece = "11" }
    \new Staff <<
      \new Voice { \include "kling-11.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kling-11-line-breaks.ily" } #})
    >>
  }

  \score {
    \header { piece = "19" }
    \new Staff <<
      \new Voice { \include "kling-19.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kling-19-line-breaks.ily" } #})
    >>
  }

  \score {
    \header { piece = "20" }
    \new Staff <<
      \new Voice { \include "kling-20.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kling-20-line-breaks.ily" } #})
    >>
  }

  % Add vertical space above the next study.
  \markup { \vspace #0.25 }

  \score {
    \header { piece = "21" }
    \new Staff <<
      \new Voice { \include "kling-21.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kling-21-line-breaks.ily" } #})
    >>
  }

  \score {
    \header { piece = "24" }
    \new Staff <<
      \new Voice { \include "kling-24.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kling-24-line-breaks.ily" } #})
    >>
  }

  \score {
    \header { piece = "25" }
    \new Staff <<
      \new Voice { \include "kling-25.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kling-25-line-breaks.ily" } #})
    >>
  }

  \score {
    \header { piece = "26" }
    \new Staff <<
      \new Voice { \include "kling-26.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kling-26-line-breaks.ily" } #})
    >>
  }

  \score {
    \header { piece = "27" }
    \new Staff <<
      \new Voice { \include "kling-27.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kling-27-line-breaks.ily" } #})
    >>
  }

  \score {
    \header { piece = "28" }
    \new Staff <<
      \new Voice { \include "kling-28.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kling-28-line-breaks.ily" } #})
    >>
  }

  \score {
    \header { piece = "29" }
    \new Staff <<
      \new Voice { \include "kling-29.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kling-29-line-breaks.ily" } #})
    >>
  }

  \score {
    \header { piece = "30" }
    \new Staff <<
      \new Voice { \include "kling-30.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kling-30-line-breaks.ily" } #})
    >>
  }

  \score {
    \header { piece = "31" }
    \new Staff <<
      \new Voice { \include "kling-31.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kling-31-line-breaks.ily" } #})
    >>
  }

  \score {
    \header { piece = "32" }
    \new Staff <<
      \new Voice { \include "kling-32.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kling-32-line-breaks.ily" } #})
    >>
  }

  \score {
    \header { piece = "33" }
    \new Staff <<
      \new Voice { \include "kling-33.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kling-33-line-breaks.ily" } #})
    >>
  }

  \score {
    \header { piece = "34" }
    \new Staff <<
      \new Voice { \include "kling-34.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kling-34-line-breaks.ily" } #})
    >>
  }

  \score {
    \header { piece = "35" }
    \new Staff <<
      \new Voice { \include "kling-35.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kling-35-line-breaks.ily" } #})
    >>
  }

  \score {
    \header { piece = "36" }
    \new Staff <<
      \new Voice { \include "kling-36.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kling-36-line-breaks.ily" } #})
    >>
  }

  \score {
    \header { piece = "37" }
    \new Staff <<
      \new Voice { \include "kling-37.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kling-37-line-breaks.ily" } #})
    >>
  }

  \score {
    \header { piece = "38" }
    \new Staff <<
      \new Voice { \include "kling-38.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kling-38-line-breaks.ily" } #})
    >>
  }

  \score {
    \header { piece = "39" }
    \new Staff <<
      \new Voice { \include "kling-39.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kling-39-line-breaks.ily" } #})
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
}
