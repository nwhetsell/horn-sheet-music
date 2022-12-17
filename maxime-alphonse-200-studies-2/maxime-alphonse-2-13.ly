\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegretto" 4.=63

  \key c \major
  \time 6/8

  #(define measures-one-to-eight #{
    \relative {
      c''4-! 8-! 4-! d8-! |
      c8. b16 a8 b4 g8 |
      a4-! 8-! 4-! b8-! |
      a8. g16 f8 g4. \breathe |
      a4-! 8-! 4-! b8-! |
      a8. g16 f8 g4 e8 |
      f4-! 8-! 4-! g8-! |
      f8. e16 d8 e4 r8 |
    }
  #})

  <>_\markup { \dynamic "mf" \italic "staccato" }
  \measures-one-to-eight

  f'8.-> a16 c8 e,4 d8-. |
  f8.-> a16 c8 e,4. |
  f8. \< a16 c8 e4 \! d8 |
  c8. \> d16 b8 g4. \! \breathe |
  f8.-> \p a16 c8 e,4 d8-. |
  f8.-> a16 c8 e,4. |
  f8. \< a16 c8 e4 d8 |
  c8. d16 b8 e4 \! r8 |

  g8.-> \f #(make-music 'DecrescendoEvent 'span-direction START 'span-type 'text 'span-text "dim. poco a poco") e16 c8 a4 f8 |
  f'8.-> d16 b8 g4 e8 |
  e'8.-> c16 a8 f4 d8-. |
  d8.-> f16 a8 b4. \breathe |
  e8.-> \mf \dim c16 a8 f4 d8 |
  d'8.-> b16 g8 e4 c8 |
  c'8.-> a16 f8 d4 b8-. |
  b8.-> d16 f8 e4 r8 |

  b8.-> \mf \cresc d16 f8 d8. f16 a8 |
  f8. a16 d8 b4. |
  d,8.-> f16 a8 f8. a16 d8 |
  b8. d16 f8 d4. \breathe |
  f8.-> \f d16 b8 a4 g8-. |
  f'8.->_\markup { \dynamic "p" \italic "subito" } c16 a8 g4 f8-. |
  e'8.-> c16 a8 d8.-> b16 g8 |
  \tempo "Rall." g8.-> a16 g8 g a b \breathe | \bar "||"

  \tempo "Tempo"
  <> \p
  \measures-one-to-eight

  f8. a16 c8 e,4 d8-. |
  f8. a16 c8 e,4. |
  f8. \< a16 c8 e4 d8 |
  c8. d16 b8 e4. \breathe |
  g8.-> \f \dim e16 c8 a4 g8-. |
  g'8.-> e16 c8 g4 e8-. |
  g'8.-> f16 e8 e8.-> d16 c8 |
  \tempo "Rall." c8.-> g16 c8 c \! r r | \bar "|."
}
