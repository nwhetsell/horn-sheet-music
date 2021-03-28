\version "2.22.0"

\include "../turn-markup.ily"
\include "settings.ily"

\relative {
  \language "english"

  \transposition f

  \tempo "Adagio espressivo"

  \key g \major
  \time 4/4

  \repeat volta 2 {
    g'4 \tweak X-offset #(if preserve-line-breaks? 0 -1.5) #(make-dynamic-script (markup #:dynamic "p" #:normal-text (#:italic "dolce")))
    <<
      { g8.( a16) }
      {
        s8
        % This must be less than priority of DynamicLineSpanner objects:
        % http://lilypond.org/doc/Documentation/learning/outside_002dstaff-objects#the-outside_002dstaff_002dpriority-property
        \once \override Staff.TextScript.outside-staff-priority = #240
        s_\turn-markup
      }
    >>
    b8.( c32 b) a8( g) \breathe |

    d'4 \appoggiatura { e16 d } c-sharp16( d e d) a4 \breathe \afterGrace { \once \stemDown b4\startTrillSpan } { a16\stopTrillSpan( b) } |
    c4 \appoggiatura { d16 c } b16( c d c) e,4 \breathe \afterGrace f-sharp4\startTrillSpan { e16\stopTrillSpan( f-sharp) } |
    g8.( \tuplet 3/2 { a32 g f-sharp) } g8( \tweak after-line-breaking ##t \tweak to-barline ##f \< a16 b) a4( a-sharp) |
    b4. \! \breathe \acciaccatura d8 c16( b) f-sharp' \> e( d-sharp) c-natural!( b) a( g) f-sharp |
    g4 \< \breathe g16( a b g) e8( g' f-sharp e) |
    d16( \f c-sharp b a) e'( b c-sharp g') f-sharp( c-sharp d a-sharp) b( f-sharp g32 b g e) |
    f-sharp8( a d a-sharp) b( \> f-sharp) g16( f-sharp g e) |

    <<
      { a8.( \mf b16) c-sharp8.( \< d16) }
      {
        s8
        % This must be less than priority of DynamicLineSpanner objects:
        % http://lilypond.org/doc/Documentation/learning/outside_002dstaff-objects#the-outside_002dstaff_002dpriority-property
        \once \override Staff.TextScript.outside-staff-priority = #240
        s_#(turn-with-accidentals (markup #:null) (markup #:sharp))
        s s^\turn-markup }
    >>
    e16( f-sharp g e d c-sharp b c-sharp) |

    d8. \> a16 f-sharp'8. e16 d4 \! r |
  }

  \repeat volta 2 {
    d4 \mf
    <<
     { d8.( e16) }
     { s8 s^#(turn-with-accidentals (markup #:null) (markup #:sharp)) }
    >>
    f8-.( d-. b-. a-.) \breathe |

    g-sharp16-.( \< e-. f-sharp-. g-sharp-. a-. b-. c-. d-.) e4 \f
    <<
      {
        \voiceOne
        \mergeDifferentlyDottedOn
        d8. e16
      }
      \new Voice {
        \voiceTwo
        \slurUp
        \afterGrace d4\startTrillSpan { c16\stopTrillSpan( d) }
      }
    >> \oneVoice |

    c4 \appoggiatura { d16 c } b16( c d c) b( a c b) d( c) \tuplet 3/2 { e16( c a) } |
    g4.( \> a16 g) f-sharp4 \! r |

    \acciaccatura g,8 g'4_\markup { \dynamic "p" \italic "dolce" }
    <<
      { g8.( a16) }
      { s8 s_\turn-markup }
    >>
    b8.( c32 b) a8( g) \breathe |

    d'4 \appoggiatura { e16 d } c-sharp16( d e d) a4 \breathe \afterGrace b4\startTrillSpan { a16\stopTrillSpan( b) } |
    c-natural!8( e, b' a) g16( a32 g f-sharp16 g) a( \< b c d) |
    c8( b g' \f d-sharp) e( b) c16( e, b' a) |

    <<
      { g8.( a16) b8.( c16) }
      { s8 s_\turn-markup s s^\turn-markup }
    >>
    c-sharp16( d e d) c( \> a e f-sharp) |

    g8. d16 b'8. a16 g4 \! r |
  }
}
