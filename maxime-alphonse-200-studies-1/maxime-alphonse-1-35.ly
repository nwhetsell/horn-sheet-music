\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro moderato" 4=108

  \key b-flat \major
  \time 3/4

  #(define measures-two-to-three #{
    \relative {
      b-flat'4.( d,8 f4) |
      b-flat,8( d f b-flat d4) |
    }
  #})

  #(define measure-one #{
    \relative {
      b-flat4.( d8 f4) |
    }
  #})

  #(define measures-two-to-six #{
    \relative {
      \measures-two-to-three
      d'8( f b-flat d f4) |
      e-flat8( \> c b-flat a b-flat f) \! |
      r4 e-flat'8( \> c b-flat a) |
    }
  #})

  <<
    {
      \measure-one
      \measures-two-to-six
    }
    {
      s4. \mf \> s8 \! s4 |
      s4. \> s8 \! s4 |
      \repeat unfold 2 { s2 \> s4 \! | }
    }
  >>
  b-flat'4.( \< d8 f4) |
  f4.( \> d8 b-flat4) \! |
  R2.

  <<
    {
      \measure-one
      \measures-two-to-three \breathe
    }
    {
      s4. \> s8 \! s4 |
      s4. \> s8 \! s4 |
    }
  >>
  d,8( \< f-sharp a c f-sharp4) |
  g8( \f \> e d c-sharp d a) \! |
  r4 g'8( \> e d c-sharp) \! |
  d4.( \> a8 f-sharp4) \! |
  a4.( \> f-sharp8 d4) \! |
  r4 r8 e-flat!( \> d c) |

  <<
    {
      b-flat4.( d8 f!4) |
      \measures-two-to-six
    }
    {
      s2. \p |
      s2.*2 |
      s2 \< s4 |
    }
  >>
  b-flat4.( \sf \> d8 \! f,4) |
  f4.( \sf \> b-flat8 \! b-flat,4) | \bar "|."
}
