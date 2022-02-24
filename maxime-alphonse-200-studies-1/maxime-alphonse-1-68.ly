\version "2.22.0"

\include "../sf-accent.ily"

\relative {
  \language "english"

  \transposition f

  \tempo "Lento" 4=63

  \key e-flat \major

  \time 4/4
  g'4( \p e-flat~4) r8 f |
  g8-^ b-flat e-flat,4 \breathe e-flat'8.->( c16) d8.->( b-flat16) |
  c8.->( a-flat16) b-flat4~ \tuplet 3/2 4 { 8 \< c b-flat a-flat b-flat c \! } |
  b-flat8 a-flat4-> g-> f-> g16 e-flat |
  f4->~8 g16 e-flat f8-> g16 e-flat f8-> g16 e-flat |
  b-flat'2.\sf-accent r4 |
  g4( e-flat~4) r8 f | \bar "||"
  \time 2/4
  g8-^ b-flat e-flat,4 \breathe | \bar "||"

  \time 4/4
  b-flat'4( \mf g~4) r8 a |
  b-flat8-^ d g,4 \breathe g'8.->( e-flat16) f8.->( d16) |
  e-flat8.->( c16) d4~ \tuplet 3/2 4 { 8 \< e-flat d c d e-flat \! } |
  d8 c4-> b-flat-> a-> b-flat16 g |
  a4->~8 b-flat16 g a8-> b-flat16 g a8-> b-flat16 g |
  d'2.\sf-accent r4 |
  b-flat4( g~4) r8 a | \bar "||"
  \time 2/4
  b-flat8-^ d g,4 \breathe | \bar "||"

  \time 4/4
  g4( \p e-flat~4) r8 f |
  g4( e-flat2) r4 |
  b-flat4( g~4) r8 a-flat! |
  b-flat2 r |
  \repeat unfold 4 { e-flat4-- } |
  e-flat1\fermata | \bar "|."
}
