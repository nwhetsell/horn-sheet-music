\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegretto" 4=88

  \key g \major
  \time 3/4

  #(define measures-one-to-eight #{
    \relative {
      d''8( c) 8( b) 8( a) |
      a8( g) a f-sharp g4 |
      \repeat unfold 2 { g8.-> d16-. g8-. b-. a4 | }
      b8.-> g16-. b8-. d-. c4 |
      c8.-> g16-. c8-. e-. d4 |
      d8( c) 8( b) 8( a) |
      a8( g) a f-sharp g4 \breathe |
    }
  #})

  <<
    { \measures-one-to-eight \bar "||" }
    {
      s2._\markup { \dynamic "p" \italic "legato" } |
      s2.*3 \breathe |
      s2.*2 \breathe |
      s2. |
      s4 <>-. s8 <>-. s8
    }
  >>

  \key b-flat \major

  <<
    { \transpose g b-flat { \measures-one-to-eight } }
    {
      s2. \mf |
      s2.*3 \breathe |
      s2.*3 |
      \stemDown s2. \stemNeutral |
    }
  >>

  \repeat volta 2 {
    #(define measures-seventeen-to-twenty #{
      \relative {
        d''4 4. e-flat8 |
        d8( c) r g4-> c8 |
        d4 4. e-flat8 |
        d8( c) r d4-> e-flat8 |
      }
    #})

    <> \p
    \measures-seventeen-to-twenty
    f''8-. 8-. b-flat,4 d8-. 8-. |
    g,4 a8-. 8-. d,4 \breathe |
    \measures-seventeen-to-twenty
    f'8 8 c4 d8 8 |
    b-flat4 a8 8 g4 |
  }

  \key g \major

  <<
    { \measures-one-to-eight \bar "||" }
    {
      s2. \p |
      s2.*2 \breathe |
    }
  >>

  \tempo "Rall."
  d8( \pp c) 8( b) 8( a) |
  a8( g) a f-sharp g4 | \bar "|."
}
