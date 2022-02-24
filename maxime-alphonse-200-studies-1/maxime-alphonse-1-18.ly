\version "2.22.0"

\include "../sf-accent.ily"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro moderato" 4=108

  \key a \major
  \time 4/4

  #(define measures-one-to-nine #{
    \relative {
      a'2( \mf g-sharp8) r a r |
      b2( c-sharp8) r b r |
      a4.->( g-sharp8 a2) \breathe |
      a2( g-sharp8) r a r |
      b2( c-sharp8) r d r |
      c-sharp4.->( b8 c-sharp2) |
      e4.\sf-accent( c-sharp8) a4( e8.) r16 |
      d'4.\sf-accent( b8) a4( e8.) r16 |
      e'8.->( c-sharp16) a8.->( e16) d'8.->( b16) a8.->( e16) |
    }
  #})

  <<
    { \measures-one-to-nine }
    {
      s1*5 |
      s1 \breathe |
      s1*2 |
      s8. \mf \cresc
    }
  >>
  c-sharp''8.->( a16) e8.->( c-sharp16) a'8.->( e16) c-sharp8.->( a16) |
  e'2 \f r |

  <<
    { \measures-one-to-nine }
    { s1*8 s8. \f }
  >>
  c-sharp'8.-> a16-. e8.-> c-sharp16-. a'8.-> f-sharp16-. e8.-> c-sharp16-. |
  a2-> r | \bar "|."
}
