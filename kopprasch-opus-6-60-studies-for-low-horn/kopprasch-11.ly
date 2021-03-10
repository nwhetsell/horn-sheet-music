\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Andante"

  \key g \major
  \time 3/2

  \repeat volta 2 {
    g2 \f \> \afterGrace g'4.^\startTrillSpan { f-sharp16\stopTrillSpan( g } a8) b4 \! g, \f |
    f-sharp2 \afterGrace a'4.^\startTrillSpan \> { g-sharp16\stopTrillSpan( a } b8) c4 \! f-sharp,, \f |
    f2 \afterGrace { \once \stemDown b'4.^\startTrillSpan \> } { a16\stopTrillSpan( b } c8) d4 \! f,, \f |
    e2 \afterGrace c''4.^\startTrillSpan \> { b16\stopTrillSpan( c } d8) e4 \! e,, \f |
    d2 \afterGrace d''4.^\startTrillSpan \> { c-sharp16\stopTrillSpan( d } e8) f-sharp4 \! d \f |
    g2 g, r |
  }
  \repeat volta 2 {
    f-sharp,2 \f \> \afterGrace e''4.^\startTrillSpan { d16\stopTrillSpan( e } d8) c4 \! f-sharp,, \f |
    g2 \afterGrace d''4.^\startTrillSpan \> { c16\stopTrillSpan( d } c8) b4 \! g, \f |
    a2 \afterGrace c'4.^\startTrillSpan \> { b16\stopTrillSpan( c } b8) a4 \! a, \f |
    b2 \afterGrace { \once \stemDown b'4.^\startTrillSpan \> } { a16\stopTrillSpan( b } a8) g4 \! b, \f |
    c4 r \afterGrace a'1^\startTrillSpan \p { g-sharp16\stopTrillSpan( a) } |
    d,,4 r \afterGrace f-sharp'1^\startTrillSpan { e16\stopTrillSpan( f-sharp) } |
    g4 g, \< \afterGrace { \once \stemDown b'2^\startTrillSpan } { a-sharp16\stopTrillSpan( b } \afterGrace d2)^\startTrillSpan { c-sharp16\stopTrillSpan( d) } |
    g2 \f g,, r |
  }
}
