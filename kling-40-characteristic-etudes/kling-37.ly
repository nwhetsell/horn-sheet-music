\version "2.24.0"

\include "settings.ily"

\relative {
  \language "english"

  \transposition f

  \tempo "Andante grazioso"

  \key e-flat \major
  \time 9/8

  g'4.~( \p \< g4 a-flat32 g f-sharp g b-flat4 \> a-flat32 g f e-flat) \! |
  d4.~( d4 f8 b-flat,4) r8 |
  a-flat'4.~( \< a-flat4 b-flat32 a-flat g a-flat d4 \> c32 b-flat a a-flat) \! |
  g4.~( g4 b-flat8 e-flat,4) r8 |
  b-flat'4.~( \< b-flat4 c32 b-flat a b-flat f'4 \> e-flat32 d c b-flat) \! |
  a-flat4.~( a-flat4 f8 c f a-flat) |
  g8( \< e-flat' c b-flat g \acciaccatura b-flat a-flat g \> b-flat, \acciaccatura g' f) |
  e-flat8( \< b-flat c' b-flat \> a-flat d, e-flat4) \! r8 |

  f8-.( \mf \< g-. a-. b-flat-. c-. d-.) d[( \> \grace { e-flat16 d } c8 b-flat)] \! |
  e-flat4.~8. d16( e-flat c a4) r8 |
  f8-.( \< a-. b-flat-. c-. d-. e-flat-.) e-flat[( \> \grace { f16 e-flat } d8 c)] \! |
  f4.~8. e16( f d b-flat4) r8 |
  f8-.( \< g-. a-. b-flat-. c-. d-.) d[( \> \grace { e-flat16 d } c8 b-flat)] \! |
  g'4.~8. f-sharp16( g e-flat) b-flat4( c8) |
  d8( \< \acciaccatura f e-flat d) c( \acciaccatura e-flat d c) b-flat16( a g-sharp a d c) |
  b-flat8( \> f') d-. b-flat-. f-. d-. \! b-flat4 r8 |

  d'8( \f b-flat,) d'-. c( b-flat,) c'-. b-flat( b-flat,) a-flat'-. |
  g8( g,) b-flat-. e-flat-. g-. b-flat-. e-flat-. d-. c-. |
  d16->( c-sharp d f e-flat d) c->( b c e-flat d c) b-flat->( a b-flat d c a-flat) |
  \afterGrace g2.\trill( { f-sharp16 g } e-flat4) r8 |
  g,8. \f b-flat16-. e-flat-. g-. b-flat8. e-flat,16-. g-. b-flat-. e-flat8. \< d16( f e-flat) |
  b4.( \> c) \! c16( d32 c b16) c-. d-. e-flat-. |

  \barNumberCheck #23
  \cadenzaOn
  \shape #'((0 . -0.5) (0 . 0) (0 . 0) (0 . 0)) Slur
  e-flat4\fermata(
  \magnifyMusic \cadenza-magnification {
    \override Score.GraceSpacing.spacing-increment = #1.25
    \grace { d16^\markup { \normalsize \italic "ad lib." }[ e-flat a, b-flat f-sharp g d e-flat]) } b-flat4 r8
    \grace { b-flat'16([ c] } \afterGrace b-flat2\trill { a!16[ b-flat]) }
    \grace { c16([ d] } \afterGrace c2\trill { b16[ c]) } \bar ""
    \grace { d16([ e-flat] } \afterGrace d2\trill { c-sharp16[ d a! b-flat]) }
    \revert Score.GraceSpacing.spacing-increment
    g'8\fermata[ f16-. d-. b-flat-. a-flat-. f-. d-. #(if (string=? bass-clef-name "bass^8") #{ \clef \bass-clef-name #}) b-flat-. a-flat-. f-.] d4\fermata
    #(if (string=? bass-clef-name "bass^8") #{ \clef "treble" #}) c'8.[( b-flat16)] e-flat8.[( d16)] g8.[( f16)] c'8.\fermata[( \> b-flat)] \!
  }
  \cadenzaOff \bar "|"
  \set Score.currentBarNumber = #24

  e-flat,4.~( \p \< e-flat4 f32 e-flat d e-flat g8. \> e-flat16 b-flat g) \! |
  e-flat2.~4 r8 | \bar "|."
}
