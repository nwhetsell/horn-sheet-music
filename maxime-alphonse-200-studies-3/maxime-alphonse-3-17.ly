\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro vivo" 4=152

  \key c \major
  \time 4/4

  #(define measures-one-to-three #{
    \relative {
      c''4-. 4-. 4-. 8-. d-. |
      \acciaccatura { c16 d } c8-> b-. 8-. a-. b-. g-. a-. b-. |
      \acciaccatura d8 c8.-^ \< b16 c8.-^ e16 g2-- \! |
    }
  #})

  \partial 16 { g'16 \mf } |
  \measures-one-to-three
  r8 g'-- \mf \> f-- e-- d-- c-- b-- a-- \! |
  r8 f'-- \> e-- d-- c-- b-- a-- g-- \! |
  r8 b-. d->( c) r16 b-. c-. c-sharp-. 8( \> d) \! |
  r8 c-sharp-. e->( d) r16 c-sharp-. d-. d-sharp-. 8( \> e) \! | \bar "||"

  \tempo "Poco più lento" 4=116
  r16 c!-. d!-. e-. \repeat unfold 2 { f-> c-. a-. c-. } f-. \> c-. a-. f-. \! |
  r16 b-. c-. d-. \repeat unfold 2 { e-> b-. g-. b-. } e-. \> b-. g-. e-. \! |
  \stemUp r16 g-. \cresc 16-. 16-. a-. g-. d'-. g,-. 16-. 16-. 16-. 16-. a-. g-. e'-. g,-. \stemNeutral |
  g16-. g'-. 16-. 16-. f-sharp-. \> f-. 16-. 16-. e-. e-flat-. 16-. 16-. d8 \! r16 g, \mf | \bar "||"

  \tempo "1º Tempo"
  \measures-one-to-three
  r8 \tuplet 3/2 { g'16( \f \> a g) } f8 e d c b a \! |
  r8 \tuplet 3/2 { f'16( \mf \> g f) } e8 d c b a g \! |
  \tempo "Senza ritardare"
  r8 b( \grace { c16 b a b) } d8( c) r16 b-. c-. c-sharp-. 8( \> d) \! |
  r8 c-sharp( \grace { d16 c-sharp b c-sharp) } e8( \> d) \! r16 c-sharp-. d-. d-sharp-. 8( \> e) \! | \bar "||"

  \tempo "Più lento"
  r16 c!-. \p d!-. e-. \repeat unfold 2 { f-> a,-. c-. a-. } f-. \< a-. c-. f-. \! |
  r16 b,-. c-. d-. \repeat unfold 2 { e-> g,-. b-. g-. } \stemDown e-. \< g-. b-. e-. \! \stemNeutral |
  \stemUp r16 g,-. f-sharp-. g-. a-. g-. d'-. g,-. 16-. 16-. f-sharp-. g-. a-. g-. e'-. g,-. \stemNeutral |
  g16-. g'-. \f 16-. 16-. f-. d-. 16-. 16-. b-. g-. 16-. 16-. c8 r |

  r16 g,-. \p \cresc c-. e-. g-. c,-. e-. g-. c-^ c,-. e-. g-. c-. e,-. g-. c-. |
  e-^ e,-. g-. c-. e-. g,-. c-. e-. g4-^ \! r |
  r16 g \p \< f e d c b a g e' \mf \< d c b a g f |
  e16 c' \f \< b a g f e d c4 \! r | \bar "|."
}
