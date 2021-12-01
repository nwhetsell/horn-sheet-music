\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Moderato" 2=84

  \key e-flat \major
  \time 2/2

  e-flat'8->( \p g) f( a-flat) g( b-flat) a-flat( c) |
  b-flat8->( g) a-flat( f) g( e-flat) f( d) |
  e-flat8->( g) g( b-flat) b-flat( e-flat) e-flat( b-flat) |
  c8( e-flat) d( e-flat) f( e-flat) d( e-flat) |
  c8->( e-flat) d( e-flat) f( e-flat) d( e-flat) |
  b-flat8( e-flat) d( e-flat) f( e-flat) d( e-flat) |
  d8->[ \cresc \breathe b-flat b-flat( d)] e-flat->( b-flat) b-flat( e-flat) |
  f8->( b-flat,) b-flat( f') g->( \f e-flat) e-flat( b-flat) |
  f'8->( \> d) d( b-flat) b-flat( f) f( d) |
  e-flat8( \< g) g( c) c( e-flat) e-flat( d) |
  d8->( \mf f) \repeat unfold 3 { d-. f-. } |
  e-flat8->( f) \repeat unfold 3 { e-flat-. f-. } |
  d8->( f) \repeat unfold 3 { d-. f-. } |
  c8->[ \tweak Y-offset #4 \breathe f, c'-. f,-.] \repeat unfold 2 { c'-. f,-. } |
  b-flat8->( f) \repeat unfold 3 { b-flat8-. f-. } |
  a8->( f) \repeat unfold 3 { a8-. f-. } |
  b-flat8( \f d) f( d) \repeat unfold 2 { e-flat( c) }
  b-flat8-. \p d-. f-. d-. \repeat unfold 2 { e-flat-. c-. }
  b-flat8( f) g-. e-flat-. \repeat unfold 2 { d( f) }
  c8-> f \repeat unfold 3 { c-. f-. } |
  b-flat,2~ \< 8[ \tweak Y-offset #3 \breathe c16 d e-flat f g a-flat!] |
  b-flat4. \> \tempo "Rall." a-flat8 g( b-flat) a-flat f \breathe | \bar "||"

  \tempo "Tempo"
  e-flat8->( \p g) f a-flat g( b-flat) a-flat c |
  b-flat8->( g) a-flat f g( e-flat) f d |
  e-flat8-> g g b-flat b-flat( e-flat) e-flat( b-flat) |
  \repeat unfold 2 { c8->( \< e-flat d e-flat f \> e-flat d e-flat) | }
  b-flat8->( \< e-flat d e-flat f \> e-flat d e-flat) \! |
  a-flat,8->[ \breathe c_\markup { \italic "Senza sfumare" }( b c] d c b c) |
  f,8->( a-flat g a-flat b-flat! a-flat g a-flat) |
  d,8->( f e f g f e f) |
  e-flat!8->( d) d c c->( b-flat) c d |
  e-flat8->( \< g) f( a-flat) g( b-flat) a-flat( c) |
  b-flat8( \> g) a-flat( f) g( e-flat) f( d) |
  e-flat4 \< \breathe f8-. g-. a-flat-. b-flat-. c-. d-. |
  e-flat2 \f r | \bar "|."
}
