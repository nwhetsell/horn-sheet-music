\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Andante" 4=63

  \key b-flat \minor
  \time 2/4

  #(define measures-one-to-four #{
    \relative {
      f''4~( 8. d-flat16
      e-flat4~8. d-flat16
      f4~8.) 16( |
      e-flat4~8 d-flat16 c |
    }
  #})

  #(define measures-one-to-twelve #{
    \relative {
      \measures-one-to-four
      b-flat'4.) r8 |
      d-flat4~( 8. b-flat16
      c4~8. b-flat16
      d-flat4~8.) 16( |
      c4~8 b-flat16 a-flat |
      g-flat4.) r8 |

      e-flat8. \< g-flat16 \tuplet 3/2 { b-flat8 e-flat g-flat } |
      f8.( \> d-flat16) f4 |
    }
  #})

  <<
   { \measures-one-to-twelve }
   {
     s2_\markup { \dynamic "p" \italic "espressivo" } |
     s2*9 |

     \mark \default
   }
  >>
  c'8. \< f16 \tuplet 3/2 { a8 c f } |
  e-flat8.( \> d-flat16) e-flat4 \! |

  r8 d-flat32( \mf c16.) b-flat32( d-flat16.) b-flat32( e-flat16.) |
  r8 d-flat32( c16.) b-flat32( d-flat16.) b-flat32( a16.) |
  r8 c32( b-flat16.) a32( c16.) a32( d-flat16.) |
  r8 c32( b-flat16.) a32( b-flat16.) a-flat32( g-flat16.) |
  r8 f32( g-flat16.) f32( a16.) f32( b-flat16.) |
  r8 b-flat,32( d-flat16.) b-flat32( e-flat16.) b-flat32( f'16.) |
  R2

  \mark \default
  g-flat'4~( \mf 8. e-flat16
  f4~8. e-flat16
  g-flat4~8.) 16( |
  f4~8 e-flat16 d-flat |
  c4.) r8 |
  e-flat4~( 8. c16
  d-flat4~8. c16
  e-flat4~8.) 16( |
  d-flat4~8 c16 b-flat |
  a4.) r8 |

  \mark \default
  f8. \< g-flat16 \tuplet 3/2 { f8 a c } |
  f8.( \> c16) f4 |
  f,8. \< g-flat16 \tuplet 3/2 { f8 b-flat d-flat } |
  f8.( \> d-flat16) f4 \! \breathe |

  c,8^\markup { \italic "accelerando poco a poco" } \cresc e-flat c g-flat' |
  e-flat8. c16 \tuplet 3/2 { b-flat'8 g-flat e-flat } |
  e-flat8 g-flat e-flat b-flat' |
  g-flat8. e-flat16 \tuplet 3/2 { d-flat'8 b-flat g-flat } |
  g-flat8 b-flat g-flat d-flat' |
  b-flat8. g-flat16 \tuplet 3/2 { f'8 d-flat b-flat } |
  \tempo "Rall."
  b-flat4 \f \> a-flat8 g-flat |
  g-flat2( |
  <<
   { f2) }
   { s4 s \! }
  >> |

  \mark \default
  \override TupletNumber.Y-offset = #3.4
  \tuplet 3/2 4 {
    r4 f,8 \mf b-flat8. f16 b-flat8 |
    d-flat4 b-flat8 d-flat8. b-flat16 d-flat8 |
  }
  f2 |
  \tempo "Più presto" 4=80
  \tuplet 3/2 4 {
    r4 f,8 \mf b-flat8. f16 b-flat8 |
    d-flat4 b-flat8 d-flat8. b-flat16 d-flat8 |
    f4 b-flat,8 d-flat8. b-flat16 d-flat8 |
    f4 d-flat8 f8. d-flat16 f8 |
    \revert TupletNumber.Y-offset
    b-flat4 \breathe d-flat,8 f8. d-flat16 f8 |
    b-flat4 f8 b-flat8. f16 b-flat8 |
    d-flat4 b-flat8 d-flat8. b-flat16 d-flat8 |
    f8. 16 8 8 d-flat b-flat |
    f8. 16 8 8 d-flat b-flat |
  }
  f'2( |
  f,2) |
  R2

  \mark \default
  \tempo "1º Tempo"
  <<
   { \measures-one-to-twelve }
   {
     s2 \p |
     s2*10 |
     s4 s \! |
   }
  >>
  \tempo "Rall."
  c'8. d-flat16 \tuplet 3/2 { e-flat8 f g-flat } |
  f8.( a16) c4 | \bar "||"

  \tempo "1º Tempo"
  r16 b-flat-. \mf d-flat-. b-flat-. f'-. d-flat-. b-flat-. f-. |
  r16 f-. b-flat-. f-. d-flat'-. b-flat-. f-. d-flat-. |
  r16 d-flat-. f-. d-flat-. b-flat'-. f-. d-flat-. b-flat-. |
  r16 b-flat-. \mf d-flat-. b-flat-. f'-. d-flat-. b-flat-. f-. |
  R2

  <> \pp
  \measures-one-to-four
  b-flat'2\fermata) | \bar "|."
}
