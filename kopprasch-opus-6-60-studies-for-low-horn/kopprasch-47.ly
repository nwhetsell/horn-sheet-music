\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Moderato"

  \key c \major
  \time 2/4

  \set Timing.beamExceptions = \beamExceptions { \tuplet 3/2 8 { 16[ 16 16] 16[ 16 16] 16[ 16 16] 16[ 16 16] } }

  \tuplet 3/2 8 {
    c16 \f g' c e g c e g f e d c |
    b16 g, c-sharp'( d) <g, g,> c( b) g, a-sharp'( b) g b( |
  }
  c8) \breathe \tuplet 3/2 8 { c,,16 g' c e g c e d c } |
  \tuplet 3/2 8 { b16 g, a-sharp'( b) g, c-sharp'( d) <g, g,> e'( d) g,, b'( } |
  c!8) \breathe \tuplet 3/2 8 { c16 g, d-sharp''( e) g, f'( e) g,, c-sharp'( } |
  \tuplet 3/2 8 {
    d!16) g, e'( f) g,, e''( d) g, c-sharp( d) g,, c'( |
    b16) \> g c( d) g,, c'( b) g, a'( g) g, f'( |
  }
  e8) \mf \breathe \tuplet 3/2 8 { c,16 g' c e g c e g,, \< c } |
  \tuplet 3/2 8 {
    e16 g c e c, e g c e
      <<
        \new Voice {
          \voiceOne
          g r
        }
        {
          \voiceTwo
          g \f g, c(
        }
      >> \oneVoice |
    b16) g, e''( d) <g, g,> c( b) g, c'( b) g, a'( |
    g16) g, c-sharp'( d) g, c( b) g, a-sharp'( b) g, f-sharp'( |
  }
  \tuplet 3/2 8 { g16) g, e''( d) g, f-sharp,( } g8) r | \bar "||"

  \tuplet 3/2 8 {
    f-natural''!16 \mf
      g,, % The 1st edition has g, here.
      e''( f) g,, e''( d) g,, c-sharp'( d) g,, c'( |
    b16) g, a-sharp'( b) g, a'( g) g, f-sharp'( g) g, r |
    f''16 g,, e''( f) g, d-sharp'( e) g,, d-sharp''( e) g, c( |
    d16) g, a-sharp( b) g, c'( b) g, a'( g) g, r |
    g'16 g, a-sharp'( b) g, c-sharp'( d) g,, e''( f) g, b( |
  }

  c!8) \breathe \tuplet 3/2 8 { c,,16 \f g' c e g c e d c } |
  \tuplet 3/2 8 { b g, c-sharp'( d) g, c( b) g, a-sharp'( b) g b( } |
  c8) \breathe \tuplet 3/2 8 { c,,16 g' c e g b-flat d c b-flat( } |
  \tuplet 3/2 8 {
    a16) c, e'( f) c, d-sharp'( e) c, c-sharp'( d) g,, b'( |
    c16) c, g'( a) c,, f-sharp'( g) c,, e'( f) c, d-sharp'( |
  }
  \tuplet 3/2 { e16) c, r } r8 \tuplet 3/2 8 { f'16 g, a-sharp'( b) g, b'( } |
  \tuplet 3/2 8 {
    c16) g d-sharp'( e) g,, c'( b) g, c-sharp'( d) g, b( |
    c!16) r e( f) g, d-sharp'( e) g,, c-sharp'( d) g, b( |
    c16) g, a-sharp'( b) g, a'( g) g, f'( e) g, d'( |
    c16) c, d-sharp'( e) c, f-sharp'( g) c,, d-sharp'( e) c, b''( |
  }
  \tuplet 3/2 { c) c,, r } r8 r4 | \bar "|."
}
