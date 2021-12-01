\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Andante" 4.=66

  \key c \major
  \time 12/8

  #(define first-six-measures #{
    \relative {
      g'8-^ \f e-^ c-^ g4.->~8 a c e g a |
      c4.->( g2.) r4. |
      g8-^ e-^ c-^ g4.->~8 e g a c e |
      a4.->( e2.) r4. |
      c4( a'8) g4. c,4( f8) e4. |
      g4( d'8) c4. e,4( a8) g4. \breathe |
    }
  #})

  \first-six-measures
  g'8 \f \< c e g4.~ \! 8 e g e c e |
  c8 g e g2. r4. |

  r4. a8 \mf g e a4.~8 g e |
  d'8 c g f' e c g'4.~8 e g |
  f8( e) d d( c) b c( e) d c b a |
  g8 c g e g e c e c g4. |
  r4. f'8 e c f4.~8 e c |
  b'8 a e d' c a e'4.~8 c e |
  d8( c) b b( a) g-sharp a( c) b a g f |
  e8 a e c e c a c a e4. |
  r8 e' g-sharp b g-sharp b e b g-sharp e4. |
  r8 e a c a c e c a e4. |
  r8 g, b d b d g d b g4. |
  r8 g c e c e g e c g4. |
  r8 g' c e c e g4. r | \bar "||"

  \time 4/4
  \tempo "Allegro vivo" 4=144
  r8 c,-._\markup { \dynamic "p" \italic "leggiero" } d-. c-. e-. c-. f-. c-. |
  e8-. c-. g-. e-. g8.->( a16) c4 |
  r8 a-. b-. a-. c-. a-. d-. a-. |
  c-. a-. e-. c-. e8.->( f16) a4 |
  r8 g-. a-. g-. b-. g-. c-. g-. |
  r8 g-. b-. g-. c-. g-. d'-. g,-. |
  r8 a-. b-. a-. c-. a-. d-. a-. |
  r8 a-. c-. a-. d-. a-. e'-. a,-. |
  r8 b-. \cresc c-. b-. d-. b-. e-. b-. |
  r8 b-. d-. b-. e-. b-. f'-. b,-. |
  r8 g-. a-. b-. c-. d-. e-. f-. |
  g2 \f r |
  r8 c,-. \p d-. c-. e-flat-. c-. f-. c-. |
  e-flat8-. c-. g-. e-flat-. g8.->( a-flat16) c4 |
  r8 a-flat-. b!-. a-flat-. c-. a-flat-. d-. a-flat-. |
  c8-. a-flat-. e-flat-. c-. e-flat8.->( f16) a-flat4 |
  r8 g-. a-flat-. g-. b!-. g-. c-. g-. |
  r8 g-. b-. g-. c-. g-. d'-. g,-. |
  r8 a-flat-. b!-. a-flat-. c-. a-flat-. d-. a-flat-. |
  r8 a-flat-. c-. a-flat-. d-. a-flat-. e-flat'-. a-flat,-. |
  r8 g-. a-flat-. g-. b!-. g-. c-. g-. |
  r8 c,-. \> d-. e!-. f-. g-. a!-. b-. |
  c2 \p r | \bar "||"

  \tempo "1º Tempo"
  \time 12/8
  \first-six-measures
  g8 \< c e g4.~8 \f e c e c g |
  c8 g e c2. r4. | \bar "|."
}
