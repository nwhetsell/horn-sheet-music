\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Moderato"

  \key c \major
  \time 4/4

  \tuplet 3/2 4 { c'8-.\f b'( c) b,-. c-sharp'( d) c,-. d-sharp'( e) e,-. b'( c) } |
  \tuplet 3/2 4 { g8( c) g,-. a'( c) g,-. b'( d) g,,-. } g''4 |
  \tuplet 3/2 4 { c-sharp,8( d) b,-. d-sharp'( e) c,-. e'( f) d,-. c-sharp'!( d) b,-. } |
  \tuplet 3/2 4 { c-natural!8-. e'( c) g,-. d''( b) c,,-. g''( e) } c4 |
  \tuplet 3/2 4 { c8-. e( g) b,-. d( g) c,-. e( g) d-. f( b) } |
  \tuplet 3/2 4 { e,8-. g( c) f-sharp,-. a( d) g,-. b( d) } g,4 |
  \tuplet 3/2 4 { g8-. b( d) f-sharp,-. a( d) g,-. b( d) g,-. b( e) } |
  \tuplet 3/2 4 { f-sharp,8-. a( d) e,-. g( c-sharp) d,-. f-sharp( a) } d4 |
  \tuplet 3/2 4 {
    b8( \mf g) g,-. f-sharp-. c''( a) g( b) g,-. f-sharp'-. a( d) |
    b8( g) g,-. f-sharp-. c''( a) g( b) g,-. f-sharp'-. a( d) |
  }
  g,4 \tuplet 3/2 4 { a8( c) g,-. b'( d) g,,-. c'( e) g,,-. } |
  \tuplet 3/2 4 {
    b'8( d) g,,-.
      f-sharp-. c''( a) % The 1st edition has a'( c) g,-. here.
      g( b) g,-. f-sharp'( a) g,-. |
    g'8-. f-sharp'( g) e,-. d-sharp'( e) c,-. b'( c) d,-. c-sharp'( d) |
  }
  g,4\p \tuplet 3/2 4 { f-sharp,8-. c''( a) g,-. b'( g) d-. a'( f-sharp) } |
  \tuplet 3/2 4 { g,-. b'( g) c,-. e'( c) d,-. d'( b) d,-. c'( a) } |
  g4 r \tuplet 3/2 4 { g,8 \tweak to-barline ##f \< b d g b d } |
  g4 \! r r2 | \bar "||"

  \tuplet 3/2 4 {
    g,,8-. \mf f-sharp'( g) f-sharp,-. g-sharp'( a) g,-. a-sharp'( b) b,-. f-sharp'( g) |
    c,8-. e( a-natural!) b,-. g-sharp'( b) c,-. a'( c) d,-. f-sharp( a) |
  }
  g-natural!8 r \tuplet 3/2 4 { b8( g) g,-. \< d''( b) g,-. e''( c) g,-. \! } |
  \tuplet 3/2 4 { f''8( d) g,,-. d''( \> b) g,-. b'( g) g,-. f'( d) g,-. } \! |
  c,4 \tuplet 3/2 4 { c'8-. b'( c) b,-. c-sharp'( d) c,-. d-sharp'( e) } |
  \tuplet 3/2 4 { g,,8-. e''( f) g,,-. c-sharp'( d) g,,-. a-sharp'( b) } g4 |
  \tuplet 3/2 4 {
    \stemUp
    c,8-. \< c'( e) d,-. d'( f) e,-. e'( g) f,-. f'( a) |
    e,8-. \> g'( e) d,-. f'( d) c,-. e'( c) b,-. d'( b) |
    \stemNeutral
  }
  c8 \! r \tuplet 3/2 { e, \mf g c } b r \tuplet 3/2 { g, d'' f } |
  e8 r \tuplet 3/2 4 { c, \cresc e a d, f b e, g c } |
  \tuplet 3/2 4 { f,8 a d g, b e a, \tweak X-offset #-1 \f c f b, d g } |
  e8 r \tuplet 3/2 { c( \mf g) e'-. } f r \tuplet 3/2 { f( a,) d-. } |
  c8 r \tuplet 3/2 { c( e,) a-. } g r \tuplet 3/2 4 { \override Slur.positions = #'(0 . 2) b( g,) d''-. } |

  \override Beam.auto-knee-gap = #8

  c8 r \tuplet 3/2 4 { c-. c,,( e'') f-. \revert Slur.positions g,( d') b-. \override Slur.positions = #'(0 . 2) g,( d'') } |

  % The 1st edition includes another measure:
  % \tuplet 3/2 4 { c8-. c,,( e'') c-. c,,( g''') f-. g,,( d'') b-. g,( d'') } |

  \tuplet 3/2 4 { \repeat unfold 2 { c8-. c,,( e'') b-. g,,( d''') } } |
  c8 r \tuplet 3/2 4 { c,,-. e'( e') c,,-. g''( g') c,,,-. e'( e') } |

  \revert Slur.positions

  \revert Beam.auto-knee-gap

  c4 r \tuplet 3/2 4 { c,,8 e g c e g } |
  c4 r r2 | \bar "|."
}
