\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \once \override Score.MetronomeMark.padding = #3
  \tempo "Andante"

  \key e \minor
  \time 3/8

  \override Script.avoid-slur = #'inside

  % This prevents beaming sextuplets together.
  \set Timing.beamExceptions = #'()

  \tuplet 6/4 8 {
    <>_\markup { \dynamic "p" \italic "legato" }
    \repeat unfold 3 { e'32( g b c-> b g) } |
    \repeat unfold 3 { f-sharp32( a b c-> b a) } |
    \repeat unfold 3 { f-sharp32( a b d-sharp-> b a) } |
    \repeat unfold 3 { e32( g b e-> b g) } |
    \repeat unfold 3 { f-sharp32( a c f-sharp-> c a) } |
    \repeat unfold 3 { g32( b e g-> e b) } |
    a32( b d-sharp f-sharp-> d-sharp b) f-sharp( a b d-sharp-> b a) d-sharp,( f-sharp a b-> a f-sharp) |
    \repeat unfold 3 { e32( g b c-> b g) } |
    \repeat unfold 2 { d32( g b c-> b g) } d( f-sharp a b-> a f-sharp) |
    \repeat unfold 2 { g32( b d e-> d b) } a( c d e-> d c) |
    b32( d e d b c) b( c b g a g) d( e d b c a) |
    g32( f-sharp g) b( a g) c( b a) d( c b) e( d c) f-sharp( e d-sharp) |
    e32( g b c-> b g) f-sharp( a b c-> b a) g( b d-sharp e-> b g) |
    a32( c d-sharp f-sharp-> d-sharp c) b( d-sharp e g-> e b) a( c d-sharp f-sharp, a c) |
    e,32( g b c, e a) b,( e g a, c f-sharp) g,( b e f-sharp, a c) |
    \repeat unfold 2 { b32( e g b-> g e) } b( d-sharp f-sharp a-> f-sharp d-sharp) |
    e32( g b c-> b g) a->( g e f-sharp-> e b) c->( b g a-> g d-sharp) |
    e32( f-sharp g g-sharp a a-sharp) b( c-sharp d-sharp e f-sharp g) a( b c c-sharp d d-sharp) |
  }
  e8~( \tuplet 6/4 8 { e32 a-sharp, b f-sharp g d-sharp) \shape #'((0 . 0) (0 . 1) (0 . 2) (0 . 0)) Slur e( a-sharp, b f-sharp g d-sharp) } |
  e8-. e'-.( e-.) |
  e,4.\fermata | \bar "|."
}
