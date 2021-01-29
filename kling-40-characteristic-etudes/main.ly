\version "2.22.0"

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
}

\header {
  title = "40 Characteristic Études for Horn"
  instrument = "Horn in F"
  composer-first-name = "Henri"
  composer-last-name = "Kling"
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
    \header { piece = "25" }
    \new Staff <<
      \new Voice { \include "kling-25.ly" }
      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/kling-25-line-breaks.ily" } #})
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

  \pageBreak

  \markup {
    \column {
      \fill-line {
        \concat {
          \override #'(font-name . "Playfair Display Medium")
          "Music engraved using LilyPond "
          \override #'(font-name . "Playfair Display Medium")
          #(lilypond-version)
        }
        \with-url "https://lilypond.org" {
          \override #'(font-name . "Playfair Display Medium")
          "https://lilypond.org"
        }
      }

      \fill-line {
        \concat {
          \override #'(font-name . "Playfair Display Medium")
          "Titles set in Playfair Display"
        }
        \with-url "https://fonts.google.com/specimen/Playfair+Display" {
          \override #'(font-name . "Playfair Display Medium")
          "https://fonts.google.com/specimen/Playfair+Display"
        }
      }

      \fill-line {
        \concat {
          \override #'(font-name . "Playfair Display Medium")
          "Based on a public-domain document"
        }
        \with-url "https://imslp.org/wiki/40_Studies_for_Horn_(Kling%2C_Henri)" {
          \override #'(font-name . "Playfair Display Medium")
          "https://imslp.org/wiki/40_Studies_for_Horn_(Kling%2C_Henri)"
        }
      }

      \fill-line {
        \concat {
          \override #'(font-name . "Playfair Display Medium")
          "Corrections and additions are welcome"
        }
        \with-url "https://github.com/nwhetsell/horn-sheet-music" {
          \override #'(font-name . "Playfair Display Medium")
          "https://github.com/nwhetsell/horn-sheet-music"
        }
      }

      \vspace #1

      \concat {
        \override #'(font-name . "Playfair Display Medium")
        "This work is dedicated to the public domain under the "
        \with-url "https://creativecommons.org/publicdomain/zero/1.0/" {
          \override #'(font-name . "Playfair Display Medium")
          "Creative Commons CC0 Public Domain Dedication"
        }
        \override #'(font-name . "Playfair Display Medium")
        "."
      }

      \vspace #1

      \override #'(font-name . "Playfair Display Medium")
      #(strftime "%Y-%m-%d" (localtime (current-time)))
    }
  }
}
