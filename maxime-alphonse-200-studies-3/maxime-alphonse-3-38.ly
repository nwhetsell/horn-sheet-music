\version "2.22.0"

\relative {
  \set Score.markFormatter = #format-mark-alphabet

  \language "english"

  \transposition f

  \once \override Score.MetronomeMark.padding = #3
  \tempo "Moderato"

  \key c \major
  \time 4/4

  % This must be less than the priority of MetronomeMark objects:
  % https://lilypond.org/doc/Documentation/learning/outside_002dstaff-objects#the-outside_002dstaff_002dpriority-property
  \once \override Score.RehearsalMark.outside-staff-priority = #900
  \mark \default % A
  r8 g'16 16 8 16 16 4:8 4:8 |
  r8 c16 16 8 16 16 4:8 4:8 |
  r8 b16 16 8 16 16 4:8 4:8 |
  r8 d16 16 8 16 16 4:8 4:8 |
  r8 c16 16 4:8 r8 e16 16 4:8 |
  r8 a,16 16 4:8 r8 f'16 16 4:8 |
  r8 f16 16 4:8 r8 e16 16 4:8 |
  d2 r | \bar "||"

  \mark \default % B
  r8 g,16 16 8 8 4:16 4:16 |
  r8 c16 16 8 8 4:16 4:16 |
  r8 b16 16 8 8 4:16 4:16 |
  r8 d16 16 8 8 4:16 4:16 |
  r8 c16 16 8. 16 r8 e16 16 8. 16 |
  r8 a,16 16 8. 16 r8 f'16 16 8. 16 |
  r8 b,16 16 8. 16 r8 16 16 8. 16 |
  c2 r | \bar "||"

  \mark \default % C
  e,8 8 r f-sharp r g-sharp16 a b8 c |
  d8 8 r f e e r d |
  e2 r |
  g,8 8 r a r b16 c d8 e |
  f8 8 r f b, b r b |
  c2 r | \bar "||"

  r8 \repeat unfold 3 { a16 16 8 } c |
  r8 \repeat unfold 3 { b16 16 8 } a |
  r8 \repeat unfold 3 { g-sharp16 16 8 } a |
  r8 b16 16 4:8 4:8 8 e |
  e,2 r | \bar "||"

  \mark \default % D
  c'8 16 16 \tuplet 3/2 4 { \repeat unfold 6 { 8 } } 8 e |
  d8 16 16 \tuplet 3/2 4 { \repeat unfold 6 { 8 } } 8 f |
  r16 f16 16 16 r16 e16 16 16 r16 d16 16 16 r16 c16 16 16 |
  b8 16 16 d8 c16 16 d8 c16 16 d8 c |
  b8 e,16 16 4 r2 | \bar "||"

  \mark \default % E
  g'8 16 16 \tuplet 3/2 4 { \repeat unfold 6 { 8 } } 8 a, |
  f'8 16 16 \tuplet 3/2 4 { \repeat unfold 6 { 8 } } 8 b, |
  f'8 16 16 \tuplet 3/2 4 { \repeat unfold 6 { 8 } } 8 g, |
  e'8 16 16 \tuplet 3/2 4 { \repeat unfold 6 { 8 } } 8 a, |
  r8 d16 16 \tuplet 3/2 { b8 8 8 } c4 r | \bar "||"

  \mark \default % F
  r8 e,16 16 8 f-sharp r g-sharp16 16 8 a |
  r8 b16 16 8 c r d16 16 d4:8 |
  d4:8 c: b: a: |
  b8 e16 16 4:8 4: d-sharp: |
  e8 16 16 4:8 4:8 8 d-sharp |
  e2 r | \bar "||"

  \mark \default % G
  \repeat unfold 3 { a,16[ r16 16 16] } c16[ r16 16 16] |
  \repeat unfold 3 { c16[ r16 16 16] } e16[ r16 16 16] |
  \repeat unfold 3 { e16[ r16 16 16] } 16[ r16 b16 16] |
  e2 r |
  \repeat unfold 4 { d16[ 16 r16 16] } |
  d16[ 16 r16 16] \repeat unfold 3 { c16[ 16 r16 16] } |
  \repeat unfold 3 { b16[ 16 r16 16] } a16[ 16 r16 16] |
  b2 r | \bar "||"

  \mark \default % H
  % \time 2/2
  \tuplet 3/2 4 {
    \repeat unfold 2 { g4 8 8 4 } |
    \repeat unfold 2 { f4 8 8 4 } |
    \repeat unfold 2 { e4 8 8 4 } |
    \repeat unfold 2 { d4 8 8 4 } |
  }
  c2 r | \bar "||"

  \mark \default % I
  \tuplet 3/2 4 {
    e4 8 8 4 8 8 8~8 8 8 |
    d4 8 8 4 8 8 8~8 8 8 |
    c4 8 8 4 8 8 8~8 8 8 |
    b4 8 8 4 8 8 8~8 8 8 |
  }
  c2 r | \bar "||"

  \mark \default % J
  \tuplet 6/4 { c'8 16 16 16 16 } \tuplet 3/2 { 8 8 8 } \tuplet 6/4 { r8[ 16 16 16 16] } \tuplet 3/2 { 8 8 8 } |
  \repeat unfold 2 { \tuplet 6/4 { r8[ b16 16 16 16] } \tuplet 3/2 { 8 8 8 } } |
  \tuplet 6/4 { r8[ a16 16 16 16] } \tuplet 3/2 { 8 8 8 } \tuplet 6/4 { r8[ g16 16 16 16] } \tuplet 3/2 { 8 8 8 } |
  \tuplet 6/4 { r8[ a16 16 16 16] } \tuplet 3/2 { 8 8 8 } \tuplet 6/4 { r8[ b16 16 16 16] } \tuplet 3/2 { 8 8 8 } |
  \repeat unfold 2 { \tuplet 6/4 { r8[ c16 16 16 16] } \tuplet 3/2 { 8 8 8 } } | \bar "||"

  \mark \default % K
  r4 c,8. 16 \tuplet 3/2 { 8 8 8 } 8 8 |
  r4 e8. 16 \tuplet 3/2 { 8 8 8 } 8 8 |
  r4 g8. 16 \tuplet 3/2 { 8 8 8 } 8 8 | \bar "||"

  \mark \default % L
  \repeat unfold 4 { \tuplet 3/2 { c8. 16 8 } 8 8 } |
  c2 r | \bar "|."
}
