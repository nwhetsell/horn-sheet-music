\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro moderato" 4=116

  \key g \major
  \time 3/4

  d''4-^ \f b-^ g-^ |
  b8-^ a-^ g2-> |
  d'4-^ b-^ g-^ |
  c8-^ e-^ d2-> \breathe |
  g4.-> f-sharp8 e d |
  d8( \> c) c2 |
  c8 \< e g \> f-sharp e d \! |
  c8( b) b2 \breathe |

  d4-^ b-^ g-^ |
  b8-^ a-^ g2-> |
  d'4-^ b-^ g-^ |
  c8-^ e-^ d2-> \breathe |
  c-sharp4.-> a8 b c-sharp |
  d8( e) f-sharp2 | % The slur is not in print editions.
  e8 \< f-sharp g \> e c-sharp e \! |
  e8( d) d2 \breathe | \bar "||"

  \repeat unfold 3 { f-sharp4-^ } |
  g8( \> d) d2 \! |
  \repeat unfold 3 { f-sharp4-^ } |
  g4( \> d2) \! \breathe |
  d-sharp4-_ \pp \repeat unfold 2 { d-sharp4-_ } |
  e8( \> b) b2 \! |
  \repeat unfold 3 { d-sharp4-_ } |
  e4( \> b2) \! | \breathe
  c-sharp4.-> \f d8-! c-sharp-! e-! |
  e8( \> d) d2 \! | \breathe
  c-sharp8.-> d16 c-sharp4 e |
  e4 d2 \breathe |
  c-sharp4.-> \p d8-. c-sharp-. e-. |
  e8( \> d) d2 \! | \breathe
  c-sharp8-. e-. g-. e-. c-sharp-. e-. |
  d4-^ d,2-> \breathe | \bar "||"

  d'4-^ \f b-^ g-^ |
  b8-^ a-^ g2-> |
  d'4-^ b-^ g-^ |
  c!8-^ e-^ d2-> \breathe |
  g4.-> f-sharp8 e d |
  d8( \> c) c2 |
  c8 \< e g \> f-sharp e d |
  c8( b) \! b2 \breathe |

  d4-^ \p b-^ g-^ |
  b8-^ a-^ g2-> |
  d'4-^ b-^ g-^ |
  c8-^ e-^ d2-> \breathe |
  c4.-> \mf a8 g f-sharp |
  d'8( \> b) g2 |
  \tempo "Rall."
  f-sharp8 \< a c a f-sharp a |
  a8( \> g) g2 \! | \bar "|."
}
