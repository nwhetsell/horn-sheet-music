\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro vivo" 4.=84

  \key d \major
  \time 3/8

  d'8-. \mf f-sharp-. d-. |
  e8-. a-. c-sharp,-. |
  d8-. f-sharp d-. |
  e8-. a-. e-. |
  f-sharp8-. a-. f-sharp-. |
  g-sharp8-. c-sharp-. e-sharp,-. |
  f-sharp8-. a-. f-sharp-. |
  g-sharp8-. c-sharp-. g-sharp-. |
  a8-. c-sharp-. a-. |
  b8-. e-. g-sharp,-. |
  a8-. c-sharp-. a-. |
  b8-. e-. b-. |
  c-sharp8-. e-. d-. |
  c-sharp8-. 8-. b-. |
  a8-. c-sharp-. b-. |
  a8-. 8-. g!-. |
  f-sharp8-. a-. g-. |
  f-sharp8-. 8-. e-. |
  d4 r8 | \bar "||"

  \mark \default
  <> \p
  \repeat unfold 2 {
    f-sharp8-.a-. r |
    g-sharp8-. c-sharp-. r |
  }
  <> \mf
  \repeat unfold 2 {
    a8-. c-sharp-. r |
    b8-. e-. r |
  }
  a,8-. \< c-sharp-. a-. |
  b8-. e-. b-. |
  c-sharp8-. e-. c-sharp-. |
  d-sharp8-. \f r b-sharp-. |
  c-sharp8-. r8 8-. |
  d-sharp8-. r8 8-. |
  e8-. r f-sharp-. |
  e8-. r d!-. |
  c-sharp8-. r d-. |
  c-sharp8 r \breathe b \> |
  a8-. b-. a-. |
  g!-. f-sharp-. e-. | \bar "||"

  <> \p
  \repeat unfold 2 {
    d8-. f-sharp-. d-. |
    e8-. a-. c-sharp,-. |
  }
  \repeat unfold 2 {
    d8-. f-sharp-. a-. |
  }
  \repeat unfold 2 {
    d,8-. a-. f-sharp'-. |
  }
  d4. | \bar "|."
}
