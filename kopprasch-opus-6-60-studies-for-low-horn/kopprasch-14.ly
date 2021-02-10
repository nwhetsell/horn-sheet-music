\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegretto vivace"

  \key c \major
  \time 4/4

  \repeat volta 2 {
    \partial 4 { \acciaccatura a'8 \mf \tuplet 3/2 { g8 f-sharp-. g-. } } |
    \tuplet 3/2 4 { c8( g) e-. d'( b) g-. e'( c) g-. d'( b) g-. } |
    \tuplet 3/2 4 { c8( \< g) e-. d'( b) g-. } e'4 \mf \breathe \acciaccatura d8 \tuplet 3/2 { c8 b-. c-. } |
    \tuplet 3/2 4 { d8( b) g-. e'( c) g-. f'( d) g,-. e'( c) g-. } |
    \tuplet 3/2 4 { d'8( \< b) g-. e'( c) g-. } f'4 \f \breathe \acciaccatura e8 \tuplet 3/2 { d8 c-. d-. } |
    \tuplet 3/2 4 {
      e8( c) g-. f'( d) g,-. g'( e) g,-. e'( c) g-. |
      d'8( b) g-. e'( c) g-. f'( d) g,-. d'( b) g-. |
      c8( a) e-. c'( a) f-. d'( a) f-. d'( a) f-sharp-. |
    }
    \tuplet 3/2 4 { d'8( b) g-. g'( d) b-. } g4 \breathe \acciaccatura a8 \p \tuplet 3/2 { g8 f-sharp-. g-. } |
    \tuplet 3/2 4 { c8( g) e-. d'( b) g-. e'( c) g-. d'( b) g-. } |
    \tuplet 3/2 4 { c8( \< g) e-. d'( b) g-. } e'4 \mf \acciaccatura d8 \tuplet 3/2 { c8 b-. c-. } |
    \tuplet 3/2 4 {
      \repeat unfold 2 { d8( c) a-. e'( c) a-. d( c) a-. d( b) g-. } |
      c8( a) e-. e'( c) a-. d( b) g-. c( a) f-sharp-. |
    }
    g4 \tuplet 3/2 { g'8( \tweak X-offset #-1 \f d) b-. } d4 \tuplet 3/2 { c8( a) f-sharp-. } |
    g4 \acciaccatura a8 \tuplet 3/2 4 { g8 f-sharp-. g-. d'( b) g-. g'( d) b-. } |
    \partial 2. { g2 r4 } |
  }
  \partial 4 { \acciaccatura f-sharp8 \p \tuplet 3/2 { e8 d-sharp-. e-. } } |
  \tuplet 3/2 4 { b'8( g) e-. c'( a) e-. b'( g) e-. e'( g,) e-. } |
  \tuplet 3/2 4 { b'8( g) e-. c'( a) e-. } b'4 r |
  \tuplet 3/2 4 { c8( a) e-. b'( g) e-. a( f-sharp) d-sharp-. g( e) b-. } |
  \tuplet 3/2 4 { f-sharp'8( d-sharp) b-. g'( e) b-. } f-sharp'4 r |
  \tuplet 3/2 4 { g8( \mf e) c-. a'( f-natural!) c-. g'( e) c-. c'( g) e-. } |
  \tuplet 3/2 4 { d'8( \< b) g-. d-sharp'( b) g-. } e'4 \! r |
  \acciaccatura e8 \f \tuplet 3/2 4 { d8 c-sharp-. d-. <a' \tweak font-size #-2 d,>( f) d-. g( e) c-. f( d) b-. } |
  \tuplet 3/2 4 { c8( g) e-. d'( b) g-. e'( c) g-. d'( b) g-. } |
  \tuplet 3/2 4 { c8( g) e-. d'( b) g-. } e'4 r |
  \tuplet 3/2 4 { c8( \p g) e-. d'( b) g-. } e'4 r |
  \tuplet 3/2 4 {
    c8( \p g) e-. c-sharp'( g) e-. d'( a) f-. d'( a) f-sharp-. |
    d'8( \cresc b) g-. d-sharp'( b) g-. e'( c) g-. e'( c) g-. |
    f'8( c) a-. f-sharp'( c) a-. g'( d) b-. f'( d) b-. |
    e8( \tweak X-offset #-1 \f c) g-. d'( a) f-. c'( g) e-. b'( f) d-. |
  }
  c'4 \tuplet 3/2 4 { b-flat8( \p g) c,-. a'( f) c-. g'( e) c-. } |
  \tuplet 3/2 4 { f-sharp8( d-sharp) c-. g'( e) c-. f( d) b-. d( b) g-. } |
  c4 \tuplet 3/2 { c'8( \f g) e-. } g4 \tuplet 3/2 { f8( d) b-. } |
  c4 \tuplet 3/2 4 { c'8( g) e-. e'( c) g-. c( g) e-. } |
  \partial 2. { c2 r4 } | \bar "|."
}
