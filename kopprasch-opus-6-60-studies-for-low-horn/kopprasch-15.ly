\version "2.22.0"

\include "../turn-markup.ily"
\include "settings.ily"

\relative {
  \language "english"

  \transposition f

  \tempo "Adagio"

  \key c \major
  \time 3/4

  \repeat volta 2 {
    \partial 8 { g'8 \f } |
    c8.( g32 e) c4 r8 c \p |
    b8. d16 g4 r8 g \f |
    d'8.( b32 g) f4 r8 b, \p |
    c8. e16 g4 r8 g \f |
    e'8.( c32 a) f-sharp4 r8 f-sharp |
    g8.( b32 d) g16( d-sharp e b) d( c e, a) |
    <<
      { g8.( \> b16) }
      {
        s8
        % This must be less than priority of DynamicLineSpanner objects:
        % http://lilypond.org/doc/Documentation/learning/outside_002dstaff-objects#the-outside_002dstaff_002dpriority-property
        \once \override Staff.TextScript.outside-staff-priority = #240
        s_\sharp-turn-markup
      }
    >> d,16( g b, e) d8 f-sharp, |
    g8.( \p b32 d) g4 r8
  }
  \repeat volta 2 {
    g8 \f |
    f'8.( d32 b) g4 r8 g, \p |
    f'8.( d32 b) g4 r8 g' \f |
    g'8.( e32 c) g4 r8 g, \p |
    g'8.( e32 c) g4 r8 g'_\markup { \italic "espress." } |
    <<
      { c8.( d16) }
      { s8 s^\turn-markup }
    >> e-flat8( d c b-flat) |
    <<
      { a-flat8.( \< b-flat16) }
      { s8 \once \override Staff.TextScript.outside-staff-priority = #240 s_\turn-markup }
    >> c8( b-flat a-flat g) \breathe |
    f-sharp8.( \f a32 c e-flat8.) c,32( d e-flat8.) f-sharp!32( a |
    g8.) b32( d g4) r8\fermata g,8 \f |
    c8.( g32 e) c4 r8. e32( \p c) |
    g8.( b32 d) g4 r8. g32 \f( f) |
    e8.( g-sharp32 b) e4 r8 d |
    c8.( b16) a( b c c-sharp d e f32 a, e' d) |
    <<
      { c8.( e16) }
      { s8 s^\turn-markup }
    >> g,16( \> c) e,( a) g8( b,) |
    c8.( e32 g) c4 \!
    <<
      { r8. e,32( g) }
      { s8 s16 \p \< s32 s \! }
    >> |
    b-flat8.^>( g32 \> e) c4 \! r8. f32( \< a) \! |
    c8.^>( a32 \> f) c4 \! r8. f32( \> g) |
    a-flat8.( f32 d) b4 r8. g32( \pp b) |
    c8.( g32 e) \clef \bass-clef-name c4 r8
  }
}
