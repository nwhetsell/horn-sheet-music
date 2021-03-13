\version "2.22.0"

\include "../turn-markup.ily"

\relative {
  \language "english"

  \transposition f

  \tempo "Andante con moto"

  \key e \major
  \time 4/4

  g-sharp'4.( \p a8 b4 e,) |
  c-sharp'8( \< d-sharp e \> c-sharp b2 \!) |
  a4.( b8) g-sharp4( b) |
  f-sharp4( \grace { g-sharp32 f-sharp e-sharp f-sharp } a8 g-sharp \< f-sharp4. f-sharpsharp8) \! |
  g-sharp4.( a8 b4 e,) |
  c-sharp'16( \< d-sharp e d-sharp f-sharp \> e d-sharp c-sharp b2) |
  b8( \< e b g-sharp) f-sharp8( c-sharp' b16 a g-sharp f-sharp) |
  e4( \> \grace { f-sharp32 e d-sharp e } g-sharp8 f-sharp e4) \! r |

  f-sharp4 \mf f-sharp8. f-sharp16 f-sharp-. d-sharp-. b-. f-sharp-. b-. d-sharp-. f-sharp-. g-sharp-. |
  f-sharp16( e d-sharp e a-sharp b g-sharp e c-sharp4) r |
  e4 e8. e16 e-. c-sharp-. a-sharp-. f-sharp-. a-sharp-. c-sharp-. e-. f-sharp-. |
  e16( d-sharp c-sharpsharp d-sharp g-sharp f-sharp d-sharp b f-sharp4) r |
  f-sharp'4_\markup { \italic "più" \dynamic "f" } f-sharp8. f-sharp16 f-sharp-. d-sharp-. b-. f-sharp-. d-sharp-. f-sharp-. b-. d-sharp-. |
  f-sharp16( e d-sharp e a-sharp b g-sharp e c-sharp4) r |
  f-sharp16( e d-sharp e f-sharp g-sharp a-sharp b c-sharp d-sharp e c-sharp a-sharp f-sharp e c-sharp) |
  b16( a-sharp b d-sharp g-sharp f-sharp d-sharp f-sharp b4) r |

  a-natural!16-. \p \< b-. f-sharp-. b-. a-. b-. f-sharp-. b-. a-. \> b-. f-sharp-. b-. a-. b-. f-sharp-. b-. |
  g-sharp16-. \< b-. e,-. b'-. g-sharp-. b-. e,-. b'-. g-sharp-. \> b-. e,-. b'-. g-sharp-. b-. e,-. b'-. |
  f-sharp16-. \< b-. b,-. b'-. f-sharp-. b-. b,-. b'-. f-sharp-. \> b-. b,-. b'-. f-sharp-. b-. b,-. b'-. |
  e,16-. \< b'-. b,-. b'-. g-sharp-. b-. b,-. b'-. e,-. \> b'-. b,-. b'-. g-sharp-. b-. b,-. b'-. |
  a16-. \< b-. f-sharp-. b-. a-. b-. f-sharp-. b-. a-. \> b-. f-sharp-. b-. a-. b-. f-sharp-. b-. |
  g-sharp16-. \< b-. e,-. b'-. g-sharp-. b-. b,-. b'-. g-sharp-. \> b-. e,-. b'-. g-sharp-. b-. b,-. b'-. |
  f-sharp16-. \< b-. d-sharp,-. b'-. b,-. b'-. d-sharp,-. b'-. f-sharp-. \> b-. d-sharp,-. b'-. b,-. b'-. d-sharp,-. b'-. |
  e,16-. \< b'-. g-sharp-. b-. e,-. \> b'-. b,-. b'-. e,4 \! r |

  g-sharp4.( \p a8 b4 e,) |
  c-sharp'8( \< a e' \> c-sharp b2 \!) |
  a4~( a16 f-sharp a b) g-sharp4~( g-sharp16 e g-sharp b) |
  <<
    { f-sharp4.( a16 g-sharp f-sharp4. f-sharpsharp8) }
    { s4 s16 s_\sharp-turn-markup }
  >> |
  g-sharp4.( a8 b4 e,) |
  c-sharp'16( \< d-sharp e d-sharp f-sharp \> e d-sharp c-sharp b2) |
  b8( \< e b g-sharp) f-sharp8( c-sharp' b16 a g-sharp f-sharp) |
  e8( \> b g-sharp'8 f-sharp e4) \! r |
  b'4~( \< b16 b-sharp c-sharp d-sharp \! e4.) r8 |
  b,4~( \> b16 a-sharp a f-sharp \! e4.\fermata) r8 | \bar "|."
}
