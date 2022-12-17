\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegretto" 4=92

  \key a \minor
  \time 3/4

  #(define measures-one-to-five #{
    \relative {
      \stemDown a'4-^ \tweak X-offset #-0.5 \f c-^ b-^ |
      a2-> c8-. a-. |
      b8-. c-. a4 \breathe \stemNeutral c8-. \< d-. |
      e4.->( \f f-sharp8) e-. c-. |
      e2-> r4 |
    }
  #})

  \measures-one-to-five

  c''4-^ e-^ d-^ |
  c2-> e8-. c-. |
  d8-. e-. c4 \breathe e8-. f?-. |
  g4.-> e8 c e |
  g,2 r4 |

  f-sharp4.-> a8-. g-sharp4 |
  a4.-> c?8-. b4 |
  c4.-> e8-. d4 |
  e2-> \breathe e8( c) |
  a2 d8( b) |
  g-sharp2 c8( a) |
  f!2 b8( g-sharp) |
  \tempo "Rall." e2 \> f-sharp8 g-sharp \! \breathe | \bar "||"

  \tempo "Tempo"
  \measures-one-to-five

  f-sharp4-^ a-^ g-sharp-^ |
  f-sharp2-> a8-. f-sharp-. |
  g-sharp8-. a-. f-sharp4 \breathe a8-. \< b-. |
  c-sharp4.->( \f d8) c-sharp-. b-. |
  c-sharp2-> r4 |

  c-sharp,4-^ e-^ d-^ |
  c-sharp2-> e8-. c-sharp-. |
  d8-. e-. c-sharp4 d8-. e-. |
  f-sharp8-. \> e-. f-sharp g-sharp-. \! a4 |
  r4 r e |
  c-sharp8-> e a4 r |
  r8 e c! e a4 |
  \repeat unfold 2 {
    a4.-> c8-. a4 |
  }
  a2.-> | \bar "|."
}
