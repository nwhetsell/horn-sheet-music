\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Andante" 4=44

  \key c \major
  \time 4/4

  \partial 16 { c'16( \mf } |
  c'8.-^) \once \override Slur.positions = #'(-2 . -4.5) g16( e8.-^) c16( g'8.-^) e16( \< c'8.-^)  \once \override Slur.positions = #'(2 . 4) g16( |
  e'8.-^) \once \override Slur.positions = #'(1.5 . 4.5) c16( \! g'8.-^) e16( c8.-^) \tweak to-barline ##f \> e16( g,8.-^) \once \override Slur.positions = #'(0 . -4) c16( |
  e,8.-^) \! \once \override Slur.positions = #'(-1.5 . -5) g16( c,8.-^) e16( \> g4) \! r8. c,16( \f |

  \stemUp
  c'8.-^) \once \override Slur.positions = #'(-1.5 . -4.5) a16( e8.-^) c16( \< a'8.-^) e16( c'8.-^)
  \shape #'(
    ((0 . 2.9) (0 . 3) (0 . 3.25) (0 . 3.5))
    ()) Slur
  a16( \! |
 \stemNeutral

  <<
    { e'8.-^) \once \override Slur.positions = #'(1.5 . 5) c16( a'8.-^) e16_\markup { \center-align \italic "segue" }( c8.) e16( a,8.) c16( | }
    { s2 s16 s \> }
  >>
  e,8.) a16( c,8.) e16( \! a4) r8. d,16( \mf |
  a'8.) f16( d8.) a16( f'8.) d16( a'8.) f16( |
  d'8.) \once \override Slur.positions = #'(0.5 . 3) a16( f'8.) d16( a8.) d16( f,8.) a16( |
  d,8.) f16( a,8.) d16( f4) r8. e16( |

  g-sharp8-^)_\markup { \italic "marcato" } e16 d-sharp e8. e16( a8-^) e16 d-sharp e8. e16( |
  b'8-^) e,16 d-sharp e8. e16( c'8-^) e,16 d-sharp e8.[ \tweak Y-offset #4 \breathe e'16]_\markup { \dynamic "f" \italic "più sostenuto" }( |

  a,8.--) \once \override Slur.positions = #'(1.5 . 3.5) c16( f8.--) \override Slur.positions = #'(1.5 . 3) c16( e8.--) b16( d8.--) \revert Slur.positions
  \shape #'(
    ((0 . 0) (0 . 0) (0 . 0.25) (0 . 0.5))
    ((0 . 2.75) (0 . 2) (0 . 1.5) (0 . 0))) Slur
  16( |

  g-sharp,8.--) b16( e8.--) \once \override Slur.positions = #'(1.5 . 3) b16( d8.--) a16( c8.--) 16_\markup { \center-align \italic "segue" }( |
  \stemUp f,8.) a16( d8.) a16( c8.) g-sharp16( b8.) 16( \stemNeutral |
  e,8.) \< f16( \tempo "Rall." e8.) g-sharp16( e8.) b'16( e,8) \! \breathe r16 a,16( |

  \tempo "Tempo"

  a'8.-^) \once \override Slur.positions = #'(-2.5 . -5.5) e16( c8.-^) a16( e'8.-^) c16( a'8.-^)
  \shape #'(
    ((0 . 3.4) (0 . 3.5) (0 . 3.75) (0 . 4))
    ()) Slur
  e16( |

  c'8.-^) \once \override Slur.positions = #'(0.5 . 4) a16( e'8.-^) c16( a8.-^) c16_\markup { \center-align \italic "segue" }( e,8.) a16( |
  c,8.) e16( a,8.) c16( e4) r8. a,16( |
  a'8.) f16( c8.) a16( f'8.) c16( a'8.) f16( |
  c'8.) \once \override Slur.positions = #'(0.5 . 3) a16( f'8.) c16( a8.) c16( f,8.) a16( |
  c,8.) f16( a,8.) c16( f4) r8. b,16( |
  f'8.) d16( b8.) f16( d'8.) b16( f'8.) d16( |
  b'8.) f16( d'8.) b16( f8.) b16( d,8.) f16( |
  b,8.) d16( f,8.) b16( d4) r8. e16( |
  g-sharp8-^)_\markup { \italic "marcato" } e16 d-sharp e8. e16( a8-^) e16 d-sharp e8. e16( |
  b'8-^) e,16 d-sharp e8. e16( c'8-^) e,16 d-sharp e8.[ \tweak Y-offset #4 \breathe e'16]( |
  a,8._\markup { \italic "più sostenuto" }) \once \override Slur.positions = #'(1.5 . 3) c16( f8.) c16( e8.) b16( d8.) \dim 16( |
  g-sharp,8.) b16( e8.) b16( d8.) a16( c8.) 16( |

  f,8.)
  a16( % Printed editions have c instead of a here.
  d8.) a16( \! c8.) g-sharp16( b8.) e,16( |

  a8)[ \tweak Y-offset #4 \breathe a16 g-sharp] a8. c16( a8) a16 g-sharp a8. e'16( |
  a,8) a16 g-sharp16 \tempo "Rall." a8. \tweak to-barline ##f \> c16( a8.) c16( a8.) c16( |
  a2) \! r | \bar "|."
}
