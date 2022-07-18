\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegretto" 4=92

  \key e-flat \major
  \time 5/4

  <<
    {
      e-flat'8.-> \p d16 e-flat8.-> g16 f8.-> e-flat16 f4. \> b-flat8 \! |
      e-flat,8.-> d16 e-flat8.-> g16 f8.-> e-flat16 f4. \> r8 \! |
      \stemUp a-flat8.-> g16 a-flat8.-> c16 b-flat8.-> a-flat16 \stemNeutral b-flat4. \> e-flat8-. \! |
      \stemUp a-flat,8.-> g16 a-flat8.-> c16 b-flat8.-> a-flat16 \stemNeutral b-flat4. \> r8 \! |
      b-flat8. \cresc c16 d4. c8 b-flat8. c16 d4 |
      d8. e-flat16 f4. e-flat8 d8. e-flat16 f4 \breathe |
      g8. \f \> f16 e-flat8. d16 c8. b-flat16 a8. g16 f4 |
      f'8. \> e-flat16 d8. c16 b-flat8. a16 b-flat2 | \bar "||"

      g8. \p f-sharp16 g8. b-flat16 a8. g16 a4. d8 |
      g,8. f-sharp16 g8. b-flat16 a8. g16 a4. r8 |
      \tempo "Accelerando poco a poco"
      d8-> 8 4 a d4. d,8-. |
      a'8-> 8 4 d, a'4. r8 |
      d8-> 8 4 a d4. d,8-. |
      a'8-> 8 4 a, d4. r8 | \bar "||"

      \tempo "Vivo" 4=176
      g8-> \mf 8 4 d g4. b-flat8 |
      g8 8 4 d g4. r8 |
      b-flat8-> 8 4 f b-flat4. d8 |
      b-flat8 8 4 f b-flat4. r8 |
      <> \f
      \repeat unfold 2 {
        d4-^ 4-^ f8-. e-. d-. c-. d-. r |
        d4-^ 4-^ c8-. d-. e-. c-. d-. r |
      }
      f8-> \ff 8 4 c f4. f,8-. |
      c'8-> 8 4 c, f4. r8 |
      \tempo "Aumentando poco a poco"
      e-flat'!4 \mf 4 g-flat8 f e-flat d-flat e-flat r |
      e-flat4 4 d-flat8 e-flat f d-flat e-flat r |
      e-flat4 4 g-flat8 f e-flat d-flat e-flat r |
      e-flat4 4 d-flat8 e-flat f d-flat e-flat r |
      e-flat8-> \f 8 4 b-flat e-flat4. e-flat,8-. |
      b-flat'8-> 8 4 b-flat, e-flat4. r8 |
      b-flat'8-> \mf \decresc 8 4 e-flat, b-flat'4. b-flat,8-. |
      \tempo "Rall."
      e-flat8-> 8 4 \! e-flat, b-flat'4. r8\fermata | \bar "||"

      \tempo "1º Tempo"
      e-flat8.-> \p d16 e-flat8.-> g16 f8.-> e-flat16 f4. \> b-flat8 \! |
      e-flat,8.-> d16 e-flat8.-> g16 f8.-> e-flat16 f4. \> r8 \! |
      \stemUp a-flat8.-> g16 a-flat8.-> c16 b-flat8.-> a-flat16 \stemNeutral b-flat4. \> e-flat8-. \! |
      \stemUp a-flat,8.-> g16 a-flat8.-> c16 b-flat8.-> a-flat16 \stemNeutral b-flat4. r8 |
      b-flat8. \p \< c16 d4. c8 b-flat8. c16 d4 |
      d8. e-flat16 f4. e-flat8 d8. e-flat16 f4 |
      e-flat8. \f d16 c8. b-flat16 a-flat8. g16 f8. \> e-flat16 b-flat'4 \breathe |
      e-flat8. \p d-flat16 c-flat8. b-flat16 a-flat8. g-flat16 f8. e-flat16 b-flat'4 |
      r2 f8. e-flat16 b-flat'4 r\fermata | \bar "||"

      \tempo "Vivo"
      e-flat8-> \f 8 4 b-flat e-flat4. e-flat,8-. |
      b-flat'8-> 8 4 b-flat, e-flat4. r8 |
      b-flat'8-> \p 8 4 e-flat, b-flat'4. b-flat,8-. |
      e-flat8-> 8 4 e-flat, e-flat'4. r8 | \bar "|."
    }

    { \repeat unfold 45 { s2. \bar "!" \noBreak s2 | } }
  >>
}
