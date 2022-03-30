\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Moderato" 2=92

  \key d \major
  \time 2/2

  #(define measures-one-to-sixteen #{
    \relative {
      d''8 \mf c-sharp d f-sharp e d c-sharp e |
      d8 c-sharp d a b g e a |
      d8 c-sharp d f-sharp e d c-sharp e |
      d8 c-sharp d a-sharp b f-sharp g-sharp e |
      a!8[ \tweak Y-offset #3.25 \breathe g-sharp a c-sharp] b a g-sharp b |
      a8 g-sharp a e f-sharp d b e |
      a8 g-sharp a c-sharp b a g-sharp b |
      a8[ \breathe b c-sharp d] e f-sharp g! e |
      f-sharp8 e f-sharp d a f-sharp a d |
      e8 d e c-sharp a e a c-sharp |
      d8 c-sharp d b g-sharp e d' b |
      c-sharp8 e a, c-sharp b d g-sharp, b |
      a8[ \tweak Y-offset #3.25 \breathe g-sharp a a-sharp] b a-sharp b c-sharp | \bar "||"

      d8 c-sharp d f-sharp e d c-sharp e |
      d8 c-sharp d a! b g! e a |
    }
  #})

  <<
    { \measures-one-to-sixteen }
    {
      s1*12 |
      s8 \tempo "Rall." s \< s4 s2 |
      \tempo "Tempo" s8 \mf
    }
  >>
  d''8 c-sharp d f-sharp e d c-sharp e |
  d8 b g-sharp d c-sharp e a c-sharp |
  b8 g-sharp e b' c-sharp a e c-sharp' |
  b8[ \p \tweak Y-offset #4 \breathe g-sharp e b'] c-sharp a e c-sharp' |
  b8 g-sharp e f-sharp g-sharp a b c-sharp |
  b8 g-sharp e f-sharp g-sharp a b g-sharp |
  a2 r |

  \repeat unfold 4 { a8 c-sharp } |
  b8 d b d c-sharp e c-sharp e |
  d8 f-sharp d f-sharp e d e c-sharp |
  d8 c-sharp d b c-sharp b c-sharp a |
  \repeat unfold 3 { b a } b g-sharp |
  a8 g-sharp a f-sharp g e f-sharp d |
  e8[ \breathe c-sharp \p \cresc a c-sharp] b d c-sharp e |
  d8 f-sharp b, d c-sharp e d f-sharp |
  e8 g c-sharp, e d f-sharp e g |
  f-sharp8 a d, f-sharp e g f-sharp a |
  g8 b e, g f-sharp a g b |
  \tempo "Rall." a8 \f \> g-sharp a a-sharp b a-sharp b c-sharp \tweak X-offset #0.5 \breathe | \bar "||"

  \measures-one-to-sixteen
  \repeat unfold 2 { d,8 c-sharp d f-sharp e d c-sharp e | }
  d8[ \breathe a b c-sharp] d c-sharp d e |
  f-sharp8 c-sharp d e f-sharp e f-sharp g |
  a8 d, e f-sharp g a b c-sharp |
  d8 a f-sharp a f-sharp d f-sharp a |
  d2 r | \bar "|."
}
