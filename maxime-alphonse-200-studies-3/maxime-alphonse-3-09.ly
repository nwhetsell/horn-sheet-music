\version "2.22.0"

\include "../sf-accent.ily"

\relative g' {
  \language "english"

  \transposition f

  \tempo "Moderato" 4=84

  \key g \major
  \time 3/4

  #(define measures-one-to-five #{
    d'2) g,8.( e'16) |
    e2 g,8.( g'16) |
    d2 \breathe e,4( |
    \stemUp b'2) \stemNeutral e,8.( c'16) |
    c2 e,8.( e'16) |
    b2 \breathe
  #})

  <<
    {
      \partial 4 { g4( \mf } |
      \measures-one-to-five d4( |
    }
    {
      s4 |
      \repeat unfold 5 { s2-> s4 | }
    }
  >>

  a2->) d8.( g,16) |
  g2-> d'8.( f-sharp,16) |
  f-sharp2-> \breathe e'4( |
  b2->) e8.( a,16) |
  a2-> e'8.( g,16) |
  g2-> \breathe g'4( |
  d2->) g8.( c-sharp,16) |
  c-sharp2-> g'8.( b,16) |
  b2( c-sharp4 |
  d4) f-sharp8.-^( d16) a4 |
  e'8.( c-sharp16) a4 e'8.-^( c-sharp16) |
  d4 r16 d, \< e f-sharp g a b c! |

  d8.->( \! g,16) 4.( \< e'8) |
  d8.->( \! g,16) 4.( \< g'8) |
  d4-> \! r16 b, \< c d e f-sharp g a |
  b8.->( \! e,16) 4.( \< c'8) |

  b8.->( % This accent is not in the printed edition.
    \! e,16) 4.( \< e'8) |

  b2 \! \breathe b,8.( b'16) |

  c-sharp2\sf-accent b,8.( b'16) |
  d2\sf-accent b,8.( b'16) |
  d-sharp4..\sf-accent c-sharp,16^\markup { \fontsize #2 \bold "A" }_\markup { \italic "senza durezza" }( d-sharp8.) c-sharp'16( |
  d-sharp2) d-sharp,8.( d-sharp'16) |
  e-sharp4.. \cresc d-sharp,16( e-sharp8.) d-sharp'16( |
  e-sharp2) e-sharp,8.( e-sharp'16) |
  f-sharp4.. \stemDown e-sharp,16( \stemNeutral f-sharp8.) e-sharp'16( |
  f-sharp2) f-sharp,8.( f-sharp'16) |
  g4.. \stemDown f-sharp,16( \stemNeutral g8.) f-sharp'16( |
  g2.) \! |

  r2 g,4( \mf |
  <<
    { \measures-one-to-five b,4( | }
    {
      s2.*5 |
      \stemUp s2 \stemNeutral
    }
  >>
  b'4..) a,16( b8.) a'16( |
  \stemUp b2) \stemNeutral \breathe d,4( |
  d'4..) c-sharp,16( d8.) c-sharp'16( |
  d2) \breathe g,4( |
  g'4..) f-sharp,16( g8.) f-sharp'16( |
  g2) r4 | \bar "|."
}
