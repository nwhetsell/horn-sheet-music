\version "2.24.0"

\include "settings.ily"

\relative {
  \language "english"

  \transposition f

  \tempo "Moderato" 4=96

  \key g \major
  \time 3/4

  g'8_\markup { \dynamic "mf" \italic "legato" }( d g b a f-sharp |
  g8 b a c b d) |
  c8( g c e d b |
  c8 e d f-sharp? e g |
  f-sharp8)[ \breathe d]( e d c d |
  a8 d e d c d) |
  #(if preserve-line-breaks? #{
    \shape #'(
      ((0 . 0) (0 . 0) (0 . 0) (0 . -1.5))
      ()) Slur
  #})
  b8( g d b d g |
  a8 f-sharp d g, d' f-sharp) |
  g8_( e c-sharp b' a g |
  \stemDown f-sharp8)[ \breathe d']( c-sharp d f-sharp, d') \stemNeutral |
  g,8( d' c-sharp d g, d') |
  a8( d c-sharp d a d) |
  b8( e d c-sharp) b c-sharp |
  d2 r4 |

  g,8( d g b a f-sharp |
  g8 b a c! b d) |
  c8( g c e d b |
  c8 e d f-sharp e g |
  f-sharp8)[ \breathe d]( e d c d |
  a8 d e d c d) |
  b8( g c a d b |
  e8 c a c a f-sharp) |
  a2.( |
  g2.) | \bar "|."
}
