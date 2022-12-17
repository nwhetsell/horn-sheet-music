\version "2.24.0"

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
    \consists Melody_engraver
  }
}

\book {
  #(do ((study-number 1 (1+ study-number)))
      ((> study-number 39))
    (let ((header (make-module)))
      (module-define! header 'piece (number->string study-number))
      (let* (
          (base-name (format #f "kling-~2,'0d" study-number))
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
