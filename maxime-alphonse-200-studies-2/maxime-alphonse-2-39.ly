\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Lento" 4.=50

  \key f-sharp \minor
  \time 12/8

  c-sharp'8( \p \tweak minimum-length #5 \> e4) \!
  <<
    {
      c-sharp'8( e4) 8( c-sharp4) e,8( c-sharp4) |
      c-sharp8( e4) c-sharp'8( e4) 8( c-sharp4) a8( c-sharp,4) |
      c-sharp8( f-sharp4) c-sharp'8( f-sharp4) 8( c-sharp4) f-sharp,8( c-sharp4) \breathe |
      d8( f-sharp4) d'8( f-sharp4) 8( d4) f-sharp,8( d4) |
      d8( f-sharp4) d'8( f-sharp4) 8( d4) b8( d,4) \breathe |
      c-sharp8( g-sharp'4) c-sharp8( e-sharp4) 8( c-sharp4) g-sharp8( c-sharp,4) |
      c-sharp8( e-sharp4) g-sharp8( c-sharp4) g-sharp8( e-sharp4) e-sharp8( c-sharp4) \breathe | \bar "||"
    }
    { \repeat unfold 27 { s8 \> s4 \! } }
  >>

  \tempo "Più vivo" 4.=63
  <> \p \repeat unfold 2 { f-sharp8->( a f-sharp c-sharp f-sharp a) } |
  \repeat unfold 2 { g-sharp8->( b g-sharp c-sharp, g-sharp' b) } |
  \repeat unfold 2 { a8->( c-sharp a c-sharp, a' c-sharp) } \breathe |
  \repeat unfold 2 { g-sharp8->( b g-sharp c-sharp, g-sharp' b) } |
  f-sharp8->( a f-sharp c-sharp f-sharp a) f-sharp->( a f-sharp c-sharp e-sharp g-sharp)
  \repeat unfold 2 { e-sharp8->( g-sharp e-sharp c-sharp e-sharp g-sharp) } \breathe | \bar "||"

  \stemUp
  <> \mf \repeat unfold 2 { f-sharp8->( a) 8-. c-sharp->( a) 8-. d->( a) 8-. c-sharp->( a) 8-. | }
  e-sharp8->( g-sharp) 8-. b->( g-sharp) 8-. c-sharp( g-sharp) 8-. b->( g-sharp) 8-. |
  \stemNeutral
  e-sharp8->( g-sharp) 8-. b->( g-sharp) 8-. d'( g-sharp,) 8-. b->( g-sharp) 8-. |
  a8->( c-sharp) 8-. f-sharp->( c-sharp) 8-. b( d) 8-. f-sharp->( d) 8-. |
  \stemUp c-sharp8->( a c-sharp a c-sharp a) \stemNeutral g-sharp8->( b g-sharp b g-sharp b) |
  a8->( f-sharp a f-sharp a f-sharp) e-sharp->( g-sharp e-sharp g-sharp e-sharp g-sharp) \breathe | \bar "||"

  f-sharp8->( \p a f-sharp c-sharp) f-sharp( a f-sharp->) a( f-sharp c-sharp-> f-sharp) a-. |
  g-sharp8->( b g-sharp c-sharp,->) g-sharp'( b g-sharp->) b( g-sharp c-sharp, g-sharp') b-. |
  a8->( c-sharp a f-sharp->) a( c-sharp a->) c-sharp( a f-sharp-> a) c-sharp-. |
  \stemDown
  b8->( d b f-sharp->) b( d b->) d( b f-sharp-> b) d-. |
  b8->( d b e-sharp,->) b'( d b->) d( b e-sharp,-> b') d-. \breathe |
  b8->( c-sharp b e,!->) b'( d b->) c-sharp( b e,-> b') e-. \tweak X-offset #0.5 \breathe |
  \stemNeutral

  a,8-> c-sharp a( c-sharp,->) a'( c-sharp) a->( c-sharp) a( c-sharp,->) a'( c-sharp) |
  g-sharp8->( b) g-sharp( c-sharp,->) g-sharp'->( b) g-sharp->( b) g-sharp->( c-sharp,) g-sharp'->( b) |
  a8->( f-sharp a f-sharp-> a f-sharp) c-sharp->( f-sharp c-sharp f-sharp-> c-sharp f-sharp) |
  c-sharp8->( a c-sharp a c-sharp a) f-sharp( a f-sharp a f-sharp a) |
  <<
    { f-sharp8( c-sharp'4) f-sharp8( c-sharp'4) c-sharp,8( f-sharp4) 8( f-sharp'4\fermata) }
    { \repeat unfold 4 { s8 \> s4 \! } }
  >> | \bar "|."
}
