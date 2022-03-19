\version "2.22.0"

\include "../turn-markup.ily"

\relative {
  \language "english"

  \transposition f

  \tempo "Lento" 4=63

  \key d \major
  \time 2/4

  \textLengthOn
  \override TextScript.extra-spacing-width = #'(-0.5 . 0.5)
  \override TextScript.outside-staff-priority = ##f

  #(define measures-one-to-four #{
    \relative {
      \override TextScript.Y-offset = #-1.5
      <<
        { d'4( \p 8 f-sharp) | }
        { s8 s^\turn-markup }
      >>
      <<
        { e4( 8 g) | }
        { s8 s^\turn-markup }
      >>
      \override TextScript.Y-offset = #-0.5
      <<
        { f-sharp4( 8 a) | }
        { s8 s^\turn-markup }
      >>
      <<
        { g4( 8 b) | }
        { s8 s^\turn-markup }
      >>
    }
  #})

  \measures-one-to-four
  a'4 r16 f-sharp' \> d a |
  a8( \> g) \! r16 e' \> c-sharp g |
  g8( \> f-sharp16) \! r d'8 \mf c-sharp |
  \override TextScript.Y-offset = #0.5
  <<
    {
      b4( \< 8 e) |
      c-sharp4( 8 e) |
    }
    {
      s8 s^#(turn-with-accidentals (markup #:null) (markup #:sharp)) s4
      s8 s^\turn-markup
    }
  >>
  f-sharp16 \> e d c-sharp e d c-sharp b \! |
  <<
    {
      \stemUp a4( 8 c-sharp) \stemNeutral |
      e,4( 8 a) |
    }
    {
      s8 s^#(turn-with-accidentals (markup #:null) (markup #:sharp)) s4
      s8 s_#(turn-with-accidentals (markup #:null) (markup #:sharp))
    }
  >>
  a,4. r8 |

  \measures-one-to-four
  a'4 r16 a \< d f-sharp |
  a,8( \> g) \! r16 g \< c-sharp e |
  g,8( \> f-sharp16) \! r d'8 \mf c-sharp |
  \override TextScript.Y-offset = #0.5
  <<
    {
      b4( 8 e) |
      c-sharp4( 8 e) |
    }
    {
      s8 s^#(turn-with-accidentals (markup #:null) (markup #:sharp)) s4
      s8 s^\turn-markup
    }
  >>
  e,16 \< f-sharp g-sharp a b c-sharp d b |
  <<
    { \stemUp a4( \f 8 c-sharp) \stemNeutral | }
    { s8 s^#(turn-with-accidentals (markup #:null) (markup #:sharp)) }
  >>
  \override TextScript.Y-offset = #1.5
  <<
    { e4( 8 c-sharp) | }
    { s8 s^#(turn-with-accidentals (markup #:null) (markup #:sharp)) }
  >>
  a4 r |

  b4~ \p 16 a g f-sharp |
  \override TextScript.Y-offset = #-0.5
  <<
    { g4( 8 c-sharp) }
    { s8 s_\turn-markup }
  >> |
  b4~16 a g f-sharp |
  <<
    {
      g4( 8 e') |
      f-sharp,4( 8 d') |
    }
    {
      s8 s^\turn-markup s4
      s8 s_\turn-markup
    }
  >>
  e,4~16[ \tweak Y-offset #3 \breathe f-sharp \< g g-sharp] |
  \override TextScript.Y-offset = #0
  <<
    { a4( \mf 8 f-sharp') }
    { s8 s^#(turn-with-accidentals (markup #:null) (markup #:sharp)) }
  >> |
  e8 d4 c8 |
  \override TextScript.Y-offset = #0.5
  <<
    { b4( \< 8 g') }
    { s8 s^\turn-markup }
  >> |
  f-sharp8 \f e~8 d16 b |
  a8 f-sharp~16 e d b \tweak to-barline ##f \> |
  a8 a-sharp b c-sharp |
  d4 \! r16 d \p e f-sharp |

  a16 f-sharp e d c d f-sharp a |
  b!4 r16 g \< b-flat d |
  c-sharp!16 \sf \tweak to-barline ##f \> b-flat g e c-sharp b-flat' a g |
  f-sharp4 \! r16 d e f-sharp |
  a16 f-sharp e d f-sharp a c e-flat |
  d4 r16 c-sharp! \< e! g |
  e16 \> c-sharp b-flat g e b-flat' g e |
  <<
    {
      d4( \p 8 f-sharp) |
      \stemUp a4( 8 d) \stemNeutral |
    }
    {
      \override TextScript.Y-offset = #-1.5
      s8 s_\turn-markup s4
      \override TextScript.Y-offset = #0
      s8 s^#(turn-with-accidentals (markup #:null) (markup #:sharp))
    }
  >>
  d,2 | \bar "|."
}
