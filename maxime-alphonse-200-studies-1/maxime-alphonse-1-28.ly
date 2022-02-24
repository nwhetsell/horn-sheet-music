\version "2.22.0"

\include "../sf-accent.ily"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegretto" 4=104

  \key g \major
  \time 2/4

  g'8( \p d) e-. f-sharp( \< |
  g8 \> b) \! a-. g-. |
  f-sharp8->( d') r f-sharp,-. |
  g8 d( \< e f-sharp) |
  g8( \> b a) g-. \< |
  a8->( d) r a-. |
  b8->( d) r b-. |
  c8->( e) r c-. |
  d8->( g) \! r4 |

  b,8( \p f-sharp) g-sharp a-sharp( |
  b8 d) c-sharp-. b-. |
  a-sharp8->( f-sharp') r a-sharp,-. |
  b8-> f-sharp( \< g-sharp a-sharp) |
  b8( \> d c-sharp) b-. |
  c-sharp8->( \< f-sharp) r c-sharp-. |
  d8->( f-sharp) r f-sharp,-. |
  b8->( f-sharp') r f-sharp,-. |
  a-sharp8->( f-sharp') \! r4 |

  d8 \f a!( b) c-sharp |
  d8 f-sharp( e) d( |
  e8-> a,) r a-. |
  d8-> a( b) c-sharp-. |
  d8 f-sharp( e) d( |
  c-sharp8-> f-sharp,) r8 \stemUp 8( |
  a-sharp8\sf-accent f-sharp) r8 8( |
  c-sharp'8\sf-accent f-sharp,) r8 8( |
  f-sharp'8\sf-accent f-sharp,) \stemNeutral r4 |

  g8( \p \< d e f-sharp) |
  g8 b( \> a) g |
  f-sharp8( d') \! r f-sharp,-. \pp |
  g8( d e f-sharp) |
  g8 b( a) g |
  f-sharp8( d') r f-sharp,( \< |
  g8-> d) r8 8( |
  b'8 \tweak avoid-slur #'inside -> g) r8 8( |
  g'8-> g,) \! r4 | \bar "|."
}
