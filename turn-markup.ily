\version "2.22.0"

#(begin
  (define turn-markup #{
    \markup { \musicglyph #"scripts.turn" }
  #})
  (define sharp-turn-markup #{
    \markup {
      \override #'(baseline-skip . 1.5)
      \halign #0
      \center-column {
        \turn-markup
        \fontsize #-4 \sharp
      }
    }
  #})
)
