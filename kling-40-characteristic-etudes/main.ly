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
    \header { piece = "8" }
    \new Staff <<
      \new Voice { \include "kling-08.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kling-08-line-breaks.ily" } #})
    >>
  }

  \score {
    \header { piece = "9" }
    \new Staff <<
      \new Voice { \include "kling-09.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kling-09-line-breaks.ily" } #})
    >>
  }

  \score {
    \header { piece = "10" }
    \new Staff <<
      \new Voice { \include "kling-10.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kling-10-line-breaks.ily" } #})
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
    \header { piece = "12" }
    \new Staff <<
      \new Voice { \include "kling-12.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kling-12-line-breaks.ily" } #})
    >>
  }

  \score {
    \header { piece = "13" }
    \new Staff <<
      \new Voice { \include "kling-13.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kling-13-line-breaks.ily" } #})
    >>
  }

  \score {
    \header { piece = "14" }
    \new Staff <<
      \new Voice { \include "kling-14.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kling-14-line-breaks.ily" } #})
    >>
  }

  \score {
    \header { piece = "15" }
    \new Staff <<
      \new Voice { \include "kling-15.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kling-15-line-breaks.ily" } #})
    >>
  }

  \score {
    \header { piece = "16" }
    \new Staff <<
      \new Voice { \include "kling-16.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kling-16-line-breaks.ily" } #})
    >>
  }

  \score {
    \header { piece = "17" }
    \new Staff <<
      \new Voice { \include "kling-17.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kling-17-line-breaks.ily" } #})
    >>
  }

  \score {
    \header { piece = "18" }
    \new Staff <<
      \new Voice { \include "kling-18.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kling-18-line-breaks.ily" } #})
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

  \score {
    \header { piece = "21" }
    \new Staff <<
      \new Voice { \include "kling-21.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kling-21-line-breaks.ily" } #})
    >>
  }

  \score {
    \header { piece = "22" }
    \new Staff <<
      \new Voice { \include "kling-22.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kling-22-line-breaks.ily" } #})
    >>
  }

  \score {
    \header { piece = "23" }
    \new Staff <<
      \new Voice { \include "kling-23.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kling-23-line-breaks.ily" } #})
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
