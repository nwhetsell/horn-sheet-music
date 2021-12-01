\version "2.22.0"

source-url = "https://imslp.org/wiki/200_Études_nouvelles_mélodiques_et_progressives_pour_cor_(Alphonse,_Maxime)"
\header {
  composer-last-name = "Maxime-Alphonse"
  title = "200 New Studies, Vol. 2"
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
      }
      \vspace #0.375
    }
  }
}

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
  #(do ((study-number 1 (1+ study-number)))
      ((> study-number 40))
    (let ((header (make-module)))
      (module-define! header 'piece (number->string study-number))
      (let* (
          (base-name (format #f "maxime-alphonse-2-~2,'0d" study-number))
          (score (scorify-music (if preserve-line-breaks?
            #{
              \new Staff <<
                \new Voice { \include #(format #f "~a.ly" base-name) }
                \new Voice { \include #(format #f "line-breaks/~a-line-breaks.ily" base-name) }
              >>
            #}
            #{
              \include #(format #f "~a.ly" base-name)
            #}
          ))))
        (begin
          (ly:score-set-header! score header)
          (add-score score)))))

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
