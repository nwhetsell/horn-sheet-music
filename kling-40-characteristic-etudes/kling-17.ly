\version "2.22.0"

\include "settings.ily"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegretto"

  \key g \major
  \time 6/8

  \partial 8 { d''8( \p } |
  e8-.)[ r d-.] c-.[ r b-.] |
  \acciaccatura d8 c8-. a-. r r a-. b-. |
  c8-.[ r c-sharp]( e-.)[ r d-.] |
  b4.~4 d8( |
  g8-.)[ r d-.] d8. c16 b8 |
  \acciaccatura d8 c8-. a-. r r a-. b-. |
  c8-.[ r c-sharp]( e-.)[ r d-.] |
  g,4.~4 d'8-. |
  d->( c) b-. b->( a) g-. |
  \acciaccatura a8 g8 f-sharp-. r r a-. b-. |
  c8-.[ r c-sharp]( e-.)[ r d-.] |
  b4.~4 d8( |
  g8.->) f-sharp16 e8 d-. c-. b-. |
  \acciaccatura d8 c8-. a-. r r a-. b-. |
  c8-.[ r c-sharp]( e-.)[ r d-.] |
  g,4.~4 d'8-. \mf |

  d16( g) f-sharp-. e-. d-. c-. b( e) d-. c-. b-. a-. |
  \acciaccatura a8 g8 f-sharp-. r r a-. b-. |
  c16( b) a-. b-. c-. c-sharp-. e( d) c-sharp-. d-. e-. d-. |
  b16-. g'( f-sharp g) d-. b-. g8 r d' |
  b'16->( a) g-. f-sharp-. e-. d-. g->( f-sharp) e-. d-. c-. b-. |
  \acciaccatura { b32 c d } c8-. a-. r r f-sharp16( g) a-. b-. |
  c16( b) a-. b-. c-. d-. e( d) c-sharp-. d-. e-. f-sharp-. |
  g4.~4 d8 |
  d16( e c d b d) b( d a d g, d') |
  \acciaccatura { g,16 a } g8 f-sharp-. r r c-sharp'-. \f d-. |
  \tuplet 3/2 8 { e-flat16->( d) d-. e->( d) d-. f->( d) d-. f-sharp->( d) d-. a'->( f-sharp) d-. c-. a-. f-sharp-. } |
  g4.~4 d'8 \p |
  d16( g d c b d) b( d b a g a) |
  \acciaccatura { f-sharp32 g a } g8 f-sharp-. r r c-sharp'-. \f d-. |
  e-flat32->( d) d-. d-. e->( d) d-. d-. f->( d) d-. d-. f-sharp->( d) d-. d-. a'->( g) f-sharp-. e-. d-. c-. b-. a-. |
  g4.~4 d'8-. \mf |

  \tuplet 3/2 8 { d16_\markup { \italic "leggiero" }\(( e d) c( d c) b( c b) b( c b) a( b a) g( a g)\) } |
  f-sharp16-. d-. f-sharp-. a-. d-. f-sharp-. a8 r d, |
  \tuplet 3/2 8 { d16\(( e d) c( d c) b( c b) b( c b) a( b a) d( e d)\) } |
  g,16-. d-. g-. b-. d-. g-. b8 r d, |
  \tuplet 3/2 8 { d16\(( e d) c( d c) b( c b) b( c b) a( b a) g( a g)\) } |
  f-sharp16-. d-. f-sharp-. a-. d-. f-sharp-. a8-. r d,-. |
  \tuplet 3/2 8 { d16\(( e d) c( d c) b( c b) b( c b) a( b a) d( e d)\) } |
  g,16-. d-. g-. b-. d-. b-. g'8-. r d-. \f |
  g16-. f-sharp-. f-. e-. e-flat-. d-. d-flat-. c-. b-. b-flat-. a-. a-flat-. |
  g8-. f-sharp16-. f-. e-. e-flat-. d8-. r d-. |
  f-sharp16-. g-. g-sharp-. a-. a-sharp-. b-. c-. c-sharp-. d-. d-sharp-. e-. f-sharp-. |
  g16-. c-sharp,( d a-sharp b f-sharp) g8-. r d'-. |
  b'16-. b-flat-. a-. a-flat-. g-. f-sharp-. f-. e-. e-flat-. d-. d-flat-. c-. |
  b8-. b-flat16-. a-. a-flat-. g-. f-sharp8-. r d'-. |
  d,16-. e-. f-sharp-. g-. a-. b-. c-. c-sharp-. d-. d-sharp-. e-. f-sharp-. |
  g4.~ \f g4 d8 |

  \repeat unfold 2 { g16->( d) b-. g-. b-. d-. } |
  \repeat unfold 2 { f-sharp->( d) c-. a-. c-. d-. } |
  f-sharp16( e) d-. c-. b-. a-. d( c) b-. a-. g-. f-sharp-. |
  g16-. b-. d-. e-. f-sharp-. g-. d8 r d |
  \repeat unfold 2 { g16->( d) b-. g-. b-. d-. } |
  \repeat unfold 2 { f-sharp->( d) c-. a-. c-. d-. } |
  a'16->( g) f-sharp-. e-. d-. c-sharp-. e->( d) c-sharp-. c-. b-. a-.|
  \repeat unfold 2 { g16->( d) g-. b-. d-. g-. f-sharp->( d) c-. a-. f-sharp-. d-. | }
  g8-. b-. d-. g-. d-. b-. |
  g4 r8 g'4 r16 g, |
  \partial 1*5/8 { g4.~4\fermata } | \bar "|."
}
