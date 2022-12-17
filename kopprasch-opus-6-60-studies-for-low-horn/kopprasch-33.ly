\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Adagio"

  \key c \major
  \time 2/4

  \partial 8 { g8( \p } |
  c16)[ r c'8]( e16)[ r c,8]( \cresc |
  b16)[ r d'8]( f16)[ r g,,8]( |
  c16)[ r e'8]( \f g16)[ r e,8]( |
  f16)[ r d'8]( b16)[ r g,8]( |
  c16)[ r g''8]( e16)[ r c,,8]( |
  f16)[ r <a'' \tweak font-size #-2 c,>8]^( f16)[ r f-sharp,,8]( |
  g16)[ r f''8]( \dim d16)[ r g,,8]( |
  c16)[ r e'8]( c16) \! r\fermata \bar "||"

  \tempo "Allegro"
  g,8-. \p |
  c8-. c'-. e-. c,-. |
  b8-. \cresc d'-. f-. g,,-. |
  c8-. e'-. g-. e,-. |
  f8-. d'-. b-. g,-. |
  c8-. g''-. e-. c,,-. |
  f8-. <a'' \tweak font-size #-2 c,>-. f-. f-sharp,,-. |
  g8-. \dim f''-. d-. b,-. |
  c8-. e'-. c-. \bar "||"
  \caesura \once \set Staff.caesuraType = #'((scripts . (fermata)))

  \tempo "Adagio"
  c,8( \p |
  g16)[ r d''8]( f16)[ r b,,8]( \cresc |
  c16)[ r e'8]( g16)[ r e,8]( |
  f16)[ r f'8]( \f a16)[ r f-sharp,,8]( \p |
  g16)[ r d''8]( \cresc b16)[ r g,8]( |
  a-flat16)[ r \tweak NoteColumn.X-offset #1 e-flat''8]( c16)[ r c,8]( |
  e-flat16)[ r c'8]( \f a-flat16)[ r a-flat,8]( |
  c16)[ r c'8]( f-sharp,16)[ g\rest a-flat,8]( |
  g16)[ \> r b'8]( g16)[ g\rest g,8]( \p |
  c16)[ r c'8]( \cresc e16)[ r c,8]( |
  b16)[ r d'8]( f16)[ r g,,8]( |
  c16)[ r e'8]( g16)[ r e,8]( |
  f16)[ r f'8]( \f a16)[ r f-sharp,,8]( \p |
  g16)[ r c'8]( e16)[ r a-flat,,8]( |
  g16)[ \< r d''8]( f16)[ \! r b,,8]( |
  c16)[ r a-flat'8]( \> g16)[ g\rest g,8]( \! |
  c4) r8\fermata \bar "||"

  \tempo "Allegro"
  c8-. \p |
  b8-. d'-. f-. b,,-. |
  c8-. \cresc e'-. g-. e,-. |
  f8-. \f f'-. a-. f-sharp,,-. |
  g8-. d''-. b-. g,-. |
  a-flat8-. e-flat''-. c-. c,-. |
  e-flat8-. c'-. a-flat-. a-flat,-. \dim |
  c8-. c'-. f-sharp,-. a-flat,-. |
  g8-. b'-. g-. g,-. |
  c8-. \p c'-. e-. c,-. |
  b8-. \cresc d'-. f-. g,,-. |
  c8-. e'-. g-. e,-. |
  f8-. \f f'-. a-. f-sharp,,-. |
  g8-. c'-. e-. a-flat,,-. |
  g8-. d''-. f-. b,,( |
  c8) a-flat'-. g-. g,-. |
  \partial 4. { c4 r8 } | \bar "|."
}
