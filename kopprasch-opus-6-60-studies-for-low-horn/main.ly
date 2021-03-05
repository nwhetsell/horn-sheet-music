\version "2.22.0"

source-url = "https://imslp.org/wiki/60_Etudes_for_Low-Horn%2C_Op.6_(Kopprasch%2C_Georg)"
\header {
  composer-last-name = "Kopprasch"
  composer-first-name = "Georg"
  title = "60 Studies for Low Horn"
  opus = "Op. 6"
  instrument = "Horn in F"
}

\include "../titling.ily"
\include "settings.ily"

\pointAndClickOff

\paper {
  scoreTitleMarkup = \markup {
    \column {
      \concat {
        \override #'(font-name . "Playfair Display Regular")
        \abs-fontsize #20
        \fromproperty #'header:piece
        \hspace #1
        \override #'(font-name . "Playfair Display Medium")
        \fromproperty #'header:transposition
      }
      \vspace #0.125
      \override #'(font-name . "Playfair Display Medium")
      \justify-field #'header:note
      \vspace #0.25
    }
  }
}

\layout {
  indent = 0
  \context {
    \Score
    #(if preserve-line-breaks? #{
      \override NonMusicalPaperColumn.line-break-permission = ##f
    #})
  }
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem.neutral-direction = #'()
  }
}

alternates-layout = \layout {
  #(layout-set-staff-size 14)
  \context {
    \Score
    \omit BarNumber
    markFormatter = #format-mark-numbers
  }
}

\book {
  \score {
    \header {
      piece = "1"
      transposition = "(Transposition in E♭)"
    }
    \new Staff <<
      \new Voice { \include "kopprasch-01.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kopprasch-01-line-breaks.ily" } #})
    >>
  }

  \score {
    \header {
      piece = "5"
      transposition = "(in E, E♭, and D)"
      note = "Phrasing studies, daily preparatory studies for the trill
              (lip-trill): The notes uniformly slower at first, then quicker,
              and all notes open or, after transposition, on No. 1 (in E♭),
              No. 2 (in E), or No. 3 (in D) valve."
    }
    \new Staff <<
      \new Voice { \include "kopprasch-05.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kopprasch-05-line-breaks.ily" } #})
    >>
  }

  \score {
    \header {
      piece = "7"
      transposition = "(in G, E, E♭, D, and D♭)"
    }
    \new Staff <<
      \new Voice { \include "kopprasch-07.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kopprasch-07-line-breaks.ily" } #})
    >>
  }

  \score {
    \header {
      piece = "9"
    }
    \new Staff <<
      \new Voice { \include "kopprasch-09.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kopprasch-09-line-breaks.ily" } #})
    >>
  }

  \score {
    \header {
      piece = "12"
      transposition = "(in D and C)"
    }
    \new Staff <<
      \new Voice { \include "kopprasch-12.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kopprasch-12-line-breaks.ily" } #})
    >>
  }
  \noPageBreak
  \score {
    \alternates-layout
    \include "alternates/kopprasch-12-alternates.ly"
  }

  \score {
    \header {
      piece = "13"
    }
    \new Staff <<
      \new Voice { \include "kopprasch-13.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kopprasch-13-line-breaks.ily" } #})
    >>
  }
  \noPageBreak
  \score {
    \alternates-layout
    \include "alternates/kopprasch-13-alternates.ly"
  }

  \score {
    \header {
      piece = "14"
      transposition = "(in E♭)"
    }
    \new Staff <<
      \new Voice { \include "kopprasch-14.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kopprasch-14-line-breaks.ily" } #})
    >>
  }

  \score {
    \header {
      piece = "15"
    }
    \new Staff <<
      \new Voice { \include "kopprasch-15.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kopprasch-15-line-breaks.ily" } #})
    >>
  }

  \score {
    \header {
      piece = "16"
      transposition = "(in E, D, C, and B♭ low)"
    }
    \new Staff <<
      \new Voice { \include "kopprasch-16.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kopprasch-16-line-breaks.ily" } #})
    >>
  }

  \score {
    \header {
      piece = "19"
    }
    \new Staff <<
      \new Voice { \include "kopprasch-19.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kopprasch-19-line-breaks.ily" } #})
    >>
  }

  \score {
    \header {
      piece = "44"
    }
    \new Staff <<
      \new Voice { \include "kopprasch-44.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kopprasch-44-line-breaks.ily" } #})
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
