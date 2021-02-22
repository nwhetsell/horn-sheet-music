\version "2.22.0"

\paper {
  #(set-paper-size "letter")
  left-margin = 0.5\in
  top-margin = 0.5\in
  right-margin = 0.5\in
  bottom-margin = 0.5\in

  % Based on
  % https://github.com/lilypond/lilypond/blob/master/ly/titling-init.ly
  bookTitleMarkup = \markup {
    \override #'(baseline-skip . 3.5)
    \column {
      \fill-line {
        \override #'(font-name . "Playfair Display Regular")
        \abs-fontsize #20
        \fromproperty #'header:title
        \concat {
          \override #'(font-name . "Playfair Display Medium")
          \abs-fontsize #14
          \fromproperty #'header:composer-first-name
          \override #'(font-name . "Playfair Display Medium")
          \abs-fontsize #14
          " "
          \override #'(font-name . "Playfair Display Regular")
          \abs-fontsize #20
          \fromproperty #'header:composer-last-name
        }
      }
      \override #'(font-name . "Playfair Display Medium")
      \abs-fontsize #10
      \fill-line {
        \fromproperty #'header:instrument
        \fromproperty #'header:opus
      }
      \vspace #1.5
    }
  }

  scoreTitleMarkup = \markup {
    \column {
      \fill-line {
        \override #'(font-name . "Playfair Display Regular")
        \abs-fontsize #20
        \fromproperty #'header:piece
      }
      \vspace #0.375
    }
  }

  evenHeaderMarkup = \markup {
    \override #'(font-name . "Playfair Display Medium")
    \abs-fontsize #10
    \column {
      \fill-line {
        \on-the-fly #not-part-first-page \fromproperty #'header:title
        \on-the-fly #not-part-first-page \fromproperty #'header:composer-last-name
        \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
      }
      \on-the-fly #not-part-first-page \vspace #1.5
    }
  }

  oddHeaderMarkup = \evenHeaderMarkup
}

\layout {
  indent = 0.25\in
}

\header {
  tagline = ##f
}

colophon = \markup {
  \override #'(font-name . "Playfair Display Medium")
  \column {
    \fill-line {
      \concat { "Music engraved using LilyPond " #(lilypond-version) }
      \with-url "https://lilypond.org" "https://lilypond.org"
    }

    \fill-line {
      "Titles set in Playfair Display"
      \with-url
        "https://fonts.google.com/specimen/Playfair+Display"
        "https://fonts.google.com/specimen/Playfair+Display"
    }

    \fill-line {
      "Corrections and additions are welcome"
      \with-url
        "https://github.com/nwhetsell/horn-sheet-music"
        "https://github.com/nwhetsell/horn-sheet-music"
    }

    \vspace #1

    \wordwrap {
      This work is derived from public-domain documents available at
      \concat {
        \with-url \source-url \source-url
        "."
      }
      To the extent necessary, this derivative work is dedicated to the public
      domain under the Creative Commons CC0 Public Domain Dedication
      (https://creativecommons.org/publicdomain/zero/1.0/).
    }

    \vspace #1

    #(strftime "%Y-%m-%d" (localtime (current-time)))
  }
}
