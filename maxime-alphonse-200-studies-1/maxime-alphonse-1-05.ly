\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Tempo di minuetto" 4=132

  \key f \major
  \time 3/4

  #(define measures-one-to-fourteen #{
    \relative {
      <> \p
      \repeat unfold 2 {
        f'4 4 a |
        g2-> f8-. e-. |
      }
      f4. \< g8-. a-. b-flat-. |
      c2 \! r4 |
      f2( \mf \> d8) \! r |
      b-flat2( \> f8) \! r |
      f'2( \> c8) \! r |
      a2( \> f8) \! r |
      e8->( \p c') 8-. 8-. 8-. d-. |
      c2.-> |
      f,8->( c') 8-. 8-. 8-. d-. |
      c2.-> \breathe |
    }
  #})

  \repeat volta 2 {
    \measures-one-to-fourteen
    g'8->( \mf \< e') 8-. 8-. 8-. d-. |
    g8.-> d16-. c4 b |
    c4 c, \! r4 |
  }

  e'4-_ \f 4-_ 4-_ |
  f4-_ f,2-> |
  b4-_ 4-_ 4-_ |
  c4-_ c,2-> \breathe |
  e'4-. \p 4-. 4-. |
  f4-. f,2-> |
  b4-. 4-. 4-. |
  c2.-> \breathe |

  d4-_ \f 4-_ 4-_ |
  e-flat4-_ e-flat,2-> |
  a4-_ 4-_ 4-_ |
  b-flat4-_ b-flat,2-> \breathe |
  d'4-. \p 4-. 4-. |
  e-flat4-. e-flat,2-> |
  a4-. 4-. 4-. |
  b-flat2.-> \breathe |

  e!4-_ \p 4-_ 4-_ |
  f4-_ f,2-> |
  b4-_ 4-_ 4-_ |
  c4-_ c,2-> \breathe |
  e'4-. \f 4-. 4-. |
  f4-. f,2-> |
  b4-. 4-. 4-. |
  c2.-> \breathe | \bar "||"

  <<
    { \measures-one-to-fourteen }
    {
      s2.*7 |
      s2. \mf |
      s2. \f |
      s2. \mf |
    }
  >>
  g8->( b-flat) 8-. 8-. 8-. a-. |
  b-flat8.-> g16-. f4 e |
  f4 f, r4 | \bar "|."
}
