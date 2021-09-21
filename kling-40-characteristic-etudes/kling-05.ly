\version "2.22.0"

\include "../sf-accent.ily"
\include "../subdivide-beams.ily"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro"

  \key c \major
  \time 4/4

  \repeat unfold 2 {
    \tuplet 6/4 { c''16\sf-accent( b c e d) c-. } b8->( g') a,->( f') g,->( e') |
    f,8->( d') e,->( c') d,->( b') c-. r |
  }
  \tuplet 6/4 { c16\sf-accent( b c e d) c-. } b8->( a16) r \tuplet 6/4 { d16\sf-accent( c-sharp d f e) d-. } c8->( b16) r |
  \tuplet 6/4 { e16\sf-accent( d-sharp e g f) e-. } d8->( c16) r \tuplet 6/4 { f16\sf-accent( e f a g) f-. } e8->( d16) r |
  \tuplet 6/4 4 { g16\sf-accent( f-sharp g b a) g-. f\sf-accent( e f a g) f-. e\sf-accent( d-sharp e g f) e-. d\sf-accent( c-sharp d f e) d-. } |
  \tuplet 6/4 4 { c!16\sf-accent( b c e d) c-. b\sf-accent( a-sharp b d c) b-. a16\sf-accent( g-sharp a c b) a-. } g8 r |

  \tuplet 6/4 { c16\sf-accent( b c e d) c-. } b->( g') g-. g-. a,->( f') f-. f-. g,->( e') e-. e-. |
  f,16->( d') d-. d-. e,->( c') c-. c-. d,->( b') b-. b-. c8-. r |
  \tuplet 6/4 { c16\sf-accent( b c e d) c-. } b-. g'( f-sharp g) a,-. f'( e f) g,-. e'( d-sharp e) |
  f,16-. d-natural'!( c-sharp d) e,-. c'( b c) d,-. b'( a-sharp b) c8 r |
  \tuplet 6/4 { c16\sf-accent( b c e d) c-. } b8-. g-. g'-. g,-. e'-. g,-. |
  \tuplet 6/4 { c16\sf-accent( b c e d) c-. } \tuplet 3/2 4 { b8-. g-. g-. g'-. g,-. g-. e'-. g,-. g-. } |
  \tuplet 6/4 { c16\sf-accent( b c e d) c-. } c8->( g16) r \tuplet 6/4 { g16\sf-accent( f-sharp g c g) g-. } g8( e16) r |
  \tuplet 6/4 { e16\sf-accent( d-sharp e g e) e-. } e8( c16) r \tuplet 6/4 { c16\sf-accent( b c e c) c-. } c8( g16) r |
  \tuplet 3/2 8 {
    \subdivide-beams #1/8 3,3 {
      c16( b c) e( d-sharp e) g( f-sharp g) c( b c) e,( d-sharp e) g( f-sharp g) c( b c) e( d-sharp e) |
      g,( f-sharp g) c( b c) e( d-sharp e) g( f-sharp g) c,( b c) e( d-sharp e) g( f-sharp g) c( b c) |
    }
  }
  c,4-. r c-. \ff r |
  c,1\fermata | \bar "|."
}
