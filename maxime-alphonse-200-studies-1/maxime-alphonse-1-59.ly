\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Larghetto" 4.=50

  \key b-flat \major
  \time 9/8

  b-flat'8( \p c d) 8( c b-flat f4.) |
  g8( a b-flat) 8( a g b-flat,4.) \breathe |
  b-flat8->( f') d d->( b-flat') f f->( d') b-flat |
  f'8->( e-flat) c f->( d) b-flat f'->( c) a |
  f2.-> r4. |
  b-flat8( c d) 8( c b-flat f4.) |
  g8( a b-flat) 8( a g d4.) \breathe |
  d8->( \< a') f f->( d') a a->( f') d \! |
  a8->( g) e a->( f) d a'->( e) c-sharp |
  d2. r4. | \bar "||"

  f4.( \f c'!~8) c( d) |
  c8( b-flat d) f4( d8 b-flat4.) |
  f4.( c'~8) c( d) |
  c8( b-flat d) f4. r |
  f,4.( \p c'~8) c( d) |
  c8( b-flat d) f4( d8 b-flat4.) |
  f4.( c'~8) c( d) |
  c8( b-flat d) f,4. r |

  #(define measure-nineteen #{
    \relative {
      f''8->( e-flat) c e-flat->( d b-flat) d->( c) a |
    }
  #})
  #(define measures-nineteen-to-twenty-two #{
    \relative {
      \measure-nineteen
      b-flat'4-> f8-. c'4-> f,8-. d'4-> f,8-. |
      \measure-nineteen
      b-flat2. r4. |
    }
  #})
  <<
    { <> \mf \measures-nineteen-to-twenty-two }
    { s1*9/8*3 s2. \> s4. \! | }
  >>
  <> \p \measures-nineteen-to-twenty-two \bar "||"

  b-flat8( c d) 8( c b-flat f4.) |
  g8( a b-flat) 8( a g b-flat,4.) \breathe |
  b-flat8->( f' d) d->( b-flat' f) f->( d' b-flat) |
  \override DynamicLineSpanner.staff-padding = #2.25
  f'8( \> e-flat c) \! f( \> d b-flat) \! f'( \> c a) \! |
  \revert DynamicLineSpanner.staff-padding
  f2. r4. |
  b-flat8( c d) 8( c b-flat f4.) |
  g8( a b-flat) 8( a g b-flat,4.) \breathe |
  b-flat8->( f d') d->( b-flat f') f-> d b-flat' |
  \repeat unfold 3 { b-flat8->( f d') } |
  b-flat2.\fermata \> r4. \! | \bar "|."
}
