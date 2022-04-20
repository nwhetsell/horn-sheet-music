\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Andante" 4=76

  \key f \minor
  \time 4/4

  #(define measures-one-to-nine #{
    \relative {
      g'4-_) 8.( a-flat16) b-flat4( c) |
      <<
        { a-flat2. \> f4( }
        { s2 s \! }
      >> |
      g4) 8.( a-flat16) b-flat4( \< c) |
      a-flat2. \> \breathe c4( \mf \< |
      f4) c8.( d16) c4( e-flat) |
      d2. \f \> c8.( \p d16) |
      c8.-- r16 b-flat8.( c16) b-flat8.-- r16 a-flat8.( b-flat16) |
      c8.( d16) c4~4 \breathe f,4( \mf |
      g4) 8.( a-flat16) b-flat4( c) |
    }
  #})

  \partial 4 { f'4_\markup { \dynamic "p" \italic "espressivo" }( } |
  \measures-one-to-nine
  a-flat2. 4( |
  b-flat4) \< 8.( c-flat16) d-flat!4( e-flat) |
  c-flat2. \> \breathe e-flat4( \tweak to-barline ##f \< |
  a-flat4) \f e-flat8.( f16) e-flat4( g-flat) |
  f2. e-flat8.( \> f16) |
  e-flat8.-_ r16 d-flat8.( e-flat16) d-flat8.-- r16 c-flat8.( d-flat16) |
  e-flat8.( f16) e-flat4~4 \breathe a-flat,4( \mf \tweak to-barline ##f \> |
  b-flat4) 8.( c-flat16) d-flat4( e-flat) |
  c-flat2. f,4( |
  g4) 8.( a-flat16) b-flat4( c-flat) |
  a-flat2. \! \breathe c-flat,4( |
  e-flat4)_\markup { \italic "perdendosi" } c-flat8.( d-flat16) e-flat4( f) |
  e-flat2. c-flat4( |
  e-flat4) \tempo "Rall." c-flat8.( d-flat16) e-flat4( f) |
  e-flat2 r | \bar "||"

  \tempo "Moderato" 4=80-84
  \time 2/4
  <<
   {
     r16 a-flat_\markup { \dynamic "mf" \italic "staccato" } c-flat d-flat e-flat e-flat, f g |
     a-flat f g a-flat c-flat a-flat, b-flat c-flat |
     e-flat g b-flat d, e-flat g b-flat e-flat |
     d-flat,! b-flat' d-flat f-flat d-flat b-flat g d-flat' |
     c-flat, \< d-flat! e-flat f! g a-flat b-flat c-flat \! |
   }
   { s16 \repeat unfold 39 { <>-. s } }
  >>
  <<
   {
     r16 e-flat, \< f g a-flat b-flat c-flat d-flat \! |
     c-flat a-flat f d c-flat a-flat c-flat a-flat |
   }
   { s16 \repeat unfold 15 { <>-. s } }
  >>
  e-flat'2 | \bar "||"

  <<
   {
     r16 b-flat' \mf d-flat! e-flat f f, g a |
     b-flat g a b-flat d-flat b-flat, c d-flat |
     f a c e, f a c f |
     e-flat,! c' e-flat g-flat e-flat c a e-flat' |
     d-flat, e-flat f g! a b-flat c d-flat |
   }
   { s16 \repeat unfold 39 { <>-. s } }
  >>
  <<
   {
     r16 f, g a b-flat c d-flat e-flat |
     d-flat b-flat g e d-flat b-flat d-flat b-flat |
   }
   { s16 \repeat unfold 15 { <>-. s } }
  >>
  f'2 | \bar "||"

  <<
   {
     r16 f a-flat! b-flat c c, d e |
     f d e f a-flat f, g a-flat |
     c e g b, c e g c |
     b-flat,! g' b-flat d-flat! b-flat g e b-flat' |
     a-flat, b-flat c d e f g a-flat |
   }
   { s16 \repeat unfold 39 { <>-. s } }
  >>
  <<
   {
     r16 c, d e f g a-flat b-flat |
     a-flat f d b a-flat! f a-flat f |
   }
   { s16 \repeat unfold 15 { <>-. s } }
  >>
  c'2 |
  r8 \tempo "Rall." f a-flat f | \bar "||"

  \time 4/4
  c'2\fermata \tempo "1º Tempo" r4 f,( \p |
  \measures-one-to-nine
  <<
    { a-flat2. \> \breathe c,4( }
    { s2 s \! }
  >> |
  d4) \dim 8.( e16) f4 c( |
  d4) 8.( e16) f2( |
  f'2)\fermata \! r | \bar "|."
}
