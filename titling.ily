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
        \abs-fontsize #24
        \fromproperty #'header:title
        \concat {
          \override #'(font-name . "Playfair Display Medium")
          \abs-fontsize #16
          \fromproperty #'header:composer-first-name
          \override #'(font-name . "Playfair Display Medium")
          \abs-fontsize #16
          " "
          \override #'(font-name . "Playfair Display Regular")
          \abs-fontsize #24
          \fromproperty #'header:composer-last-name
        }
      }
      \fill-line {
        \override #'(font-name . "Playfair Display Medium")
        \abs-fontsize #10
        \fromproperty #'header:instrument
        \override #'(font-name . "Playfair Display Medium")
        \abs-fontsize #10
        \fromproperty #'header:opus
      }
      \vspace #1.5
    }
  }

  scoreTitleMarkup = \markup {
    \column {
      \fill-line {
        \override #'(font-name . "Playfair Display Medium")
        \abs-fontsize #16
        \fromproperty #'header:piece
      }
      \vspace #0.375
    }
  }

  evenHeaderMarkup = \markup {
    \column {
      \fill-line {
        \override #'(font-name . "Playfair Display Medium")
        \abs-fontsize #10
        \on-the-fly #not-part-first-page \fromproperty #'header:title
        \override #'(font-name . "Playfair Display Medium")
        \abs-fontsize #10
        \on-the-fly #not-part-first-page \fromproperty #'header:composer-last-name
        \override #'(font-name . "Playfair Display Medium")
        \abs-fontsize #10
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
