\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Moderato" 4=88

  \key c \major
  \time 2/4

  #(define measures-one-to-five #{
    \relative {
      g'8( c) 8( g) |
      g8( d') 8( g,) |
      g8( e') 8( c) |
      f8->( c) g( c) |
      e8->( c) g( c) |
    }
  #})

  <>_\markup { \dynamic "p" \italic "molto legato" }
  \measures-one-to-five
  b'8( d) c( g) |
  d'8( g,) e'( g,) |
  f'8( g,) e'( g,) |
  d'4 r |

  <<
    {
      \override DynamicLineSpanner.staff-padding = #2
      a8( \< d) \! 8( \> a) \! |
      a8( \< e') \! 8( \> a,) \! |
      a8( \< f') \! 8( \> d) \! |
      \revert DynamicLineSpanner.staff-padding
    }
    \new Dynamics {
      s2 \cresc |
      s2 |
      s4. s8 \! |
    }
  >>
  g8->( d) a( d) |
  f8->( \f \decresc d) a( d) |
  b8( g) 8( d') |
  c8( g) 8( e') |
  d8( g,) 8( f') |
  e4 \! r |

  f8->( \mf c) a( c) |
  f8->( c) g( c) |
  e8->( c) g( c) |
  e8->( c) f,( c') |
  d8->( a) f( a) |
  d8->( a) f-sharp( a) |
  d8( c) b( a) |
  b8( c) d( b) |
  g4 r |

  <> \p
  \measures-one-to-five
  d'8->( b) g( b) |
  \override DynamicLineSpanner.staff-padding = #3
  c8( \< c,) \! e( \> g) \! |
  \revert DynamicLineSpanner.staff-padding
  c2 | \bar "|."
}
