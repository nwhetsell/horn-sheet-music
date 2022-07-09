\version "2.22.0"

source-url = "https://imslp.org/wiki/Scènes_de_la_forêt_(Bonis%2C_Mel)"
\header {
  composer-last-name = "Bonis"
  composer-first-name = "Mélanie Hélène"
  title = "Scènes de la Forêt"
  opus = "Op. 123"
}

\include "../titling.ily"

\pointAndClickOff

\layout {
  \set Score.markFormatter = #format-mark-box-numbers
  \set Score.skipBars = ##t
  \context {
    \Score
    \override TextSpanner.style = #'line
    \override TextSpanner.bound-details.left.padding = #0.6
    \override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
    \override TupletBracket.bracket-visibility = #'if-no-beam
  }
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem.neutral-direction = #'()
  }
}
