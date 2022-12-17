\version "2.24.0"

\include "../sf-accent.ily"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro moderato" 4=104

  \key f \major
  \time 2/4

  #(define measures-one-to-eighteen #{
    \relative {
      f'4 \mf g8-. a-. |
      b-flat4.-> a8-. |
      g4 a8-. b-flat-. |
      c4.-> b-flat8-. |
      a4 \breathe b-flat8-. c-. |
      d4.-> e8-. |
      f4.-> e8-. |
      d4.-> c8-. |
      b-flat4.-> a8-. |
      g4.-> f8-. |

      c'8-. c,-. r c'( \p |
      d8 c b-flat g |
      e8 c e g) |
      f8( a) g( b-flat) |
      a8( c) b-flat( d) |
      c4 r8 c( |
      d8 c b-flat g |
      e8 c e g) |
    }
  #})

  <<
    { \measures-one-to-eighteen }
    {
      s2*5 |
      s2 \< |
      s2 \> |
      s2 |
      s2 \! |
    }
  >>
  f'8( \tweak to-barline ##f \< a) g( b-flat) |
  a8( c) b-flat( d) |
  c4 \! r8 c-. \f |

  e-flat8-^ 4\sf-accent c8-. |
  d8-^ 4\sf-accent \breathe b-flat8-. \p |
  d8-^ 4\sf-accent b-flat8-. |
  c8-^ 4\sf-accent a8-. \< |
  c8-^ 4\sf-accent a-flat8-. |
  c8-^ 4\sf-accent g8-. |
  c8-^ 4\sf-accent \! r8 |

  <<
    { \measures-one-to-eighteen }
    {
      s2*5 |
      s2 \tweak to-barline ##f \< |
      s2 \! |
      s2 \tweak to-barline ##f \> |
      s2 |
      s2 \! |
      s2*7 |
      s2 \< |
    }
  >>
  f,8( a) 8( c) |
  c8( \f a) 8( f) |
  f2 | \bar "|."
}
