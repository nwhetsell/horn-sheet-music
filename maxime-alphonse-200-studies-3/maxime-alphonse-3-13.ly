\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Andantino" 4.=60

  \key b \minor

  \override Staff.TimeSignature.stencil = #(lambda (grob)
    (grob-interpret-markup grob
     (markup #:override '(baseline-skip . 0)
       (#:line (
         (#:compound-meter '(15 8))
         (markup
             #:override '(angularity . 0.4)
             #:override '(line-thickness . 0.2)
             #:override '(width . 0.4)
           #:parenthesize (markup
             (#:compound-meter '(9 6 8)))))))))
  \time 15/8

  <<
    {
      % This must be less than the priority of MetronomeMark objects:
      % https://lilypond.org/doc/v2.24/Documentation/notation/default-values-for-outside_002dstaff_002dpriority
      \once \override Score.RehearsalMark.outside-staff-priority = #900
      \mark \default % A
      b'16->_\markup { \dynamic "f" \italic "staccato" } 16 8 f-sharp b f-sharp b d4 b8 16-> 16 8 d b16 a-sharp b8 r |
      b16-> 16 8 f-sharp b f-sharp b d4 b8 a!16-> 16 8 c-sharp a16 g-sharp a8 r | \bar "||"

      \mark \default % B
      e'16-> \< d e8 f-sharp16 e f-sharp8 g!4-> \> f-sharp16 e f-sharp8 e \! f-sharp16-> e d f-sharp e d e d e8 r |
      d16-> \< a d8 e16 d e8 f4-> \> e16 d e8 d \! e16-> d c e d c d c d8 r | \bar "||"

      \mark \default % C
      \stemUp
      d,16 \< e f g a b \! c b a8 c->~8 b a c16-> b a g a b a g a8 r |
      d,16 \< e f g a b \! c b a8 c->~8 b a b16-> a g f-sharp g a g f-sharp g8 r | \bar "||"
      \stemNeutral

      \mark \default % D
      g16-> \p d-. g8-. a-. b-flat4-- a8-. g-. b-flat16-. 16-. g8-. a16-> g-. f-. a-. g-. f-. g-. f-. g8-. r |
      g16-> d-. g8-. a-. b-flat4-- a8-. g-. b-flat16-. 16-. g8-. a16-> g-. f-. g-. f-. e-. f-. e-. f8-. r | \bar "||"

      \mark \default % E
      f16 \f \< g a-flat b-flat c d \! e-flat d c8. e-flat16 d c b-flat4 c16-> b-flat a-flat b-flat c d c4 r8 |
      f,16 g a-flat b-flat c d e-flat d c8. e-flat16 d c b4 b16-> a g a b c-sharp b4 r8 | \bar "||"

      \mark \default % F
      <> \mf
      \repeat unfold 2 { b16-> 16 8 f-sharp b16 16 f-sharp8 b d4 b16 16 16-> 16 8 d b16 a-sharp b8 r | } \bar "||"

      \mark \default % G
      \repeat unfold 2 { b16-> a-sharp b8 r } r4. b16-> a-sharp b8 r b,16-> a-sharp b8 r |
      r4. b8 16 16 8 8 8 8 16 16 8 8 4 r8 | \bar "|."
    }

    { \repeat unfold 14 { s1*9/8 \bar "!" \noBreak s2. | } }
  >>
}
