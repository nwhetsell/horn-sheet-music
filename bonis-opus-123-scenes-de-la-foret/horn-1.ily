\version "2.24.0"

horn-one = \relative {
  \language "english"

  \transposition f

  R1*2

  <<
    {
      \override TextSpanner.bound-details.left.text = \markup { \musicglyph #"scripts.stopped" \hspace #0.5 }
      b-flat'2->\startTextSpan( \p \> a-flat) \breathe |
      b-flat2->( \> a-flat) |
    }
    {
      \set countPercentRepeats = ##t
      \override PercentRepeat.transparent = ##t
      \repeat percent 20 { s1 | }
    }
    {
      s1*2 |
      \revert PercentRepeat.transparent
      s1 \! |
    }
  >>
  b-flat4\stopTextSpan r r2 |

  % 2
  R1
  R1

  r2 f-- \p |
  r2 e-- |
  r2 f-- |
  r4 b-flat( \cresc a-flat e-flat~ |
  e-flat4 d-flat c d-flat) |
  d-flat'1( \! |
  c4) r4 r2 |

  % 3
  R1
  r4 e-flat,2.( |
  f4) r r c'( #(make-dynamic-script (markup #:dynamic "p" #:normal-text (#:italic "espress."))) \< |
  g-flat'4 e-flat c g-flat) |
  e-flat2( \! e |
  f4) r r2 |
  R1*4
  R1

  % 4
  <<
    { \repeat percent 6 { b-flat2->( \> a-flat) | } }
    {
      s1 |
      s1 \! |
    }
  >>
  b-flat1~ \tweak to-barline ##f \> |
  b-flat4 \! r r2 |
}
