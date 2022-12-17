\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Andantino" 4=63

  \key g \major
  \time 2/4

  #(define measures-one-to-six #{
    \relative {
      g'8( \f d') g,16( d' g, e') |
      d4( g8-!) r |
      g,8( e') g,16( e' g, g') |
      d4( b8) r \breathe |
      a16->( d d,8~16) c'( b a) |
      b16->( g' g,8~8) r |
    }
  #})

  \measures-one-to-six
  c-sharp''16->( e a,8~16) g'( f-sharp e) |
  f-sharp16->( a, d8~8) r |

  c!8.( \p \< d16) c( b c d) |
  c8( f-sharp c4-.) |
  c8.( \tweak to-barline ##f \> d16) c( b c d) |
  b2 \! \breathe |
  b8.( \mf c16) b( a b c) |
  b8( e b4-.) |
  c-sharp8.( \< d16) e( f-sharp g e) |
  d4( \> d,) \! \breathe |

  \measures-one-to-six
  a'16->( d d,8~16) c'( b a) |
  b16->( d, g8~8) r | \bar "|."
}
