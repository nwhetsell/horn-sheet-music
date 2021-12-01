\version "2.22.0"

\include "../sf-accent.ily"

\relative {
  \language "english"

  \transposition f

  \tempo "Moderato" 4=72

  \key a \minor
  \time 2/4

  #(define first-six-measures #{
    \relative {
      a'8._\markup { \dynamic "mf" \italic "legato" }( c16 a8. e16 |
      a8. c16 a8. e16) |
      b'8.( d16 b8. e,16 |
      b'8. d16 b8. e,16) |
      c'8.( e16 c8. e,16 |
      c'8. e16 c8. e,16) \breathe |
    }
  #})

  \first-six-measures
  d''8.( e16 d8. e,16 |
  d'8. e16 d8. g-sharp,16) |
  d'8.( f16 e8. d16) |
  c8.( e16 c8. g16 |
  c8. e16 c8. g16) \breathe |
  d'8.( f16 d8. g,16 |
  d'8. f16 d8. g,16) |
  e'8.( g16 e8. g,16 |
  e'8. g16 e8. g,16) \breathe |
  e'8.( g16 e8. b16 |
  e8. g16 e8. b16) |
  d-sharp8.( f-sharp16 d-sharp8. b16 |
  d-sharp8. f-sharp16 d-sharp8. b16) |

  e4~8 r16 e( |
  f!8.\sf-accent d16 b8. f'16 |
  e8._> d16 b8. e16 |
  f8._> d16 b8. f'16 |
  e8._> c16 a8) r16 e'( |
  d-sharp8.\sf-accent c!16 a8. d-sharp16 |
  e8._> c16 a8. e'16 |
  d!8._> b16 g-sharp8. d'16 |
  c-sharp8._> b16 g-sharp8) r16 c-sharp( |
  d8.\sf-accent b16 g-sharp8. d'16 |
  c!8._> a16 f-sharp8. c'16 |
  b8._> a16 f-sharp8. c'16 |
  b8._> g-sharp16 e8) r |

  \first-six-measures
  b'8.( d16 b8. e,16 |
  b'8. d16 b8. e,16) |
  a8.( \decresc c16 a8. e16 |
  a8. e'16 a,8. c16) |
  e,8.( a16 e8. c16 |
  e8. c'16 e,8. a16 |
  c,8. e16 c8. a16 |
  c8. a'16 c,8. e16 |
  a,2) \p | \bar "|."
}
