\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Adagio" 4.=50

  \key b-flat \major
  \time 6/8

  #(define measures-two-to-four #{
    \relative {
      e-flat''8.( d16 e-flat8) c4 r8 |
      d8.( c16 d8) b-flat8.( a16 b-flat8) |
      c8.( b-flat16 c8) f,4 r8 |
    }
  #})

  #(define measures-one-to-four #{
    \relative {
      d''8.( c16 d8) b-flat8.( a16 b-flat8) |
      \measures-two-to-four
    }
  #})

  <> \p
  \measures-one-to-four
  f''8.( \mf e-flat16 f8) d8.( c16 d8) |
  e-flat8.( d16 e-flat8) c4 r8 |
  d8.( c16 d8) b-flat8.( a16 b-flat8) |
  d8.( c16 b-flat8) f'4 r8 |

  #(define measures-nine-to-sixteen #{
    \relative {
      \measures-one-to-four
      f''8.( \f e16 f8) g8.( f-sharp16 g8) |
      e-flat!8.( d16 e-flat8) f!4 r8 |
      d8.( \sf \> c16 b-flat8) d8.( \sf \> c16 b-flat8) \! |
      \stemDown b-flat8.( c16 a8) b-flat4 r8 \stemNeutral |
    }
  #})

  <<
    { \measures-nine-to-sixteen \bar "||" }
    {
      s2. \p |
      s2. |
      s2. \< |
      s4. s \! |
      s2. |
      s4. \> s \! |
    }
  >>

  \key b-flat \minor

  #(define measures-seventeen-to-twenty #{
    \relative {
      d-flat''8.( c16 d-flat8) b-flat8.( a16 b-flat8) |
      c8.( b-flat16 c8) f,4 r8 |
      d-flat'8.( c16 d-flat8) b-flat8.( a16 b-flat8) |
      e-flat8.( d-flat16 e-flat8) c4 r8 |
    }
  #})

  <> \pp #(make-music 'CrescendoEvent 'span-direction START 'span-type 'text 'span-text "cresc. poco a poco")
  \measures-seventeen-to-twenty
  f8.( e16 f8) d-flat8.( c16 d-flat8) |
  g-flat8.( \f f16 g-flat8) e-flat4 r8 |
  f8.( \decresc e-flat16 f8) d-flat8.( c16 d-flat8) |
  e-flat8.( d-flat16 e-flat8) c4 r8 |

  <> \p
  \measures-seventeen-to-twenty
  f8.( \mf \< e-flat16 f8) g-flat8.( f16 g-flat8) |
  e-flat8.( \> d-flat16 e-flat8) f4 \! r8 |
  d-flat8.( \sf \> c16 b-flat8) d-flat8.( \sf \> c16 b-flat8) \! |
  \stemDown b-flat8.( c16 a8) b-flat4 r8 \stemNeutral | \bar "||"

  \key b-flat \major

  <> \mf
  \measures-nine-to-sixteen \bar "|."
}
