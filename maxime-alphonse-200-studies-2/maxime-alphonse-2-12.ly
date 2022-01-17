\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Moderato" 4=72

  \key a \minor
  \time 4/4

  #(define measures-one-to-eight #{
    \relative {
      a'8( \p \< g-sharp) a b d( \> c) b a |
      b8.( \> a16) \! b4~2 \breathe |
      a8( \p \< g-sharp) a b d( \> c) b a |
      e8.( \> f!16) \! e4~2 \breathe |
      f-sharp8.( \cresc e16) f-sharp8-- a-- g-sharp8.( f-sharp16) g-sharp8-- b-- |
      a8.( g-sharp16) a8-- c-- b2 \breathe |
      b8.( a16) b8-- d-- c8.( b16) c8-- e-- |
      d8.( c16) d8-- f!-- e2 |
    }
  #})

  \measures-one-to-eight

  f''4~( \f 16 f e f) d4 b8 d |
  f4~( 16 f e f) d2 \breathe |
  d4~( 16 c d c) b4 g-sharp8 b |
  d4~( 16 c d c) b2 \breathe |
  b8->( f!) r b-! a->( b) r b |
  d16->( c) d c c( b) 16 a b2 \breathe |
  b8->( f-sharp) r b-! a->( g-sharp) r b |
  b16->( a) b a a( g-sharp) 16 f-sharp g-sharp2 \breathe |

  \measures-one-to-eight

  g'4~( \ff 16 f g f) e4 b8 e |
  g4~( 16 f g f) e2 \breathe |
  e4~( 16 d \dim e d) b4 a8 b |
  e4~( 16 d e d) b2 |

  \tempo "Rall."
  a8( \p g-sharp) r a16 b d8( c) r b16 a |
  b8.( a16) b4~4 r\fermata |
  \tempo "Più vivo" 4=100
  a8.-^ g-sharp16-. g8-. f-sharp-. f8.-^ e16-. d-sharp8-. d-. |
  c8.-^ a16-. c8-. e-. c8. a16 c8 \< e |
  a2 \> r \! | \bar "|."
}
