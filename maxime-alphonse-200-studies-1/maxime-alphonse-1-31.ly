\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Moderato" 4=84

  \key b \major
  \time 3/4

  #(define measures-one-to-five #{
    \relative {
      b'8.( c-sharp16 d-sharp8. c-sharp16 b8. a-sharp16) |
      g-sharp8.( a-sharp16 b8. a-sharp16 g-sharp8. f-sharp16 |
      d-sharp8) r8 4->~8. f-sharp16( |
      d-sharp8.->) c-sharp16( d-sharp8.->) f-sharp16( d-sharp8.->) g-sharp16( |
      d-sharp8->) r8 4->~8. f-sharp16( |
    }
  #})

  <<
    { \measures-one-to-five }
    {
      s2._\markup { \dynamic "p" \italic "legato" } |
      s2.*3 |
      s2 s8. s16 \< |
    }
  >>
  d-sharp'8.->) c-sharp16( d-sharp8.->) f-sharp16( b8.->) d-sharp16 |
  f-sharp4-^ \f f-sharp,2-> |
  f-sharp'4-^ f-sharp,2-> |
  d-sharp'4-^ d-sharp,2-> |
  b'4-^ b,2-> \breathe |

  b'8.( \p c-sharp16 d-sharp8. c-sharp16 b8. a-sharp16) |
  g-sharp8.( a-sharp16 b8. a-sharp16 g-sharp8. f-sharp16 |
  e-sharp8) r8 4->~8. g-sharp16( |
  e-sharp8.->) d-sharp16( e-sharp8.->) g-sharp16( e-sharp8.->) a-sharp16( |
  e-sharp8->) r8 4->~8. g-sharp16( |
  e-sharp8.->) \< d-sharp16( e-sharp8.->) g-sharp16( c-sharp8.->) e-sharp16 |
  g-sharp4-^ \ff \decresc g-sharp,2-> |
  g-sharp'4-^ g-sharp,2-> |
  e'!4-^ e,2-> |
  d'4-^ e,2-> \! |
  R2.

  <<
    { \measures-one-to-five }
    {
      s2. \p |
      s2.*3 |
      s2 s8. s16 \pp \tweak to-barline ##f \> |
    }
  >>
  d-sharp8.->) c-sharp16( d-sharp8.->) f-sharp16( d-sharp8.->) g-sharp16( |
  d-sharp8->) \! r8 2-> | \bar "|."
}
