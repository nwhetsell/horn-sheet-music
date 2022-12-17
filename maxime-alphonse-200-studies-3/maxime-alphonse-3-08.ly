\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro moderato" 4.=108

  \key a \major
  \time 6/8

  #(define measures-one-to-seven #{
    \relative {
      \stemDown
      a'8( b c-sharp) 8( e c-sharp) |
      c-sharp8( b a) b4 8 |
      \stemNeutral
      a8( b c-sharp) 8( e c-sharp) |
      c-sharp8( b a) e4 8 \breathe |
      \repeat unfold 2 { f-sharp8 8( a) g-sharp4 e8 | }
      a8 8( c-sharp) b8 8( d) |
    }
  #})

  <<
    { \measures-one-to-seven }
    {
      s2. \mf |
      s2.*4 |
      s2._\markup { \dynamic "p" \italic "subito" } |
      s2. \mf |
    }
  >>
  c-sharp''8 8( a) e'4 r8 |

  <<
    { \measures-one-to-seven }
    {
      s2. \f |
      s2.*3 |
      s2. \mf |
      s2. \p |
    }
  >>
  c-sharp8 b( a) 4 r8 | \bar "||"

  #(define measures-seventeen-to-nineteen #{
    \relative {
      e''8 8( f-sharp) e4 d8 |
      c-sharp8 8( d) c-sharp4 b8 |
      a8 8( b) c-sharp8 8( d) |
    }
  #})

  <> \f
  \measures-seventeen-to-nineteen
  c-sharp8( b) a b4. \breathe |
  \measures-seventeen-to-nineteen
  c-sharp8( b) a8 4 r8 | \bar "||"

  <<
    { \measures-one-to-seven }
    {
      s2. \mf |
      s2.*3 |
      s2. \mf |
      s4. \p s4 s8 \< |
    }
  >>
  c-sharp8 \> b( a) 4 \! r8 | \bar "|."
}
