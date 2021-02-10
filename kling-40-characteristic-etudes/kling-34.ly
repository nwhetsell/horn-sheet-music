\version "2.22.0"

\include "settings.ily"

\relative {
  \language "english"

  \transposition f

  \tempo "Andante"

  \key g \minor
  \time 4/4

  g'4.( \p d8) d( e-flat b-flat c) |
  d4~( d16 e-flat b-flat e-flat d4) r |
  \clef \bass-clef-name d,4.( e-flat8 d \< c-sharp c a) |
  b-flat2( \> g4) \! r
  \clef "treble" g''4.( \p d8) d( e-flat b-flat c) |
  d4~( d16 e-flat b-flat e-flat d4) r |
  \clef \bass-clef-name d,4.( e-flat8 d \< c-sharp c a) |
  g2. \> r4 \! |

  \clef "treble" b-flat'4.( f8 d f b-flat d) |
  f4~( f16 e-flat c a f4.) r8 |
  b-flat4~16 a( \< b-flat d g f d b-flat a b-flat d g) |
  f4~( \> f16 e-flat c a f4.) \! r8 |
  g16( \< b-flat d-flat e g4) b-flat,16( d-flat e g b4) |
  d-flat,16( \f e g b-flat d-flat b-flat g e d-flat b-flat g e d-flat e g b-flat) |
  f16( b-flat d f b-flat \> d f d b-flat f d b-flat a f e-flat c) |
  \clef \bass-clef-name b-flat2. \p r4 |

  \clef "treble" d''4._\markup { \italic "dolce" }( b-flat8) g( b-flat a f-sharp) |
  g4~( g16 d b-flat' a g4) r |
  <<
    { a8. \< b-flat16 c8. d16 e-flat( \> d f e-flat d c \! b-flat a) }
    { s8 \once \override Staff.TextScript.outside-staff-priority = #240 s_\markup { \musicglyph #"scripts.turn" } s8 s^\markup { \musicglyph #"scripts.turn" } }
  >> |
  g4~( \tuplet 6/4 { g16 d') c-. b-flat-. a-. g-. } f-sharp4 r |
  d'4.( b-flat8) \< g( b-flat a e-flat') |
  e-flat8.( \> d16) \acciaccatura { d16 e-flat } \tuplet 3/2 { d8( c b-flat) } \! b-flat4 \tuplet 3/2 { a8( c e-flat) } |
  d16-. \< b-flat( a b-flat f-sharp g c-sharp, d) e-flat( d c-sharp d b-flat' a g f-sharp) \! |
  g4~( \tuplet 6/4 {g16 \> c-sharp, d a b-flat f-sharp} \! g4) r |

  \clef \bass-clef-name d4.^\markup { \italic "rit" }( \> e-flat8) \tuplet 3/2 4 { e-flat8( d c) c( b-flat a) } |
  g1\fermata \! | \bar "|."
}
