\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Moderato" 4.=80

  \key d \major
  \time 12/8

  <<
    {
      d'8_\markup { \dynamic "f" \italic "pesante" } f-sharp a g f-sharp e f-sharp d a' g f-sharp e |
      d8 f-sharp a e g a d, f-sharp a d a d, |
      g8 b d c-sharp? b a b g d' c-sharp b a |
      g8[ \breathe b d] a c-sharp d g, b d g d b |
      a8 c-sharp e d c-sharp b c-sharp a e' d c-sharp b |
      a8 c-sharp e g,! c-sharp e f-sharp, a d e, g b |
      d,8 g b c-sharp, e b' c-sharp, e a c-sharp, e g \breathe |
      a,8 \< b c-sharp d e f-sharp g \> f-sharp e a g e |

      d8 \p f-sharp a g f-sharp e f-sharp d a' g f-sharp e |
      d8 a' f-sharp' e, a g' d, a' f-sharp'8 8 a, d, \breathe |
      g8 b d c-sharp b a b g d' c-sharp b a |
      g8 b g' a, c-sharp g' g, b g' d d, d' \breathe |
      a,8 c-sharp e d c-sharp b c-sharp a e' d c-sharp b |
      a8 e' c-sharp' b, e d' a, e' c-sharp' a e a, \breathe |
      d8 f-sharp a g f-sharp e f-sharp d a' g f-sharp e |
      d8 a <f-sharp \tweak font-size #-2 f-sharp'> f-sharp' d <a \tweak font-size #-2 a'> a' f-sharp <d \tweak font-size #-2 d'> d' a <f-sharp \tweak font-size #-2 f-sharp'> |
      f-sharp'8 d a d a f-sharp d a' f-sharp d a <f-sharp \tweak font-size #-2 f-sharp'> |
    }
    { \repeat unfold 68 { s8-^ s4 } }
  >>

  <d \tweak font-size #-2 d'>2. r | \bar "|."
}
