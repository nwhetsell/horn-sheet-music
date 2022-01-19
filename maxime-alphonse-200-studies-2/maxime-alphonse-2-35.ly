\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Moderato" 4.=66

  \key d \major
  \time 6/8

  d''8->_\markup { \dynamic "mf" \italic "con spirito" } 8 c-sharp8 4( b8) |
  d8 c-sharp e d c-sharp b |
  b8->( a4) b8 a f-sharp |
  d4-> f-sharp8-. e4-> g8-. |
  f-sharp4-> a8-. g4-> b8-. |
  a4.-> r8 a-. \< d-. |
  f-sharp4->( \! e8) r d-. c-sharp-. |
  c-sharp4->( b8) r c-sharp-. \< d-. |
  e4->( \! c-sharp8) e4->( c-sharp8) |
  d4->( \! b8) d4->( b8) |
  <<
    { a4.-> r8 a-. b-. }
    { s4. s16 s \p \< }
  >> |
  a4->( \! g8) r g-. \< d'-. |
  g,4->( \! f-sharp8) r a f-sharp |
  e8( g e) f-sharp( a f-sharp) |
  <<
    { e4. r8 f-sharp-. g-. }
    { s4. s16 s \mf \< }
  >> |
  a4->( \! d8) r c-sharp-. b-. |
  c-sharp4->( e8) r d c-sharp |
  e8( d) c-sharp e( d) b |

  a4. r8 a( \mf f-sharp') |
  e4->( \cresc d8) r c( d) |
  c4->( b8) r b( g') |
  f-sharp4( e8) r d( e) |
  d4->( c-sharp!8) r d e |
  f-sharp4( \f d8) a4( \> f-sharp8) |
  a4( g8~8 d' g,) |
  f-sharp4. \! r8 a-. \mf f-sharp'-. |
  e4->( \cresc d8) r c-. d-. |
  c4->( b8) r b-. g'-. |
  f-sharp4( e8) r d-. e-. |
  d4->( c-sharp!8) r d-. e-. |
  f-sharp4 \ff a8 f-sharp4 d8 |
  a4 g8->~8 f-sharp e |
  d4. r8 d \mf \< e |

  f-sharp4( d'8~8) \> b-flat g |
  f-sharp4. \! r8 d \< e |
  f-sharp4( a8~8) \> f-sharp e |
  d4. \! r8 d-._\markup { \dynamic "p" \italic "molto misurato" } e-. |
  f-sharp8-. a,-. f-sharp'->~8 c-sharp-. d-. |
  a'4.-^ r8 d,8-. e-. |
  f-sharp8-. a,-. a'->~8 c-sharp,-. d-. |
  d'4( \cresc b8 d4 g,8 |
  d'4 a8 d4 f-sharp,8)
  d'8-. \! a-. f-sharp-. d-. a-. <\tweak font-size #-2 f-sharp' f-sharp,>-. |
  <\tweak font-size #-2 d d,>2. | \bar "|."
}
