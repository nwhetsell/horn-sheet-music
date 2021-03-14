\version "2.22.0"

\include "settings.ily"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro"
  \time 4/4

  \partial 4 c''4( \p |
  d4 c d c |
  \repeat unfold 4 { d8 c } |
  \tuplet 3/2 4 { d8 c d c d c d \cresc c d c d c } |
  \repeat unfold 8 { d16 c } |
  \repeat unfold 7 { d16 c } b c |
  e4.) \f c8 g( a16 g) e8 c |
  c8( b) b4 r d'4( \p |
  e4 d e d |
  \repeat unfold 4 { e8 d } |
  \tuplet 3/2 4 { e8 d e d e d e \cresc d e d e d } |
  \repeat unfold 8 { e16 d } |
  \repeat unfold 7 { e16 d } c-sharp d |
  f4.) \f d8 b( c-natural!16 b) g8( f) |
  f8( e) e4 r c' |
  c2\trill( \appoggiatura { b16 c } f4.) e8 |
  d4.\trill( \appoggiatura { c-sharp16 d } g8) e4 r8 c |
  a4\trill( \appoggiatura { g-sharp16 a } c8) r8 b4\trill( \appoggiatura { a-sharp16 b } e8) r8 |
  c4.\trill( \appoggiatura { b16 c } e8) f4 r8 c |

  \barNumberCheck #19
  \cadenzaOn
  \shape #'((0 . 0) (0 . -0.5) (0 . -1) (0 . -0.75)) Slur
  f-sharp,4.\trill_\fermata( \appoggiatura { e16 f-sharp } a8) d4\fermata~(
  \magnifyMusic \cadenza-magnification {
    d32[ c-sharp e d c b a g f-sharp! g a b c b d c])
  }
  e8\fermata[( f-sharp,!)]
  \cadenzaOff \bar "|"
  \set Score.currentBarNumber = #20

  \appoggiatura a8 \afterGrace g4\trill_\fermata( { f-sharp!16 g) } b16( g) d-. b-. g4 r\fermata |
  c4\p \< e g c |
  \appoggiatura { e16 f } e8( \> d) \appoggiatura { c16 d } c8( b) \appoggiatura { a16 b } a8( g) \appoggiatura { f16 g } f8( e) |
  f8 \< g, b d f g b d \! |
  \appoggiatura { f16 g } f8( \> e) \appoggiatura { d16 e } d8( c) b\prall( a) g\prall( f) |
  e4 \< g-sharp b e8( d) |
  c-sharp4 \f a8 b c( d16 c b4) |
  b-flat4 g8.( a16) b-flat8( c16 b-flat a8 \tweak to-barline ##f \> g) |
  f-sharp2 \! r |
  d'8\prall( \mf c-sharp) d8\prall( c-sharp) d8\prall( c) a\prall( b) |
  \shape #'((0 . 0) (0 . -0.5) (0 . -1) (0 . -0.75)) Slur
  g4.\trill( \appoggiatura { f-sharp16 g } b8) d,4 r |
  d'8\prall( c) b\prall( a) g\prall( f-sharp) e\prall( d-sharp) |
  e4.( g8) b,4 r |
  c4 \< e a c |
  e2.( \f e-flat4) |
  d4 \> r f-sharp, \! r |
  \slurDown
  g8. \f d'16 \afterGrace d4\trill( { c-sharp16 d) } b8. d16 \afterGrace d4\trill( { c-sharp16 d) } |
  a8. d16 \afterGrace d4\trill( { c-sharp16 d) } \once \stemDown f-sharp,8. d'16 \afterGrace d4\trill( { c-sharp16 d) } |
  \slurNeutral
  g,16 e'( d e d e d e) b e( d e d e d e) |
  a,16 e'( d e d e d e) f-sharp, e'( d e d e d e) |
  g,8 a16 b c d e f-sharp g4 r8 d-sharp, |
  e8 f-sharp16 g a b c d e4 r8 c-sharp |
  d8( e16 d) c-sharp( d g) f-sharp-. e( d) c-. b-. a( g) f-sharp-. g-. |
  \slurDown
  \afterGrace a2\trill( { g16 a) } \afterGrace b2\trill( { a16 b) } |
  \afterGrace c2\trill( { b16 c) } \afterGrace c-sharp2\trill( { b16 c-sharp) } |
  \afterGrace d2\trill( { c-sharp16 d) } \afterGrace e4\trill^\markup { \fontsize #-4 \sharp }( { d16 e) } \afterGrace f-sharp4\trill( { e16 f-sharp) } |
  \slurNeutral
  g2 r4 \bar "||" g,( \p |

  a4 g a g |
  \repeat unfold 4 { a8 g } |
  \tuplet 3/2 4 { a8 g a g a g a \cresc g a g a g } |
  \repeat unfold 8 { a16 g } |
  \repeat unfold 7 { a16 g } f-sharp g) |
  b4. \f g8 d( e16 d) b8 g |
  g8( f-sharp) f-sharp4 r a'( \p |
  b4 a b a |
  \repeat unfold 4 { b8 a } |
  \tuplet 3/2 4 { b8 a b a b a b \cresc a b a b a } |
  \repeat unfold 8 { b16 a } |
  \repeat unfold 7 { b16 a } g-sharp a) |
  c4. \f a8 f-sharp( g-natural!16 f-sharp) d8 c |
  c8( b) b4 r g' \f |
  g2\trill( \appoggiatura { f-sharp16 g } c4.) b8 |
  a4.\trill( \appoggiatura { g-sharp16 a } d8) b4 r8 g-sharp \p |
  \shape #'((0 . 0) (0 . -0.5) (0 . -1.25) (0 . -1)) Slur
  f-sharp4.\trill( \appoggiatura { e16 f-sharp } b8) g4 r8 e \f |
  g'4 e c b |
  a-sharp4.\trill( \appoggiatura { g-sharp16 a-sharp } c-sharp8) \> g4 f-sharp8 e |
  d-sharp4 \< f-sharp a-natural! c-natural! |

  \barNumberCheck #67
  \cadenzaOn
  b4 \f e\fermata
  \magnifyMusic \cadenza-magnification {
    d-sharp8([ e32 f-sharp e d c b a g-sharp f-sharp a c])
  }
  b4.\fermata \tweak to-barline ##f \> d-sharp,8
  \cadenzaOff \bar "|"
  \set Score.currentBarNumber = #68

  e4 \! r r2 |
  c4 \p \< e g c |
  \appoggiatura { e16 f } e8( \> d) \appoggiatura { c16 d } c8( b) a\prall( g) f\prall( e) |
  f8 \< g, b d f g b d |
  f\prall( \> e) d\prall( c) b\prall( a) g\prall( f) |
  e4 \! r8 c \< e g c b-flat |
  a4 \mf c-sharp\trill \appoggiatura { b16 c-sharp } d4 r8 a-flat |
  g4 b\trill \appoggiatura { a16 b } c-natural!4 r8 e, |
  f4 r8 a \< c-sharp( d f d) |
  c-natural!8( b d f,) e( g c e,) |
  d4 \> r b \! r |
  c8. g'16 g8.\trill( f-sharp32 g) e8. g16 g8.\trill( f-sharp32 g) |
  b8. g16 g8.\trill( f-sharp32 g) \once \stemUp d'8. g,16 g8.\trill( f-sharp32 g) |
  c,16 a'( g a g a g a) e a( g a g a g a) |
  b16 g( a g a g a g) d' g,( a g a g a g) |
  c8 \f b16 a g f e d c4 r |
  e'8 d16 c b a g f e4 r |
  g'8 f16 e d c b a g f e d c b a g |
  f-sharp2 f |
  e4 r8 g \< c e g c |
  e g <c \tweak font-size #-2 a>4 \! r f-sharp,, |
  \afterGrace g2\trill( { f-sharp16 g) } \afterGrace a2\trill( { g16 a) } |
  \afterGrace b2\trill( { a16 b) } \afterGrace c2\trill( { b16 c) } |
  \afterGrace d2\trill( { c16 d) } \afterGrace e2\trill( { d16 e) } |
  f8 r d4\trill b\trill d\trill |
  g,4\trill d'\trill b\trill d\trill |
  f8 r d2.~\startTrillSpan |
  \once \slurDown \afterGrace { d1( \tweak to-barline ##f \> } { c16\stopTrillSpan d) } |
  c4 \! r8 g, \< c e g c |
  e8 \> c g e c g e g |
  \partial 2. { c,2 \! r4 } | \bar "|."
}
