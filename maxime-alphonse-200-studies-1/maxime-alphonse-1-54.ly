\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro" 4=132

  \key d \major
  \time 3/4

  #(define measures-one-to-four #{
    \relative {
      d'4.->( \mf f-sharp8\noBeam a8.) r16 |
      a4.->( f-sharp8\noBeam d8.) r16 |
      c-sharp4.->( e8\noBeam a8.) r16 |
      a4.->( e8\noBeam c-sharp8.) r16 |
    }
  #})

  #(define measures-one-to-nine #{
    \relative {
      \measures-one-to-four
      b4.->( d8\noBeam g8.) r16 |
      g4.->( d8 b4) |
      a4 r8 a'-. f-sharp-. d-. |
      c-sharp8-. e-. d4 r |
      r8 a'-. f-sharp-. d-. c-sharp-. e-. |
    }
  #})

  \measures-one-to-nine
  d'4.->( \cresc f-sharp8\noBeam a8.) r16 |
  f-sharp4.->( a8\noBeam d8.) r16 |
  a4.->( d8\noBeam f-sharp4) |
  f-sharp8->( \f d) 8( a) 8( f-sharp) |
  d'8->( a) 8( f-sharp) 8( d) |
  a2 r4 |

  \measures-one-to-four
  b4.->( d8\noBeam f-sharp8.) r16 |
  f-sharp4.->( d8\noBeam b4) |
  f-sharp4 r8 f-sharp'-. d-. b-. |
  a-sharp8-. c-sharp-. b4 r |
  r8 f-sharp'-. d-. b-. a-sharp-. c-sharp |
  b4.->( \cresc d8\noBeam f-sharp8.) r16 |
  d4.->( f-sharp8\noBeam b8.) r16 |
  f-sharp4.->( b8\noBeam d4) |
  d8->( \f b) 8( f-sharp) 8( d) |
  b'8->( f-sharp) 8( d) 8( b) |
  f-sharp'2.~ |
  f-sharp4. \breathe g8 f-sharp e |

  \measures-one-to-nine
  d4.->( \cresc f-sharp8\noBeam a8.) r16 |
  f-sharp4.->( a8\noBeam d8.) r16 |
  a4.->( d8\noBeam f-sharp8.) \f r16 |
  r8 d \ff c-sharp b a g |
  f-sharp8 b a g f-sharp e |
  d2 r4 | \bar "|."
}
