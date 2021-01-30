\version "2.22.0"

\language "english"

\relative {
  \transposition f

  \tempo "Larghetto"

  \key e-flat \major
  \time 12/8

  b-flat'4.~( \p \< b-flat8 g b-flat) e-flat( b-flat e-flat) g( e-flat g) |
  b-flat2.~ \> b-flat8 \! a-flat-.-> f-.-> d-.-> b-flat-.-> a-flat-.-> |
  g4.~( \< g8 e-flat g) c( g c) e-flat( c e-flat) |
  g2.~ \> g8 \! f-.-> d-.-> b-.-> g-.-> f-.-> |
  e-flat4.~8 \< a-flat-. c-. e-flat4.~ e-flat8 d-. c-. |
  b-flat4.~8 e-flat-. g-. b-flat4.~8 a-flat-. g-. |
  g16->( \! f a-flat g f e-flat) e-flat->( d f e-flat d c) c->( b-flat d c b-flat a-flat) a-flat->( g b-flat a-flat g f) |
  e-flat2.~4 r8 r4. |

  g16( \< f-sharp g b d f) \! a-flat8->( g d) f4( \> e8 e-flat4.) |
  f,16( \< e f a c e-flat) \! g-flat8->( f c) e-flat4( \> d8 b-flat4.) |
  b-flat16( \< a b-flat f d') b-flat-. c( b c g e-flat') c-. d( c-sharp d b-flat f') d-. e-flat!( d e-flat c g') e-flat-. \! |
  f8( b-flat a c \f \> b-flat f) \! d( f e g \> f d) \! |
  b-flat16( f) d-. f-. b-flat-. d-. f( d) b-flat d-. f-. b-flat-. f8-> e-> e-flat-> d16\(( e-flat32 d c16 d) \> e-flat\fermata a,\) |
  b-flat8~( \< \repeat unfold 4 { b-flat16 c } b-flat16 c) b-flat4.~\startTrillSpan \> b-flat4 a32\stopTrillSpan( b-flat c b-flat) |

  b-flat4.~( \p \< b-flat8 g b-flat) e-flat( b-flat e-flat) g( e-flat g) |
  b-flat2.~ \> b-flat8 \! a-flat-.-> f-.-> d-.-> b-flat-.-> a-flat-.-> |
  g4.~( \< g8 e-flat g) c( g c) e-flat( c e-flat) |
  g2.~ \> g8 \! f-.-> d-.-> b-.-> g-.-> f-.-> |
  e-flat4.~( e-flat16 a-flat) a-flat( c) c( e-flat) e-flat4.~16 d( f e-flat d c) |
  b-flat4.~( b-flat16 e-flat) e-flat( g) g( b-flat) b-flat4.~8 a-flat-. g-.
  g16->( f a-flat g f e-flat) e-flat->( d f e-flat d c) c->( b-flat d c b-flat a-flat) a-flat->( g b-flat a-flat g f) |
  e-flat4.~4 r8 b-flat'4( \< d8 g4 \> f8) \! |
  e-flat4.~4 r8 b-flat,4( \< d8 g4 \> f8) \! |
  \acciaccatura { g16 f } e-flat2.~4.~4 r8\fermata | \bar "|."
}
