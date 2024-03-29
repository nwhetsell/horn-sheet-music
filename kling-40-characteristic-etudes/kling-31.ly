\version "2.24.0"

\include "../subdivide-beams.ily"
\include "../turn-markup.ily"
\include "settings.ily"

\relative {
  \language "english"

  \transposition f

  \tempo "Adagio espressivo"

  \key f \major
  \time 4/4

  f'2 \p c4.. a16 |
  f8. a16 \clef \bass-clef-name c,4~8 a16( \< c #(if (not (string=? bass-clef-name "bass^8")) #{ \clef "treble" #}) f a c f) |
  #(if (string=? bass-clef-name "bass^8") #{ \clef "treble" #}) a4~( \< a8 g32 a b-flat a c8..) \> b-flat32 \! a8.. f32 |
  \subdivide-beams #1/8 2,2,2,2 { f-sharp32( \< g a g b-flat a c b-flat d c b-flat a b-flat a g f) } e4 \> r |
  g2 \p e4.. c16 |
  b-flat8. d16 g,4~8 e16( \< g b-flat c e g) |
  b-flat4~( \< b-flat8 a32 b-flat c b-flat d8..) \> c32 \! b-flat8.. g32 |
  \subdivide-beams #1/8 2,2,2,2 { g-sharp32( \< a b-flat a d c e f b, c g-sharp! a e f c a') } f4 \! r |
  d'2-^ \ff \clef \bass-clef-name b-flat,,4-^~ \ff \subdivide-beams #1/8 2,2,2,2 { b-flat32 b-flat-. d-. #(if (not (string=? bass-clef-name "bass^8")) #{ \clef "treble" #}) f-. b-flat-. #(if (string=? bass-clef-name "bass^8") #{ \clef "treble" #}) f'-. b-flat-. d-. } |
  c2-^ \ff \clef \bass-clef-name a,,4-^~ \ff \subdivide-beams #1/8 2,2,2,2 { a32 c-. #(if (not (string=? bass-clef-name "bass^8")) #{ \clef "treble" #}) f-. a-. c-. #(if (string=? bass-clef-name "bass^8") #{ \clef "treble" #}) f-. a-. c-. } |
  \subdivide-beams #1/8 2,2,2,2 { b-flat32( c d c b-flat a g f) g( a b-flat a g f e d) e( f g f e d c b-flat) c( d e d c b-flat a g) } |
  f2 r4 a'8.( c16) |

  <<
    { e2~( }
    {
      \override Hairpin.minimum-length = #3
      s4*2/3 \< s \> s \!
      \revert Hairpin.minimum-length
    }
  >> \subdivide-beams #1/8 2,2,2,2 { e16 d c-sharp32 d a b-flat) } g8.( b-flat16) |
  <<
    { d2~( }
    {
      \override Hairpin.minimum-length = #3
      s4*2/3 \< s \> s \!
      \revert Hairpin.minimum-length
    }
  >> \subdivide-beams #1/8 2,2,2,2 { d16 c b32 c g-sharp a) } f8.( a16) |
  <<
    { c2~( }
    {
      \override Hairpin.minimum-length = #3
      s4*2/3 \< s \> s \!
      \revert Hairpin.minimum-length
    }
  >> \subdivide-beams #1/8 2,2,2,2 { c16 b-flat f-sharp32 g d-sharp e) c( \< e g b-flat d \> c b-flat g) } |
  g-sharp4~( \< g-sharp8~32 a f d' \! c4)
    <<
      { a8.( c16) }
      { s8 s^\turn-markup }
    >> |

  \subdivide-beams #1/8 2,2,2,2 { e32( \< d c-sharp d c-sharp d c-sharp d c-sharp \> d e d c-sharp d a b-flat \! } g8) r
    <<
      { g8.( b-flat16) }
      { s8 s_#(turn-with-accidentals (markup #:null) (markup #:sharp)) }
    >> |
  \subdivide-beams #1/8 2,2,2,2 { d32( \< c b c b c b c b \> c d c b c g-sharp a \! } f8) r
    <<
      { f8.( a16) }
      { s8 s_\turn-markup }
    >> |
  c4~( \< c16 f a, d) c8( \> b-flat d, e) \! |
  f4~ \subdivide-beams #1/8 2,2,2,2 { f16 e32( d c b-flat a g } f4) c'8. d16 |

  e-flat4~( e-flat16 d e-flat f g-> f e-flat d f-> e-flat d c) |
  b-flat4~( \tuplet 6/4 4 { b-flat16 f) b-flat-. d( b-flat) d-. f( d) f-. b-flat( f) b-flat-. d( b-flat) f-. b-flat( f) d-. }
  \override Script.avoid-slur = #'inside
  e!4~( e16 f g a b-flat c d c e-> d b-flat g) |
  \revert Script.avoid-slur
  f4~ \subdivide-beams #1/8 2,2,2,2 { 32 g-. a-. b-flat-. c-. d-. e-. f-. } f,4 c'8. d16 |

  e-flat4~( e-flat16 d e-flat f g-> f e-flat d f-> e-flat d c) |
  b-flat4~ \subdivide-beams #1/8 2,2,2,2 { 32 b-flat( d c b-flat a g f) } f4 f8. f16 |
  e!4~( e16 \< f g a b-flat c c-sharp d e \> d b-flat g) \! |
  f2~( f16 \< e g b-flat d \> c b-flat g) \! |
  f2~( f16 \< e g b-flat e \> d b-flat e,) |

  f2 \p c4.. a16 |
  f8. a16 c,4~8 f16-. \< a-. c-. f-. a-. c-. \! |
  f16->( c a d) c->( a f b-flat) a->( f c g') f->( c a c) |
  \clef \bass-clef-name f,2 c4.. \> a16 |
  f1\fermata \pp | \bar "|."
}
