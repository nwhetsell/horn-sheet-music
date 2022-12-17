\version "2.24.0"

\include "../sf-accent.ily"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro" 4=112

  \key b-flat \major
  \time 4/4

  #(define measures-one-to-six #{
    \relative {
      b-flat'8 \p d c b-flat8 8 a g f |
      b-flat4.( \tweak to-barline ##f \< d8) c4.( e-flat8) |
      d4.( f8) e-flat4.( g8) |
      f2. \! r4 |
      \repeat unfold 2 {
        e-flat4.\sf-accent( c8) \! b-flat4( a) |
      }
    }
  #})

  \measures-one-to-six
  b-flat'4 \< b c c-sharp |
  d2. \mf r4 |

  r8 d \p \< e-flat f b-flat,4. \> c8-. \! |
  d4.-> b-flat8-. f4.-> r8 |
  e-flat4-^ \mf g-^ b-flat-^ e-flat-^ |
  g2.-> r4 |
  d,4-^ f-^ b-flat-^ d-^ |
  f2.-> r4 |
  \repeat unfold 2 {
    e-flat4.\sf-accent( c8) \! b-flat4( a) |
  }
  c4 a f e-flat |
  d2. r4 |

  r8 d' \mf \< b-flat a g4. \> f8-. \! |
  e-flat4.-> d8-. c4.-> r8 |
  c4-^ \f e-flat-^ g-^ c-^ |
  e-flat2.-> r4 |
  f,,4-^ a-^ c-^ f-^ |
  a2.-> r4 | \bar "||"

  \measures-one-to-six \breathe
  f4 \tweak to-barline ##f \> e e-flat c |
  b-flat2. \! r4 | \bar "|."
}
