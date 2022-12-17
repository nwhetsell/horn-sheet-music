\version "2.24.0"

\include "settings.ily"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro vivo assai"

  \key a \minor
  \time 2/2

  <>_\markup { \dynamic "f" \italic "staccato" } \repeat unfold 3 { a'4-. c8-. b-. a4-. e-. | }
  a4-. c-. e-. c-. |
  \repeat unfold 3 { b4-. d8-. c-. b4-. e,-. | }
  b'4-. d-. e-. d-. |
  c4-. e8-. d-. c4-. e,-. |
  b'4-. d8-. c-. b4-. e,-. | |
  a4-. c8-. b-. a4-. e-. |
  g-sharp4-. b8-. a-. g-sharp4-. e-. |
  a4-. c8-. b-. a4-. e-. |
  b'4-. d8-. c-. b4-. e,-. |
  c'4-. e8-. d-. c4-. e,-. |
  b'4-. d8-. c-. b4-. e,-. |

  \repeat unfold 3 { a4-. c8-. b-. a4-. e-. | }
  a4-. c-. e-. c-. |
  \repeat unfold 3 { b4-. d8-. c-. b4-. e,-. | }
  b'4-. d-. e-. d-. |
  c4-. e8-. d-. c4-. e,-. |
  b'4-. d8-. c-. b4-. e,-. | |
  a4-. c8-. b-. a4-. e-. |
  g-sharp4-. b8-. a-. g-sharp4-. e-. |

  \repeat unfold 4 { a4-. c8-. a-. g-sharp4-. b8-. g-sharp-. | }
  a4-. c-. e-. e,-. |
  f4-. a-. c-. c,-. |
  d4-. f-. a-. d,-. |
  e4-. g-sharp-. b-. e-. |
  a,8-. a-. c-. c-. e4-. e,-. |
  f8-. f-. a-. a-. c4-. c,-. |
  d8-. d-. f-. f-. a4-. d,-. |
  e8-. e-. g-sharp-. g-sharp-. b-. b-. e-. e-. |
  a,4-. g-. f-. e-. |
  d4-. c-. b-. a-. |
  b'4-. a-. g-. f-. |
  e4-. d-. c-. b-. |
  c'4-. b-. a-. g-. |
  f4-. e-. d-. c-. |
  d'4-. c-. b-. a-. |
  g4-. f-. e-. d-. |
  e'4-. d-. c-. b-. |
  a4-. g-. f-. e-. |
  f'4-. e-. d-. c-. |
  b4-. c-. d-. b-. |
  e4-. d-. c-. b-. |
  a4-. b-. c-. a-. |
  d4-. c-. b-. a-. |
  g-sharp4-. a-. b-. g-sharp-. |

  a4-._\markup { \italic "sempre" \dynamic "f" } c8-. b-. a4-. e-. |
  a,4-. c8-. b-. a4-. e-. |
  a'4-. c8-. b-. a4-. e-. |
  a4-. c-. e-. c-. |
  b4-. d8-. c-. b4-. e,-. |
  b4-. d8-. c-. b4-. e,-. |
  b''4-. d8-. c-. b4-. e,-. |
  b'4-. d-. e-. d-. |
  c4-. e8-. d-. c4-. e,-. |
  b'4-. d8-. c-. b4-. e,-. | |
  a4-. c8-. b-. a4-. e-. |
  g-sharp4-. b8-. a-. g-sharp4-. e-. |
  a4-. c-. f,-. a-. |
  d,4-. f-. b,-. d-. |
  e4( \< a c e |
  f4 \> d b g-sharp) |
  a4-. \pp c-. f,-. a-.
  d,4-. f-. b,-. d-. |
  e4( \< a c e |
  f4 \> d b g-sharp) |
  a4-. \mf c8-. b-. a4-. e-. |
  a,4-. c8-. b-. a4-. e-. |
  a'4-. c8-. b-. a4-. e-. |
  f4-. d8-. b-. e4-. e,4-. |
  a4( \> g-sharp a g-sharp |
  a4 g-sharp a g-sharp) |
  <> \p \repeat unfold 2 { a4-. c8-. b-. a4-. e-. | }
  \clef \bass-clef-name a,1\fermata | \bar "|."
}
