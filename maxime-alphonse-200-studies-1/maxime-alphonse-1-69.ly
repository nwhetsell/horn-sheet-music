\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Lento" 4=72

  \key d \minor

  #(define measures-one-to-three #{
    \relative {
      \time 3/4
      <> \p
      \repeat unfold 2 {
        d'4 a'4. f8 |
      }
      d4 4 r |
    }
  #})

  \measures-one-to-three \bar "||"

  \time 2/4
  r8 d'( f b-flat |
  a8-^) d,( f b-flat |
  a8-^) f( a e' |
  d8-^) a( d \< g |
  f4--) \! 4-_ |
  r8 f( d c |
  d4) 4-_ |
  r8 d( a g |
  a4) 4-_ |
  R2

  d8.->( \mf c16 b-flat8. a16 |
  b-flat2) |
  b-flat8.->( a16 g8. f16 |
  g2) \breathe |

  g8.^\markup { \italic "crescendo poco a poco" }( \< e'16 d8. \> f,16) |
  g8.( \< e'16 d8. \> g,16) |
  g-sharp8.( \< f'16 e8. \> g-sharp,16) |
  a8.( \< f'16 e8.)[ \! \breathe a,16]( \tweak to-barline ##f \< |
  f'8. \sf \> e16 \! d8. c16 |
  b-flat8. a16 g8.) f16( \tweak to-barline ##f \< |
  e'8. \sf \> d16 \! c8. b-flat16 |
  a8. g16 f8.)[ \tweak Y-offset #3 \breathe e16]( \tweak to-barline ##f \< |
  d'8. \sf \> c16 \! b-flat8. \> a16 |
  g8. f16 e8.) \! d16 |

  \tuplet 3/2 4 {
    b-flat'8( \p g d) b-flat'( g d) |
    e8( g b-flat) d( b-flat g) \breathe |
    e8 g b-flat d b-flat g |
    e'8 d b-flat g d g |
    b-flat8 e d b-flat g e |
    e8( f) g e( f) g |
  }
  a4 r |
  \stemUp \tuplet 3/2 4 { e8 \< f g a b-flat c-sharp } \stemNeutral |
  d4 \f r |  \bar "||"

  \measures-one-to-three \bar "|."
}
