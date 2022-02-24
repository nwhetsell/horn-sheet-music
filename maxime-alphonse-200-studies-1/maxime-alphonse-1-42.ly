\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Quasi lento" 4=80

  \key g \minor
  \time 2/4

  r8 g'-. \p 8-. 8-. |
  g8-> d'-. 8-. 8-. |
  d8-> g,-. 8-. 8-. |
  g8-> e-flat'-. 8-. 8-. |
  \override DynamicLineSpanner.staff-padding = #3.4
  \override Hairpin.after-line-breaking = ##t
  \override Hairpin.to-barline = ##f
  e-flat8->[ \breathe g,-.] \< 8-. b-flat-. |
  a8-. \! 8-. \< 8-. c-. |
  b-flat8-. \! 8-. \< 8-. d-. |
  c8.( \mf b-flat16) c8.( a16) |
  \revert DynamicLineSpanner.staff-padding
  b-flat8.( a16) b-flat8.( g16) |
  a8.( g16) a8.( f-sharp16) |
  d2 |

  r8 g-. \p 8-. 8-. |
  g8-> d'-. 8-. 8-. |
  d8-> g,-. 8-. 8-. |
  g8-> e-flat'-. 8-. 8-. |
  \override DynamicLineSpanner.staff-padding = #3
  e-flat8->[ \breathe a,-.] \tweak to-barline ##f \< 8-. c-. |
  b-flat8-. \! 8-. \< 8-. d-. |
  c8-. \! 8-. \< 8-. e-flat-. |
  d8.( \mf c16) d8.( b-flat16) |
  \revert DynamicLineSpanner.staff-padding
  \revert Hairpin.after-line-breaking
  \revert Hairpin.to-barline
  c8.( b-flat16) c8.( a16) |
  b-flat8.( a16) b-flat8.( g16) |
  d'2 |

  r8 d-. \p 8-. 8-. |
  d8-> g,-. 8-. 8-. |
  g8-> d'-. 8-. 8-. |
  d8-> f,-. 8-. 8-. |
  f8-> d'-. 8-. b-flat8-. |
  c8-> 8-. 8-. a8-. |
  b-flat8-> 8-. 8-. g8-. |
  a8.( \tweak to-barline ##f \< b-flat16) a8.( c16) |
  b-flat8.( c16) b-flat8.( d16) |
  c8.( d16) c8.( e-flat16) |
  d2 \! |

  r8 d-. \f 8-. 8-. |
  d8-> g,-. 8-. 8-. |
  g8-> d'-. 8-. 8-. |
  d8-> f,-. 8-. 8-. |
  f8->[ \tweak Y-offset #3.25 \breathe c'-.] 8-. a8-. |
  b-flat8-> 8-. 8-. g8-. |
  a8-> 8-. 8-. f-sharp8-. |
  g8.( \< a16) g8.( b-flat16) |
  g8.( \< a16) g8.( d'16) |
  g,8.( \< a16) g8.( b-flat16) |
  <<
    { g2 \> }
    { s4 s8 s16 s \! }
  >> | \bar "|."
}
