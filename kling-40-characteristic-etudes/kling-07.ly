\version "2.22.0"

\include "settings.ily"

\language "english"

\relative {
  \transposition f

  \tempo "Allegro animato"

  \key c \major
  \time 4/4

  \tuplet 3/2 4 { c'8-._\markup { \dynamic "f" \italic "staccato" } c-sharp-. d-. d-sharp-. e-. f-. f-sharp-. g-. g-sharp-. a-. a-sharp-. b-. } |
  c8( \tuplet 3/2 { d16 c b } c8) e-. g,8( \tuplet 3/2 { a16 g f-sharp } g8) c-. |
  e,8( \tuplet 3/2 { f16 e d-sharp } e8) g-. c,4 r |
  \tuplet 3/2 4 { g8-. g-sharp-. a-. a-sharp-. b-. c-. c-sharp-. d-. d-sharp-. e-. f-. f-sharp-. } |
  g8( \tuplet 3/2 { a16 g f-sharp } g8) b-. d,8( \tuplet 3/2 { e16 d c-sharp } d8) g-. |
  b,8( \tuplet 3/2 { c16 b a-sharp } b8) d-. g,4 r |
  \tuplet 3/2 4 {
    c'8-. b-. b-flat-. a a-flat-. g-. g-flat-. f-. e-. e-flat-. d-. d-flat-. |
    d-natural'!8-. d-flat-. c-. b-. b-flat-. a a-flat-. g-. g-flat-. f-. e-. e-flat-. |
    e-natural'!8-. e-flat-. d-. d-flat-. c-. b-. b-flat-. a a-flat-. g-. g-flat-. f-. |
    f'8-. e-. e-flat-. d-. d-flat-. c-. b-. b-flat-. a a-flat-. g-. g-flat-. |
  }
  g-natural!8( \tuplet 3/2 { a16 g f-sharp } g8) c-. b8( \tuplet 3/2 { c16 b a-sharp } b8) d-. |
  \tuplet 3/2 4 { c8-. e-. g,-. c-. e,-. g-. } c,4-. r |

  <> \tweak X-offset #-1 \p \tuplet 3/2 4 { \repeat unfold 2 { b'8( d) g,-. } \repeat unfold 2 { c( d) a-. } } |
  \tuplet 3/2 4 { b8( d) c-sharp-. c-. b-. a-. } g4 \tuplet 3/2 { d8-. g-. b-. } |
  \tuplet 3/2 4 { \repeat unfold 2 { c8( d) d,-. } \repeat unfold 2 { b'( d) d,-. } } |
  \tuplet 3/2 4 { f-sharp8( a) g-sharp-. g-. f-sharp-. e-. } d4 \tuplet 3/2 { d8( g) a-. } |
  \tuplet 3/2 4 {
    <> \cresc \repeat unfold 2 { b8-. d( g,) } \repeat unfold 2 { c-. e( g,) } |
    d'8-. g( f-sharp) e-. d-. c-. b-. a-. g-. f-natural! e-. d-sharp-. |
    d-natural!8-. e-. f-sharp-. g-. a-. b-. c( b) c-. d-. e-. f-sharp-. |
  }
  \tuplet 3/2 4 { g8-. \tweak X-offset #-1 \f d-. b-. g-. d-. b-. } g4 r |
  \tuplet 3/2 4 { f''8-. d-. b-. g-. d-. b-. } g4 r |
  \tuplet 3/2 4 { e''8-. c-. g-. e-. c-. g-. } c,4 r |

  \barNumberCheck #23
  \cadenzaOn
  \tuplet 3/2 4 { d''8-.[ b-. g-.] f-.[ d-. b-.] } g4\fermata(
  \magnifyMusic \cadenza-magnification {
    f-sharp16^\markup { \normalsize \italic "ad lib." }[ g f-sharp g f-sharp g] a-flat8.[ g16] a8.[ \< g16] b-flat8.[ g16] b8.[ g16])
  }
  \cadenzaOff \bar "|"
  \set Score.currentBarNumber = #24

  \tempo "a tempo"
  \tuplet 3/2 4 { c8-. \f c-sharp-. d-. d-sharp-. e-. f-. f-sharp-. g-. g-sharp-. a-. a-sharp-. b-. } |
  c8( \tuplet 3/2 { d16 c b } c8) e-. g,8( \tuplet 3/2 { a16 g f-sharp } g8) c-. |
  e,8( \tuplet 3/2 { f16 e d-sharp } e8) g-. c,4 r |
  \tuplet 3/2 4 { g8-. g-sharp-. a-. a-sharp-. b-. c-. c-sharp-. d-. d-sharp-. e-. f-. f-sharp-. } | \break
  g8( \tuplet 3/2 { a16 g f-sharp } g8) b-. d,8( \tuplet 3/2 { e16 d c-sharp } d8) g-. |
  b,8( \tuplet 3/2 { c16 b a-sharp } b8) d-. g,4 r |
  \tuplet 3/2 4 {
    c'8-. b-. b-flat-. a a-flat-. g-. g-flat-. f-. e-. e-flat-. d-. d-flat-. |
    d-natural'!8-. d-flat-. c-. b-. b-flat-. a a-flat-. g-. g-flat-. f-. e-. e-flat-. |
    e-natural'!8-. e-flat-. d-. d-flat-. c-. b-. b-flat-. a a-flat-. g-. g-flat-. f-. |
    f'8-. e-. e-flat-. d-. d-flat-. c-. b-. b-flat-. a a-flat-. g-. g-flat-. |
  }
  g-natural!8( \tuplet 3/2 { a16 g f-sharp } g8) c-. b8( \tuplet 3/2 { c16 b a-sharp } b8) d-. |
  \tuplet 3/2 4 { c8-. e-. g,-. c-. e,-. g-. } c,4 r | \bar "|."
}
