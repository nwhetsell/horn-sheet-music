\version "2.22.0"

horn-three = \relative {
  \language "english"

  \transposition f

  \key c \major
  \time 3/4

  \tempo "Moderato" 4=66

  \stemUp
  a'4.( \tweak X-offset #0 #(make-dynamic-script (markup #:dynamic "p" #:normal-text (#:italic "dolce cantando"))) c8 b a |
  g4. a8 f4 |
  e2) r4 |
  R2.*2

  r4 r r8 e( |
  a4. c8 b a |
  g4. a8 f4 |
  e4) r r |
  \stemNeutral
  R2.*3

  r4 r r8 g #(make-dynamic-script (markup #:normal-text (#:italic "più") #:dynamic "f")) \< |
  d'8( e f4. \! e8 |
  d8 b c a b g |
  a2.~ \> |
  a4) \! r4 a \p \dim |
  b8( g a f e d~ |
  \tuplet 3/2 { d8 e f } g2~ |
  g4) \! r r |
  R2.*2

  % 13
  a4( \< b c |
  f4 \> e d) |
  c2( \tweak X-offset #0 #(make-dynamic-script (markup #:dynamic "mp" #:normal-text (#:italic "espress."))) \< b4 |
  a4 g f) |
  g4.( a8 b c~ |
  c8 \! d b g f g) |
  a4( \> c b |
  g2.~ \< |
  g2.) |
  b-flat2.( \> |
  a4) \! r r |
  R2.*2

  r8 e( \mf b'4. d8 |
  \tuplet 3/2 { c8 b a } b g a c |
  b8 \< g a c \tuplet 3/2 { b \! a g } |
  g8 \> a e2~ |

  % 14
  e4) \! r r |
  R2.
  r8 e( \p b'4. d8 |
  \tuplet 3/2 { c8 b a } b g a c |
  b8 \< g a \! c \tuplet 3/2 { b a g) } |
  g8( a e2~ \> |
  e4) \! r4 r8 g \mf |

  d'8( \< e8 f4. e8 |
  d8 \! b c a b g) |
  a2.~ \> |
  a2. \< |
  b2 \> r8 e, \p | \bar "||"

  \tempo "Poco più lento"
  \stemUp
  a4.( c8 b a |
  g4. a8 f4 |
  e2 d4) |
  \stemNeutral
  \tempo "rit."
  c2.~ \dim |
  c2.~ |
  \tempo "a tempo"
  c2.~ |
  c2. \! | \bar "|."
}
