\version "2.22.0"

\include "../sf-accent.ily"

\relative {
  \language "english"

  \transposition f

  \tempo "Moderato" 4.=66

  \key f-sharp \minor
  \time 6/8

  a'8-. \mf 8-. g-sharp-. 8( f-sharp4) \sf |
  \acciaccatura { g-sharp16 a } \tweak NoteColumn.X-offset #0.5 b8-> b-. c-sharp-. a4 \breathe c-sharp8-. |
  c-sharp8-. c-sharp-. f-sharp-. c-sharp4( b8) |
  a8-. a-. b-. a16-. b-. c-sharp4 \breathe |
  c-sharp8-. c-sharp-. e-sharp-. c-sharp4( b8) |
  a16-> 16-. 8-. c-sharp-. g-sharp4. \breathe |
  g-sharp8-. b-. e!8->~8 b16-. a-. g-sharp8-. |
  g-sharp16-> 16-. 8-. b-. f-sharp4. \breathe |

  a8 \f g-sharp8.-^ b16 c-sharp8-. c-sharp4-> |
  a8-._\markup { \dynamic "p" \italic "subito" } g-sharp-. b->~8 c-sharp16-. d-. c-sharp8-. \breathe |
  \acciaccatura { c-sharp8 \tweak X-offset #-1.5 \f } \tweak NoteColumn.X-offset #1 f-sharp\sf-accent 8-> e-sharp-> e4.\sf-accent |
  \acciaccatura c-sharp8 e\sf-accent 8-> d-sharp-> d4.\sf-accent \breathe |
  c-sharp16. \mf d32 c-sharp8. d16 c-sharp16. d32 c-sharp16. b32 a16. c-sharp32 |
  b4. \breathe g-sharp8-. 8-. b-. |
  e8-. b4-> g-sharp8-. 8-. 16-. b-. |
  f-sharp4. \breathe f-sharp8-. 8-. a-. |
  d8-. a4-> f-sharp8-. 8-. 16-. a-. |
  \tempo "Rall."
  c-sharp8 c-sharp,4 c-sharp'8 c-sharp,4 \breathe |

  \tempo "Tempo"
  a'8-. \p 8-. g-sharp-. 8( f-sharp4) \sf |
  \acciaccatura { g-sharp16 a } \tweak NoteColumn.X-offset #0.5 b8-> b-. c-sharp-. a4 \breathe c-sharp8-. | % The staccato on the last c-sharp is not in print editions.
  c-sharp8-. c-sharp-. f-sharp-. c-sharp4( b8) |
  a8-. a-. b-. a16-. b-. c-sharp4 \breathe | % The last c-sharp is staccato in print editions.
  c-sharp8-. c-sharp-. e-sharp-. c-sharp4( b8) |
  a16-> 16-. 8-. c-sharp-. g-sharp4. \breathe |
  g-sharp8-. b-. e!8->~8 b16-. a-. g-sharp8-. |
  g-sharp16-> 16-. 8-. b-. f-sharp4. \breathe |

  a8 \tweak X-offset #-2 \mf g-sharp8.-^ b16 c-sharp8-. c-sharp4-> |
  a8-._\markup { \dynamic "pp" \italic "subito" } g-sharp-. b->~8 c-sharp16-. d-. c-sharp8-. \breathe |
  \acciaccatura { c-sharp,8 \p \< } f-sharp-. 8-. e-sharp-. e4.-- |
  \acciaccatura { c-sharp8 \> } e-. 8-. d-sharp-. d4. \! \breathe |
  c-sharp16. d32 c-sharp8. d16 c-sharp16. d32 c-sharp16. d32 c-sharp16. d32 |
  c-sharp8[ r16 d c-sharp8] r r16 d c-sharp8 |

  R2.
  f-sharp8-. \mf 8-. a-. f-sharp( e4\sf-accent) |
  \acciaccatura { d16 e } f-sharp8-> 8-. a-. f-sharp4.-> \breathe |
  f-sharp8-. 8-. a-. f-sharp( e4\sf-accent) |
  \acciaccatura { d16 e } f-sharp8-> 8-. a-. f-sharp4.->~ |
  \tempo "Senza rallentando"
  f-sharp16. a32 \> f-sharp8. a16 f-sharp16. a32 f-sharp16. a32 f-sharp16. a32 |
  f-sharp8[ r16 a-. f-sharp8-.] r r16 a-. f-sharp8-. \! | \bar "|."
}
