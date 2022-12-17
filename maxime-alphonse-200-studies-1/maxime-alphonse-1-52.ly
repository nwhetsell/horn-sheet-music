\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegretto" 4=100

  \key g \major
  \time 3/4

  <> \p #(make-music 'CrescendoEvent 'span-direction START 'span-type 'text 'span-text "cresc. poco a poco")
  <<
    {
      \repeat unfold 2 {
        g'8( b) a g f-sharp e |
        e8( d) 8 8 8 8 |
      } \breathe
      a'8( c) b a g f-sharp |
      e8( d) 8 8 8 8 |
      a'8( c) b a g f-sharp |
      f-sharp8( e) 8 8 8 8 \breathe |
      b'8( d) c b a g |
      f-sharp8( e) 8 8 8 8 |
      b'8( d) c b a g |
      g8( f-sharp) 8 8 8 8 | \breathe
      c'8( e) d c b a |
      g8( f-sharp) 8 8 8 8 |
      c'8( e) d c b a |
      a8( g) 8 8 8 8 |
    }
    { \repeat unfold 16 { s4 \repeat unfold 4 { s8-. } } }
  >>
  g2 \f r4 |

  <> \ff
  <<
    {
      \repeat unfold 2 {
        d'8( b) c d e f-sharp |
        f-sharp8( g) 8 8 8 8 |
      } \tweak X-offset #0.5 \breathe
      c,8( #(make-music 'DecrescendoEvent 'span-direction START 'span-type 'text 'span-text "dim. poco a poco") a) b c d e |
      f-sharp8( g) 8 8 8 8 |
      c,8( a) b c d e |
      e8( f-sharp) 8 8 8 8 | \tweak X-offset #0.5 \breathe
      b,8( g) a b c d |
      e8( f-sharp) 8 8 8 8 |
      b,8( g) a b c d |
      d8( e) 8 8 8 8 | \tweak X-offset #0.5 \breathe
      a,8( f-sharp) g a b c |
      d8( e) 8 8 8 8 |
      a,8( f-sharp) g a b c |
      c8( d) 8 8 8 8 |
      d8( c-sharp) c b a g |
      f-sharp8( e) d c b a |
    }
    { \repeat unfold 18 { s4 \repeat unfold 4 { s8-. } } }
  >>
  g2. \! | \bar "|."
}
