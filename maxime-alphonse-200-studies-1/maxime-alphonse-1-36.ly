\version "2.24.0"

\include "../sf-accent.ily"

\relative {
  \language "english"

  \transposition f

  \tempo "Moderato" 4=72

  \key c \major
  \time 2/4

  c'4-^_\markup { \dynamic "f" \italic "pesante" } d8-^ e-^ |
  f4->~16 e d c |
  f8-^ e-^ d-^ c-^ |
  g'4-> r16 16 \mf \< a b |
  c8.->( \! d16) e f, \< g a |
  b8.->( \! a16) d e, \< f g |
  a8.->( \! b16) c c b a |
  b8-^ g->~16 a g f-sharp |
  g2-> \breathe |

  g,4-^ \p a8-^ b-^ |
  c4->~16 b a g |
  c8-^ b-^ a-^ g-^ |
  d'4-> r16 16 \< e f-sharp |
  g8.->( \! a16) b c, \< d e |
  f-sharp8.->( \! g16) a b, \< c d |
  e8.->( \! f-sharp16) g g f-sharp e |
  f-sharp8-^ d->~16 e d c-sharp |
  d2-> \breathe |

  d'8-. 4-> e,8-. |
  c'!8-> 8~\sf-accent 16 b a g |
  c8-. 4-> d,8-. |
  b'8-> 8~\sf-accent 16 a g f-sharp |
  b8.->( g16) e[ \tweak Y-offset #3 \breathe 16 f-sharp g] |
  a8.->( f-sharp16) d16 16 \< e f-sharp |
  g8 \> f! e d \! |

  c4-^ \f d8-^ e-^ |
  f4->~16 e d c |
  f8-^ e-^ d-^ c-^ |
  g'4-> r16 16 \< a b |
  c8.->( \sf \> d16) \! e f, \< g a |
  b8.->( \sf \> a16) \! d[ \breathe e, \< f g] |
  a8.->( \sf \> b16) \! c a g f |
  g8-^ e->~16 f e d |
  c2 | \bar "|."
}
