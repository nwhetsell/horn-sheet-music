\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Moderato" 4=72

  \key e-flat \major
  \time 3/4

  #(define measures-one-to-four #{
    \relative {
      b-flat'8.( c16) b-flat8.( a-flat16) b-flat8.( g16) |
      a-flat8.( b-flat16) a-flat8.( g16) a-flat8.( f16) |
      g8.( a-flat16) g8.( f16) g8.( e-flat16) |
      f8.( g16) f8.( e-flat16) f8.( d16) |
    }
  #})

  \partial 4 { g'8.( \mf a-flat16) } |
  \measures-one-to-four

  e-flat4. r16 e-flat'-. d8.->( b-flat16) |
  c4. r16 d-. c8.->( a-flat16) |
  b-flat4. r16 c-. b-flat8.->( g16) |
  a-flat4. r16 b-flat-. a-flat8.->( f16) |
  g4. r8 g8.( a-flat16) |

  \measures-one-to-four

  e-flat4. r16 g'-. \f f8.->( d16) |
  e-flat4. r16 f-. e-flat8.->( c16) |
  d4. r16 e-flat-. d8.->( \> b-flat16) |
  c4. r16 d-. c8.->( a16) \! |
  b-flat4. r8 b-flat8.( \f \decresc c16) |

  d8.( e-flat16) d8.( c16) d8.( b-flat16) |
  c8.( d16) c8.( b-flat16) c8.( a16) |
  b-flat8.( c16) b-flat8.( a16) b-flat8.( g16) |
  a8.( b-flat16) a8.( g16) a8.( f-sharp16) |

  g4. r16 c-. \mf \decresc b-flat8.->( g16) |
  a-flat!4. r16 b-flat-. a-flat8.->( f16) |
  g4. r16 a-flat-. g8.->( e-flat16) |
  f4. r16 g-. f8.->( d16) |
  e-flat4. r8 g8.( \p a-flat16) |

  \measures-one-to-four

  <<
    {
      \repeat unfold 3 {
        e-flat4. r16 g-. e-flat8.->( g16) |
      }
    }
    { s2.*2 s4_\markup { \italic "morendo" } }
  >>
  e-flat2.\fermata | \bar "|."
}
