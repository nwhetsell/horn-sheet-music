\version "2.22.0"

source-url = "https://imslp.org/wiki/Grosse_theoretisch-practische_Waldhorn-Schule_(Franz%2C_Oscar)"
\header {
  composer-last-name = "Franz"
  composer-first-name = "Oscar"
  title = "30 Exercises for Stopped and Valved Horn"
  instrument = "Horn in F"
}

\include "../titling.ily"
\include "settings.ily"

\language "english"
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
  #(do ((study-number 18 (1+ study-number)))
      ((> study-number 19))
    (let ((header (make-module)))
      (module-define! header 'piece (number->string study-number))
      (let* (
          (base-name (format #f "franz-~2,'0d" study-number))
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
