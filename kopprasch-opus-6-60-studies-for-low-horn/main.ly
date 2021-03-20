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
    \override TupletBracket.bracket-visibility = #'if-no-beam
  }
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem.neutral-direction = #'()
  }
}

alternates-layout = \layout {
  #(layout-set-staff-size 14)
  ragged-last = ##t
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
      piece = "2"
      transposition = "(in E)"
    }
    \new Staff <<
      \new Voice { \include "kopprasch-02.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kopprasch-02-line-breaks.ily" } #})
    >>
  }

  \score {
    \header {
      piece = "3"
      transposition = "(in E♭)"
    }
    \new Staff <<
      \new Voice { \include "kopprasch-03.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kopprasch-03-line-breaks.ily" } #})
    >>
  }
  \noPageBreak
  \score {
    \alternates-layout
    \include "alternates/kopprasch-03-alternates.ly"
  }

  \score {
    \header {
      piece = "4"
      transposition = "(in E and E♭)"
    }
    \new Staff <<
      \new Voice { \include "kopprasch-04.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kopprasch-04-line-breaks.ily" } #})
    >>
  }
  \noPageBreak
  \score {
    \alternates-layout
    \include "alternates/kopprasch-04-alternates.ly"
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
      piece = "6"
      transposition = "(in E and D)"
    }
    \new Staff <<
      \new Voice { \include "kopprasch-06.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kopprasch-06-line-breaks.ily" } #})
    >>
  }
  \noPageBreak
  \score {
    \alternates-layout
    \include "alternates/kopprasch-06-alternates.ly"
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
      piece = "8"
      transposition = "(in D, D♭, C, and B♭ low)"
    }
    \new Staff <<
      \new Voice { \include "kopprasch-08.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kopprasch-08-line-breaks.ily" } #})
    >>
  }
  \noPageBreak
  \score {
    \alternates-layout
    \include "alternates/kopprasch-08-alternates.ly"
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
      piece = "10"
    }
    \new Staff <<
      \new Voice { \include "kopprasch-10.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kopprasch-10-line-breaks.ily" } #})
    >>
  }
  \noPageBreak
  \score {
    \alternates-layout
    \include "alternates/kopprasch-10-alternates.ly"
  }

  \score {
    \header {
      piece = "11"
      note = "It is better to practice this study before No. 43."
    }
    \new Staff <<
      \new Voice { \include "kopprasch-11.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kopprasch-11-line-breaks.ily" } #})
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
      piece = "17"
      transposition = "(in E, E♭, and D♭)"
    }
    \new Staff <<
      \new Voice { \include "kopprasch-17.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kopprasch-17-line-breaks.ily" } #})
    >>
  }
  \noPageBreak
  \score {
    \alternates-layout
    \include "alternates/kopprasch-17-alternates.ly"
  }

  \score {
    \header {
      piece = "18"
      transposition = "(in E and E♭)"
    }
    \new Staff <<
      \new Voice { \include "kopprasch-18.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kopprasch-18-line-breaks.ily" } #})
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
      piece = "20"
    }
    \new Staff <<
      \new Voice { \include "kopprasch-20.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kopprasch-20-line-breaks.ily" } #})
    >>
  }

  \score {
    \header {
      piece = "21"
      transposition = "(in E♭)"
      note = "Played like No. 13."
    }
    \new Staff <<
      \new Voice { \include "kopprasch-21.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kopprasch-21-line-breaks.ily" } #})
    >>
  }

  \score {
    \header {
      piece = "22"
    }
    \new Staff <<
      \new Voice { \include "kopprasch-22.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kopprasch-22-line-breaks.ily" } #})
    >>
  }

  \score {
    \header {
      piece = "23"
      transposition = "(in E and E♭)"
    }
    \new Staff <<
      \new Voice { \include "kopprasch-23.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kopprasch-23-line-breaks.ily" } #})
    >>
  }

  \score {
    \header {
      piece = "24"
      transposition = "(in E and E♭)"
    }
    \new Staff <<
      \new Voice { \include "kopprasch-24.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kopprasch-24-line-breaks.ily" } #})
    >>
  }

  \score {
    \header {
      piece = "25"
      transposition = "(in G, D, D♭ C, and B♭)"
    }
    \new Staff <<
      \new Voice { \include "kopprasch-25.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kopprasch-25-line-breaks.ily" } #})
    >>
  }

  \score {
    \header {
      piece = "26"
      transposition = "(in E and E♭)"
    }
    \new Staff <<
      \new Voice { \include "kopprasch-26.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kopprasch-26-line-breaks.ily" } #})
    >>
    % kopprasch-26.ly uses \centerNoteColumnOn, but using Melody_engraver
    % apparently breaks this, so use default stem directions.
    \layout {
      \context {
        \Voice
        \remove "Melody_engraver"
        \override Stem.neutral-direction = #DOWN
      }
    }
  }

  \score {
    \header {
      piece = "27"
    }
    \new Staff <<
      \new Voice { \include "kopprasch-27.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kopprasch-27-line-breaks.ily" } #})
    >>
  }

  \score {
    \header {
      piece = "28"
    }
    \new Staff <<
      \new Voice { \include "kopprasch-28.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kopprasch-28-line-breaks.ily" } #})
    >>
  }

  \score {
    \header {
      piece = "29"
    }
    \new Staff <<
      \new Voice { \include "kopprasch-29.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kopprasch-29-line-breaks.ily" } #})
    >>
  }

  \score {
    \header {
      piece = "30"
      transposition = "(in E, E♭, and D)"
    }
    \new Staff <<
      \new Voice { \include "kopprasch-30.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kopprasch-30-line-breaks.ily" } #})
    >>
  }

  \score {
    \header {
      piece = "31"
    }
    \new Staff <<
      \new Voice { \include "kopprasch-31.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kopprasch-31-line-breaks.ily" } #})
    >>
  }

  \score {
    \header {
      piece = "32"
    }
    \new Staff <<
      \new Voice { \include "kopprasch-32.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kopprasch-32-line-breaks.ily" } #})
    >>
  }

  \score {
    \header {
      piece = "33"
    }
    \new Staff <<
      \new Voice { \include "kopprasch-33.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kopprasch-33-line-breaks.ily" } #})
    >>
  }

  \score {
    \header {
      piece = "38"
      transposition = "(in E and D)"
    }
    \new Staff <<
      \new Voice { \include "kopprasch-38.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kopprasch-38-line-breaks.ily" } #})
    >>
  }

  \score {
    \header {
      piece = "39"
      transposition = "(in E)"
    }
    \new Staff <<
      \new Voice { \include "kopprasch-39.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kopprasch-39-line-breaks.ily" } #})
    >>
  }
  \noPageBreak
  \score {
    \alternates-layout
    \include "alternates/kopprasch-39-alternates.ly"
  }

  \score {
    \header {
      piece = "40"
    }
    \new Staff <<
      \new Voice { \include "kopprasch-40.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kopprasch-40-line-breaks.ily" } #})
    >>
  }
  \noPageBreak
  \score {
    \alternates-layout
    \include "alternates/kopprasch-40-alternates.ly"
  }

  \score {
    \header {
      piece = "41"
    }
    \new Staff <<
      \new Voice { \include "kopprasch-41.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kopprasch-41-line-breaks.ily" } #})
    >>
  }

  \score {
    \header {
      piece = "42"
      transposition = "(in G, D, and D♭)"
    }
    \new Staff <<
      \new Voice { \include "kopprasch-42.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kopprasch-42-line-breaks.ily" } #})
    >>
  }

  \score {
    \header {
      piece = "43"
    }
    \new Staff <<
      \new Voice { \include "kopprasch-43.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kopprasch-43-line-breaks.ily" } #})
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
