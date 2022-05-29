\version "2.22.0"

\include "../sf-accent.ily"

\relative {
  \language "english"

  \transposition f

  \tempo "Adagio" 4=56

  \key b-flat \major
  \time 3/4

  #(define measures-one-to-seven #{
    \relative {
      d''8->( f,) r e f g |
      f4 r8 b-flat4 c8 |
      d8->( f,) r e f g |
      f4 r8 b-flat4 \< d8 |
      f8( e-flat!) \! r d \f \tuplet 3/2 { f( e-flat \> d) } |
      f8( e-flat) \! r d \tuplet 3/2 { 8( c b-flat) } |
    }
  #})

  <>_\markup { \dynamic "mf" \italic "molto espressivo" }
  \measures-one-to-seven
  e-flat''8( d) \! r8 8 \tuplet 3/2 { 8( c b-flat) } |
  d8( \> c~4) \! r |

  e-flat8->( \mf g,) r f-sharp g a |
  g4 r8 c4 d8 |
  e-flat8->( g,) r f-sharp g a |
  g4 r8 c4 \< e-flat8 |
  g8->( f) \! r e-flat \f \tuplet 3/2 { g( f e-flat) } |
  g8->( f) r e-flat \> \tuplet 3/2 { 8( d c) } |
  f8->( e-flat) \! r8 8 \tuplet 3/2 { 8( d c) } |
  e-flat8->( d) r8 8 \mf \< e-flat f |

  b-flat,2~ \tuplet 3/2 { 8 c d } |
  g,2~ \f \tuplet 3/2 { 8 a \cresc b-flat } |
  d,4. \breathe e-flat4 e8-- |
  g8\sf-accent( f) r e \f \tuplet 3/2 { g( f e) } |
  g8( f) r e \mf \tuplet 3/2 { g( f e) } |
  f8 \> g a b-flat~ \tuplet 3/2 { 8 c c-sharp } |

  <> \mf
  \measures-one-to-seven
  b-flat8( d,) r g \tuplet 3/2 { f( d c) } |
  c8( b-flat~4) r | \bar "|."
}
