\version "2.22.0"

\language "english"

tonic = g

music = \relative {
  \key \tonic \major
  \time 6/4

  \tempo "Adantino grazioso"

  R1.
  g'4( \p f-sharp b,) e( d g,) |
  a2~8 b c2 r4 |
  e,2 f-sharp8 g a b c d e f-sharp |
  b2.~8 r r4 r |
  g4( f-sharp b,) e( d g,) |
  a-sharp2~8 b c-sharp2. |
  \mark \default
  f-sharp,4. g-sharp8 a-sharp b c-sharp d e f-sharp g-sharp a-sharp |
  d2.~8 r r4 r |
  d4( b g) e( f-sharp g) |
  d2~8 e f-sharp2 r4 |
  c'4( a f) d( e f) |
  c2~8 d e2 r4 |
  e4( \< a, b) c2 d8 e |
  f-sharp2.( \> e2) \! r4 |
  \mark \default
  e4( \< a, b) c-sharp2 d8 e |
  f2.( \> f-sharp2.) |
  g4( \p f-sharp b,) e( d g,) |
  a2~8 b c2 r4 |
  e,2 f-sharp8 g a b c d e f-sharp |
  b1. \< |
  \mark \default
  b4( \mf a e) g( f-sharp c) |
  e4( \< d g,) a( b g) \! |
  b2.-^ c4( d b) |
  e2. e4( f-sharp d) |
  g1.~ \pp |
  g2.~8 r r4 r |
  R1. \bar "|."
}
