\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegretto" 4=104

  \key g \major
  \time 4/4

  #(define measures-one-to-seven #{
    \relative {
      g'8.->( d16) 8 8 4 r |
      a'8.->( d,16) 8 8 4 r |
      b'8.->( g16) 8 8 4 r |
      c8.->( g16) 8 8 4 r |
      f-sharp8.->( d'16) 8 8 4 r |
      g,8.->( d'16) 8 8 4 r |
      c8.( a16) b8.( g16) a8.( f-sharp16) g8.( e16) |
    }
  #})

  <> \mf
  \measures-one-to-seven
  f-sharp'8.( d16) e8.( c-sharp16) d2~ \< |
  d2 \> r8 \! 8( \p \< e f-sharp) |

  <> \!
  \measures-one-to-seven
  e8.( c16) d8. 16 g,2 | \bar "|."
}
