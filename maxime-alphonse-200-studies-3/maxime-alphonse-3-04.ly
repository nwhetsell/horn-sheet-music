\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Moderato" 4=69

  \key a \major
  \time 2/4

  \partial 4 { \acciaccatura { a'16_\markup { \dynamic "mf" \italic "pesante" } b } a8-! g-sharp-! } |
  a8.-^ c-sharp16 b8-! g-sharp-! |
  a8.-^ b16 c-sharp8-! d-! |
  e8.-^ f-sharp16 e8-! d-! |
  e8.-^[ \breathe 16] f-sharp8-! c-sharp-! |
  d8.-^ f-sharp16 e8-! d-! |
  c-sharp8.-^ e16 d8-! c-sharp-! |
  b8.-^ a16 g-sharp8-! b-! |
  e4-> \breathe \acciaccatura { a,16_\markup { \dynamic "p" \italic "subito" } b } a8-! g-sharp-! |

  a8.-^ c-sharp16 b8-! g-sharp-! |
  a8.-^ b16 c-sharp8-! d-! |
  e8.-^ f-sharp16 e8-! d-sharp-! |
  e8.-^[ \breathe 16] d-sharp8-! \f \cresc c-sharp-! |
  g-sharp'8.-^ e16 c-sharp8-! g-sharp-! |
  e'8.-^ c-sharp16 g-sharp8-! e-! |
  g-sharp8.-^ \! f-sharp16 d-sharp8-! b-sharp-! |
  c-sharp8.-> \breathe e16 \p 8-! 8-! |

  b'8.-^ a-sharp16 b8-! c-sharp-! |
  b8.-^ a!16 b8-! c-sharp-! |
  a8.-^ g-sharp16 a8-! f-sharp'-! |
  e8.-^[ \breathe e,16] 8-! 8-!
  b'8.-^ a-sharp16 b8-! c-sharp-! |
  b8.-^ a!16 b8-! c-sharp-! |
  a8.-^ g-sharp16 a8-! c-sharp-! |
  e8.-^ \breathe 16 \mf \decresc 8-! 8-! |
  d-sharp8.-^ b16 d8-! 8-! |
  c-sharp8.-^ a16 c8-! 8-! |
  b8.-^ f16 a8-! 8-! |
  g-sharp4-> \breathe \acciaccatura { a16 \mf b } a8-! g-sharp-! |

  a8.-^ c-sharp16 b8-! g-sharp-! |
  a8.-^ b16 c-sharp8-! d-! |
  e8.-^ f-sharp16 e8-! d-sharp-! |
  e8.-^[ \breathe 16] f-sharp8-! c-sharp-! |
  d!8.-^ f-sharp16 e8-! d-! |
  c-sharp8.-^ e16 d8-! c-sharp-! |
  b8.-^ a16 g-sharp8-! b-! |
  a8.-^[ \breathe c-sharp16] b8-! g-sharp-! |
  a8.-^ c-sharp16 \pp \tempo "Rall." b8-! g-sharp-! |
  a8.-^ f'16 d8-! g-sharp,-! |
  a8.-^ f-sharp'!16 d8-! b-! |
  \stemUp b2( |
  a2) \stemNeutral | \bar "|."
}
