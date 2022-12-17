\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro" 4=116

  \key a \major
  \time 4/4

  #(define measures-one-to-eight #{
    \relative {
      r8 e'-. \p a-. e'-. r e-. a,-. e-. |
      r8 c-sharp-. f-sharp-. c-sharp'-. r c-sharp-. f-sharp,-. c-sharp-. |
      r8 e-. a-. e-. r e-. b'-. e,-. |
      r8 e-. c-sharp'-. e,-. r e-. e'-. e,-. |
      r8 e-. a-. e'-. r e-. a,-. e-. |
      r8 c-sharp-. f-sharp-. c-sharp'-. r c-sharp-. f-sharp,-. c-sharp-. |
      r8 e-. a-. e-. r e-. b'-. e,-. |
      r8 e-. e'-. e,-. r e-. a-. a,-. |
    }
  #})

  \measures-one-to-eight
  R1 \bar "||"

  \time 2/4
  <> \mf \repeat unfold 2 { c-sharp''4-> 8-! d-! | }
  c-sharp8.-> b16-. a8. b16-. |
  c-sharp4.-> r8 |
  \repeat unfold 2 { g-sharp4-> 8-! a-! | }
  g-sharp8.-> f-sharp16-. e8. f-sharp16-. |
  g-sharp4.-> r8 |
  <> \f \repeat unfold 2 { e'4-> 8-! f-sharp-! | }
  e8.-> d16-. c-sharp8. d16-. |
  e4.-> r8 |
  <<
    {
      <> \repeat unfold 2 { b4-> 8-! c-sharp-! | }
      b8.-> a16-. g-sharp8. a16-. |
      b4-> r8 e,-. |
      f-sharp8( \> e4) \! e8-. |
      g-sharp8( \> e4) \! e8-. |
      a8( \> e4) \! e8-. |
      e'8( \> e,4) \! \breathe g-sharp8-. |
      a8( \> g-sharp4) \! g-sharp8-. |
    }
    \new Dynamics {
      s4 \mf \dim s8 s | % The diminuendo is a decrescendo in print editions.
      s2*3 |
      s8 \cresc s4. |
      s2*3 |
      s4. s8 \! |
    }
  >>
  b-sharp8( \> g-sharp4) \! g-sharp8-. |
  d-sharp'8( \> g-sharp,4) \! g-sharp8-. |
  f-sharp'8( \> g-sharp,4) \! r16 e \cresc |
  f-sharp8.-> e16 g-sharp8.-> e16 |
  a8.-> e16 b'8.-> e,16 |
  c-sharp'8.-> e,16 d'!8.-> e,16 |
  e'8-> e,4-> e8~-> |
  e8 \> e4-> e'8-. \! | \bar "||"

  \time 4/4
  \measures-one-to-eight \bar "|."
}
