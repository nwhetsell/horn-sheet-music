\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Moderato" 4=76

  \key f \major
  \time 4/4

  b'16->( \f c8.~8) r b16->( c8.~8) r16 b,( \p |
  c4->~8)[ r16 b]( c4~8) r\fermata | \bar "||"

  #(define measures-two-to-eight #{
    \relative {
      b'16->( \mf c8.) d16->( c8.) b16->( c8.) d16->( c8) a16( |
      b-flat!8.->) g16( a8.->) f16( g8.->) e16( \> f4) |
      b16->( \! c8.) d16->( c8.) b16->( c8.) d16->( e8) d16( |
      e8.->) f16( e8.->) g16( d8.->) g16( \> c,4) \breathe |
      d16->( \! e-flat8.) f16->( e-flat8.) d16->( e-flat8.) f16->( e-flat8) d-flat16( |
      c8.->) b-flat!16( c8.->) a-flat16( b-flat8.->) g16( a-flat4) |
      b16->( c8.) d!16->( c8.) b16->( c8.) d16->( c8) a!16( |
    }
  #})

  <<
    \measures-two-to-eight
    {
      s1*5 |
      s2 s8. s16 \> s4 |
      s16 \!
    }
  >>
  b-flat'!8.->) g16( a8.->) f16( g8.->) e16( f4) \breathe | \bar "||"

  c'4.\trill( \p b-flat8) a4.\trill( g8) |
  f4.( a8) g4.( b-flat8) |
  a4.( c8) b-flat4.( d8) |
  c2. r4 |

  d4.\trill( c8) b-flat4.\trill( a8) |
  g16 d c-sharp d e f-sharp g a b-flat g, \< b-flat d g a b-flat c |
  d8( \> b-flat) g f! f( e) c' b-flat |
  a2 \! r4 c \f |

  f2-> c4 a8 f |
  c2 b-flat4 a |
  g4 d''~4 \breathe c-sharp16( d) e d |
  c!8( b-flat) a g f( e) c' e, |
  g2( \> f4) \! r | \bar "||"

  \measures-two-to-eight
  b-flat!8.->) g16( a8.->) f16( g8.->) e16( f8.->) a16( |
  <<
    { \repeat unfold 4 { f8.) a16( } }
    { s8. s16 \> }
  >> |
  \repeat unfold 2 { f8.) a16( } f2) \! | \bar "|."
}
