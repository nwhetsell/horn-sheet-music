\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Andante cantabile" 4=63

  % \clef "bass"
  \key f \major
  \time 3/4

  r4 r c'( \p |
  a'2 \tuplet 3/2 { bf8 g e } |
  f4 c8) r c4( |
  c'2 \tuplet 3/2 { d8 bf g } |
  f8. g16 e8) r c4( |
  a'2 \tuplet 3/2 { bf8 g e } |
  c'4~ \tuplet 3/2 4 { 8[ \breathe bf a] g bf d } |
  \tuplet 3/2 { c8 a f } c4 a'8.-> g16 |
  f4) r f~( |
  4~ \tuplet 3/2 4 { 8 d e f a g } |
  g4 e8) r \tuplet 3/2 { 8( a g } |
  f4 \tuplet 3/2 4 { d'8 c b a g f } |
  e4) r \tuplet 3/2 { 8( f fs } |
  g4~ \< \tuplet 3/2 4 { 8[ \tweak Y-offset #3.25 \breathe a b] c d e } |
  e4 \! a,) \breathe \tuplet 3/2 { f'8( e d } |
  c4~ \tuplet 3/2 { 8 \> d c } \acciaccatura 8 \tuplet 3/2 { b a b) } |
  c4~( \! \tuplet 3/2 4 { 8[ \tweak Y-offset #3.35 \breathe c, d] e f g) } |

  a2( \tuplet 3/2 { bf8 g e } |
  f4 c8) r \tuplet 3/2 { c8( f a } |
  c4~ \tuplet 3/2 4 { 8 b c d bf g } |
  f8. g16 e8) r \tuplet 3/2 { c8( f g } |
  a4~ \tuplet 3/2 4 { 8 g f e f g } |
  c,4~ \tuplet 3/2 4 { 8[ \breathe f e] d a' g } |
  \tuplet 3/2 { c,8 f a } c4 \tuplet 3/2 { bf8 g a } |
  f4) r r |

  R2.
  a2( c8. bf16 |
  a4. f8 d) r |
  d4~( \tuplet 3/2 4 { 8 \< e f8 8 g a } |
  a4 \! d,) r |
  a'4~( \tuplet 3/2 { 8 gs a } c8. bf16 |
  a4. g!8 f4 \breathe |
  a4 \acciaccatura bf8 \tuplet 3/2 { a g a } bf8. e,16 |
  f2) \breathe a4->~( |
  4. e8 \tuplet 3/2 { f g a } |
  e8. cs16 e8) r a4->~( |
  4~ \tuplet 3/2 { 8 e g } \acciaccatura 8 \tuplet 3/2 { f e g } |
  a2.)~ \< \breathe |

  2( \> \tuplet 3/2 { bf8 \! g e } |
  f4 c8) r \tuplet 3/2 { c8( f a } |
  c4~ \tuplet 3/2 4 { 8 b c e d bf } |
  g4->)~ \tuplet 3/2 4 { 8[ \tweak Y-offset #3 \breathe c,( d] e f g } |
  a4~ \tuplet 3/2 4 { 8 g f e f g } |
  c,4~) \tuplet 3/2 4 { 8[ \breathe f e] d a' g } |
  \tuplet 3/2 4 { f8( a c f a, d c g a } |
  f4) r \tuplet 3/2 { a8( \p bf a } |
  g4->~ \tuplet 3/2 4 { 8 d f e a g } |
  f4 c8) r \tuplet 3/2 { a'( \< bf c } |
  d2 \acciaccatura f8 \tuplet 3/2 { e d e } |
  f4)~ \> \tuplet 3/2 4 { 8[ \! \breathe a,( d] c g c~ } |
  \tuplet 3/2 4 { 8 \p a f')~8[ \breathe a,( d] c g a } |
  f2.)~ \< |
  2 \> r4 \! | \bar "|."
}
