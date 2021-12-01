\version "2.22.0"

\include "../turn-markup.ily"

\relative {
  \language "english"

  \transposition f

  \tempo "Lento" 4=63

  \key d \major
  \time 2/4

  #(define first-four-measures #{
    \relative {
      <<
        {
          d'4( \tweak X-offset #-1 \p 8 f-sharp) |
          e4( 8 g) |
          f-sharp4( 8 a) |
          g4( 8 b) |
        }
        { \repeat unfold 4 { s8 s32 s16._\turn-markup s4 } }
      >>
    }
  #})

  \first-four-measures
  a'4 r16 f-sharp' \> d a |
  a8( \> g) \! r16 e' \> c-sharp g |
  g8( \> f-sharp16) \! r d'8 \mf c-sharp |
  <<
    {
      b4( \< 8 e) |
      c-sharp4( 8 e) |
    }
    {
      s8 s32 s16.^#(turn-with-accidentals (markup #:null) (markup #:sharp)) s4
      s8 s32 s16.^\turn-markup s4
    }
  >>
  f-sharp16 \> e d c-sharp e d c-sharp b \! |
  <<
    {
      a4( 8 c-sharp) |
      e,4( 8 a) |
    }
    {
      s8 s32 s16.^#(turn-with-accidentals (markup #:null) (markup #:sharp)) s4
      s8 s32 s16._#(turn-with-accidentals (markup #:null) (markup #:sharp)) s4
    }
  >>
  a,4. r8 |

  \first-four-measures
  a'4 r16 a \< d f-sharp |
  a,8( \> g) \! r16 g \< c-sharp e |
  g,8( \> f16) \! r d'8 \mf c-sharp |
  <<
    {
      b4( 8 e) |
      c-sharp4( 8 e) |
    }
    {
      s8 s32 s16.^#(turn-with-accidentals (markup #:null) (markup #:sharp)) s4
      s8 s32 s16.^\turn-markup s4
    }
  >>
  e,16 \< f-sharp g-sharp a b c-sharp d b |
  <<
    {
      a4( \f 8 c-sharp) |
      e4( 8 c-sharp) |
    }
    {
      \repeat unfold 2 {
        s8 s32 s16.^#(turn-with-accidentals (markup #:null) (markup #:sharp)) s4
      }
    }
  >>
  a4 r |

  b4~ \p 16 a g f-sharp |
  <<
    { g4( 8 c-sharp) }
    { s8 s32 s16._\turn-markup s4 }
  >> |
  b4~16 a g f-sharp |
  <<
    {
      g4( 8 e') |
      f-sharp,4( 8 d') |
    }
    {
      s8 s32 s16.^\turn-markup s4
      s8 s32 s16._\turn-markup s4
    }
  >>
  e,4~16[ \tweak Y-offset #3 \breathe f-sharp \< g g-sharp] |
  <<
    { a4( \mf 8 f-sharp') }
    { s8 s32 s16.^#(turn-with-accidentals (markup #:null) (markup #:sharp)) }
  >> |
  e8 d4 c8 |
  <<
    { b4( \< 8 g') }
    { s8 s32 s16.^\turn-markup }
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
      a4( 8 d) |
    }
    {
      s8 s32 s16._\turn-markup s4
      s8 s32 s16.^#(turn-with-accidentals (markup #:null) (markup #:sharp))
    }
  >>
  d,2 | \bar "|."
}
