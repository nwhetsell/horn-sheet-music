\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Moderato"

  \key a \major
  \time 4/4

  \partial 4 { \tuplet 3/2 { c-sharp''8-.(_\markup { \dynamic "p" \italic "dolce delicatamente" } a-. c-sharp-.) } } |
  f-sharp4-.( e-. d-. c-sharp-.) |
  b2( a8) r \tuplet 3/2 { c-sharp8-.( a-. c-sharp-.) } |
  f-sharp4-.( e-. d-. c-sharp-.) |
  b2( f-sharp8) r \tuplet 3/2 { d'8-.( b-. d-.) }
  g-sharp4-.( f-sharp-. e-. d-.) |
  c-sharp2( b8) r \tuplet 3/2 { e8-.( d-sharp-. e-.) } |
  e,4 \< \tuplet 3/2 { e'8-.( d-sharp-. e-.) } f-sharp,4 \tuplet 3/2 { e'8-.( d-sharp-. e-.) } |
  c-sharp2( \> a8) \! r \acciaccatura d8 \tuplet 3/2 { c-sharp8-.( a-. c-sharp-.) } |
  f-sharp8-. e,-. e'-. e,-. d'-. e,-. c-sharp'-. e,-. |
  \once \stemDown \afterGrace b'2\trill( { a32 c-sharp b } a8) r \acciaccatura d8 \tuplet 3/2 { c-sharp8-.( a-. c-sharp-.) } |
  f-sharp8-. e,-. e'-. e,-. d'-. e,-. c-sharp'-. e,-. |
  \once \stemDown \afterGrace b'2\trill( { a-sharp16 b } f-sharp8) r \acciaccatura e'8 \tuplet 3/2 { d8-.( b-. d-.) } |
  g-sharp-. e,-. f-sharp'8-. e,-. e'-. e,-. d'-. e,-. |
  \afterGrace c-sharp'2\trill( { b32 d c-sharp } b8) r \acciaccatura f-sharp'8 \tuplet 3/2 { e8-.( d-sharp-. e-.) } |
  f-sharp,4 \tweak to-barline ##f \> \acciaccatura f-sharp'8 \tuplet 3/2 { e8-.( d-sharp-. e-.) } g-sharp,4 \acciaccatura f-sharp'8 \tuplet 3/2 { e8-.( d-sharp-. e-.) } |
  a,2 \! r4 \acciaccatura b8 \tuplet 3/2 { a8-.( g-sharp-. a-.) } |

  b4-.( e,-. g-. c-sharp,-.) |
  d8( \< f-sharp a \! f-sharp' d) r \acciaccatura e8 \tuplet 3/2 { d8-.( c-sharp-. d-.) } |
  c-sharp8. \< e16 b8. d16 a8. c-sharp16 g8. b16 |
  f-sharp8. \> g16 e8. f-sharp16 d8 \! r \acciaccatura b'8 \tuplet 3/2 { a8-.( g-sharp-. a-.) } |
  c-sharp4-.( b-. a-. g-.) |
  f-sharp8. \< g16 a8. b16 c-sharp8. d16 e8. f-sharp16 \! |
  \tuplet 3/2 4 { a8->( g) b,-. g'->( f-sharp) a,-. f-sharp'->( e) g,-. e'->( c-sharp) a-. } |
  d2 r4 \acciaccatura e8 \tuplet 3/2 { d8-.( \< c-sharp-. d-.) } |

  d-sharp4( \sf \> c a f-sharp) \! |
  d-sharp4~( \tuplet 3/2 { d-sharp8 d c-sharp } d4) \acciaccatura e'8 \tuplet 3/2 { d8-.( \< c-sharp-. d-.) } |
  d-sharp4( \sf \> c a f-sharp) \! |
  d-sharp4~( #(make-music 'CrescendoEvent 'span-direction START 'span-type 'text 'span-text "poco a poco cresc.") \tuplet 3/2 { d-sharp8 c-sharpsharp d-sharp) } e4~( \tuplet 3/2 { e8 d-sharp e) } |
  e-sharp4~( \tuplet 3/2 { e-sharp8 d-sharpsharp e-sharp) } f-sharp4~( \tuplet 3/2 { f-sharp8 e-sharp f-sharp) } |
  \tuplet 3/2 4 { g8( f-sharp g g-sharp f-sharpsharp g-sharp a g-sharp a a-sharp g-sharpsharp a-sharp) } |
  b4-. \! r r2 |
  b-sharp4-. r r \tuplet 3/2 { c-sharp!8-.(_\markup { \dynamic "p" \italic "dolce" } a-. c-sharp-.) } |

  f-sharp8-. f-sharp->( e) e->( d) d->( c-sharp) c-sharp-. |
  \once \stemDown \afterGrace b2\trill( { a32 c-sharp b } a8) r \tuplet 3/2 { c-sharp8-.( a-. c-sharp-.) } |
  f-sharp8-. f-sharp->( e) e->( d) d->( c-sharp) c-sharp-. |
  \once \stemDown \afterGrace b2\trill( { a-sharp16 b } f-sharp8) r \tuplet 3/2 { d'8-.( b-. d-.) } |
  g-sharp8-. g-sharp->( f-sharp) f-sharp->( e) e->( d) d-. |
  \afterGrace c-sharp2\trill( { b32 d c-sharp } b8) r \acciaccatura f-sharp'8 \tuplet 3/2 { e8-.( d-sharp-. e-.) } |
  \tuplet 3/2 { f-sharp,8-.( e-sharp-. f-sharp-.) } \acciaccatura f-sharp'8 \tuplet 3/2 4 { e!8-.( d-sharp-. e-.) g-sharp,-.( f-sharpsharp-. g-sharp-.) } \acciaccatura f-sharp'!8 \tuplet 3/2 4 { e-natural8-.( d-sharp-. e-.) } |
  a,2 r4 \tuplet 3/2 { e8-.( \pp a-. c-sharp-.) } |
  e2.~( \tuplet 3/2 { e8 f-sharp g-sharp } |
  a2) r4 \tuplet 3/2 { e,8-.( \ppp a-. c-sharp-.) } |
  e2.~( \tuplet 3/2 { e8 d b } |
  a4) r c-sharp-. r |
  \partial 2. { a2-^ r4 } | \bar "|."
}
