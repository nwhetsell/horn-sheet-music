\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Lento" 4=58

  \key c \major

  \time 4/4
  c'4.-^ \f e8-. g4.-> r8 |
  \override TextSpanner.style = #'line
  \override TextSpanner.bound-details.left.padding = #0.6
  \override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
  \override TextSpanner.bound-details.left.text = \markup { \musicglyph #"scripts.stopped" \hspace #0.5 }
  \override TextSpanner.bound-details.right.padding = #-1
  c,4.-^-2\startTextSpan \p e8-. g4.->\stopTextSpan r8 |
  e4.-^ g8-. c4.-> r8 |
  e,4.-^-2\startTextSpan g8-. c4.->\stopTextSpan r8 |
  g4.-^ c8-. e4.-> r8 |
  g,4.-^-2\startTextSpan c8-. e4.->\stopTextSpan r8 |
  c4.-^ e8-. g4.-> r8 |
  c,4.-^-2\startTextSpan e8-. g4.->\stopTextSpan r8 | \bar "||"

  \tempo "Più vivo" 4=76
  \time 3/4
  e8-. g-. e-. d-. c-. d-. |
  e2.-> |
  c2-> r4 |
  e8-.-2\startTextSpan g-. e-. d-. c-. d-. |
  e2.-> |
  c2->\stopTextSpan r4 |
  c4~( \tuplet 3/2 4 { 8 d e d g e } |
  \stemDown \tuplet 3/2 { c g c } \stemNeutral d2) \breathe |
  c4-2~\startTextSpan( \tuplet 3/2 4 { 8 d e d g e } |
  \stemDown \tuplet 3/2 { c g c } \stemNeutral d2\stopTextSpan) \breathe |
  d2.( |
  g,2) r4 |
  d'2.-2\startTextSpan( |
  g,2\stopTextSpan) r4 |
  g'2.( |
  c,2) r4 |
  g'2.-2\startTextSpan( |
  c,2\stopTextSpan) r4 |
  \tuplet 3/2 { c8 d e } d c \tuplet 3/2 { b a b } |
  c4 a4. r8 |
  \tuplet 3/2 { c8-2\startTextSpan d e } d c \once \tupletDown \tuplet 3/2 { b-1 a-3-2 b-1 } |
  c4-2 a4.-3-2\stopTextSpan r8 |
  g8. a16 b8 d b a |
  g2\fermata r4 |
  g8.-2\startTextSpan a16-3-2 b8-1 d-2 b-1 a-3-2 |
  g2.-2\stopTextSpan | \bar "||"

  \tempo "1º Tempo"
  \time 4/4
  r2 r8 g \f \< c e |
  g4.( \> e8 c4.) \! r8 |
  r2 r8 g-2\startTextSpan \p c e |
  g4.( e8 c4.\stopTextSpan) r8 |
  e4.( c8 g4.) r8 |
  e'4.-2\startTextSpan( c8 g4.)\stopTextSpan r8 |
  c4.( \f \> g8 e4.) \! r8 |
  c'4.-2\startTextSpan( \p g8 e4.\stopTextSpan) r8 |
  g4.( \f \> e8 c4.) \! r8 |
  g'4.-2\startTextSpan( \p e8 c4.\stopTextSpan) r8 |
  c8 d16 e f g a b c2 \breathe |
  <<
    {
      c,8-2\startTextSpan d16-2-1 e-2 f-0 g-2 a-3 b-1
      c2-\tweak script-priority 2 -2
        -\tweak script-priority 1 \fermata
      \stopTextSpan
      \tweak minimum-length #4 \>
    }
    { s2. s4 \! }
  >> | \bar "|."
}
