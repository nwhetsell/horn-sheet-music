\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegretto" 4=104

  \key b-flat \major
  \time 4/4

  \partial 4 { f'4( \p } |
  \stemUp
  b-flat8) r8 4( f8) r8 4-. |
  b-flat2\sf( \> f8) \! r8 4( |
  \stemNeutral
  c'8) r8 4( f,8) r8 4-. |
  c'2\sf( \> f,8) \! r8 4( \< |
  \stemUp b-flat8) \stemNeutral r g4( c8) r a4( |
  d8) \! r b-flat4( e-flat8) r c4-. |

  \override DynamicLineSpanner.staff-padding = #2.5
  f2->~( \f \< 8 g f g) |
  e-flat2~( \! 8 \> f e-flat f) |
  d8( \mf e-flat d b-flat) c( d c a) |
  b-flat8( c b-flat g) e-flat( c' a f) |
  \override DynamicLineSpanner.staff-padding = #3
  d8[ \tweak Y-offset #4 \breathe b-flat' g e-flat] c( \< d) e-flat-. e-. |
  f8( a) g-. \! f-. e( \tweak to-barline ##f \> f) g-. a-. |
  \stemUp
  b-flat2 \! r4 f( |
  \revert DynamicLineSpanner.staff-padding


  b-flat8) r8 4( f8) r8 4-. |
  b-flat2\sf( \> f8) \! r8 4( |
  \stemNeutral
  d'8) r8 4( b-flat8) r8 4-. |
  d2\sf( \> b-flat8) \! r8 d4( |
  f8) r8 4( d8) r8 4-. |
  f2\sf( \> d8) \! r8 r4 |

  \stemUp
  b-flat8_\markup { \dynamic "f" \italic "senza ritardare" } f b-flat f \repeat unfold 2 { b-flat f16 a } |
  b-flat2 r | \bar "|."
}
