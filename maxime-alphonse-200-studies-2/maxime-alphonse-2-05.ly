\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Lento" 4.=40

  \key a-flat \major
  \time 12/8

  #(define measures-one-to-five #{
    \relative {
      e-flat'8 a-flat b-flat c2.( e-flat4) r8 |
      e-flat,8 a-flat b-flat c2.( f-flat4) r8 |
      e-flat,8 a-flat c e-flat4.( a-flat4.) \breathe a-flat,4 b-flat8 |
      c4 d-flat8 e-flat4.~8 f e-flat c b-flat a-flat |
      f1. \breathe |
    }
  #})

  <> \p \measures-one-to-five
  f'8 b-flat c d-flat2.( f4) r8 |
  f,8 b-flat c d-flat2.( g-flat4) r8 |
  f,8 b-flat d-flat f4.( g!4.) \breathe g,4 a-flat8 |
  a4 b-flat8 f'4.~8 g f~8 e-flat d-flat |
  c1. \breathe |

  e-flat4.~( 8 c a-flat f4. e-flat) \breathe |
  e-flat'4.~( 8 c g e-flat4. c) \breathe |
  e-flat'4.~( 8 b-flat g e-flat4. b-flat) \breathe |
  \once \override Slur.positions = #'(0 . 2) g4( c8 e-flat4 g8 c4) e-flat8->~8 d-flat c |
  b-flat1. \breathe |

  d-flat4.~( 8 b-flat g e-flat4. d-flat) \breathe |
  \override Slur.positions = #'(2 . 0.5)
  d-flat'4.~( 8 b-flat f d-flat4. b-flat) \breathe |
  d-flat'4.~( 8 a-flat f d-flat4. a-flat) \breathe |
  \revert Slur.positions
  e-flat4( a-flat8 c4 e-flat8 a-flat4) c8->~8 b-flat a-flat |
  c1. \breathe |
  e-flat,,4( g8 b-flat4 e-flat8 g4) b-flat8->~8 a-flat g |
  b-flat2.~4. r \breathe |

  <> \pp \measures-one-to-five
  c,8 f g a-flat2.( c4) r8 |
  c,8 f g a-flat2.( d-flat4) r8 |
  c,8 e-flat g c4.( e-flat) c4( b-flat8) |
  a-flat4( c8) e-flat,4.~8 f e-flat c b-flat a-flat |
  a-flat1. | \bar "|."
}
