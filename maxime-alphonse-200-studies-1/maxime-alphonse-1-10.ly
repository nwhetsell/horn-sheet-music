\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Moderato" 4=96

  \key a \major
  \time 4/4

  #(define measures-one-to-ten #{
    \relative {
      c-sharp''4) 4( b)
      \shape #'(((0 . -0.5) (0 . 0) (0 . 0) (0 . 0)) ((0 . -0.5) (0 . 0) (0 . 0) (0 . 0))) PhrasingSlur
      \stemUp 4\(( \stemNeutral |

      a2) e4\) a8.( e16) |
      f-sharp4 a8.( f-sharp16) e4 \breathe a8.( \< c-sharp16) |
      b8.( d16) c-sharp8.( e16) d8.( c-sharp16) b8.( a16) |
      e'2 \> r4 \! a,4( \p |

      c-sharp4) 4( b)
      \shape #'((0 . -0.5) (0 . 0) (0 . 0) (0 . 0)) PhrasingSlur
      \stemUp 4\(( \stemNeutral |

      a2) e4\) a8.( e16) |
      f-sharp4 a8.( f-sharp16) e4 \breathe f-sharp8.( a16) |
      g-sharp8.( b16) a8.( c-sharp16) b8.( a16) b8.( g-sharp16) |
      a2
    }
  #})

  \partial 4 { a'4( \mf } |
  <<
    { \measures-one-to-ten }
    {
      s1*7 |
      s2. s4 \< |
      s1 |
      s2 \>
    }
  >>
  r4 \! \bar "||" \key a \minor c8.( \f d16) |

  #(define measures-eleven-to-fourteen #{
    \relative {
      e''4 4 a, b8.( c16) |
      d4 4 a c8.( d16) |
      e8.( d16) e8.( c16) a4 b8.( c16) |
      d8.( c16) d8.( b16) a4 \breathe
    }
  #})

  \measures-eleven-to-fourteen c8.( \p d16) |
  \measures-eleven-to-fourteen a4( \mf | \bar "||"

  \key a \major
  <<
    { \measures-one-to-ten }
    {
      s1*7 |
      s2. s4 \< |
      s2 s  \tweak to-barline ##f \> |
      s2 \!
    }
  >>
  r2 | \bar "|."
}
