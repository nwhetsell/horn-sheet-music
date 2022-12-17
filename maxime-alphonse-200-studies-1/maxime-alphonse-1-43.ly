\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro vivo" 4=126

  \key c \major
  \time 3/4

  #(define measures-one-to-six #{
    \relative {
      <<
        {
          c'8( e) 8 8 8 8 |
          e8( g) 8 8 8 8 |
          g8( c) 8 8 8 8 |
          c8( e) 8 8 8 8 |
          e8( g) 8 8 8 e |
        }
        { \repeat unfold 5 { s8-> \repeat unfold 5 { s-. } } } |
      >>
      c2-> r4 |
    }
  #})

  <> \mf
  \measures-one-to-six

  <<
    {
      b'8( d) g,8 8 8 8 |
      c8( e) g,8 8 8 8 |
      d'8( f) g,8 8 8 8 |
      c8 g e \< g c e |
      g \> e c g e c |
    }
    {
      \repeat unfold 3 { s8-> \repeat unfold 5 { s-. } } |
      \repeat unfold 2 { \repeat unfold 6 { s8-. } } |
    }
  >>
  g'2 \! r4 |

  <<
    {
      b8( \p d) g,8 8 8 8 |
      c8( e-flat) g,8 8 8 8 |
      d'8( f) g,8 8 8 8 |
      c8 \< g e-flat g c e-flat |
      g e-flat c g e-flat c |
    }
    {
      \repeat unfold 3 { s8-> \repeat unfold 5 { s-. } } |
      \repeat unfold 2 { \repeat unfold 6 { s8-. } } |
    }
  >>
  g'2 \! r4 |

  <<
    {
      f-sharp8( \mf \cresc a) d,8 8 8 8 |
      g8( b-flat) d,8 8 8 8 |
      a'8( c) d,8 8 8 8 |
      g8 \f d b-flat \< d g b-flat |
      d \> b-flat g d b-flat g |
    }
    {
      \repeat unfold 3 { s8-> \repeat unfold 5 { s-. } } |
      \repeat unfold 2 { \repeat unfold 6 { s8-. } } |
    }
  >>
  d'2 \! r4 |

  <<
    {
      f-sharp8( \p a) d,8 8 8 8 |
      g8( b!) d,8 8 8 8 |
      a'8( c) d,8 8 8 8 |
      g8 \< d b d g b |
      d \> b g d b g |
    }
    {
      \repeat unfold 3 { s8-> \repeat unfold 5 { s-. } } |
      \repeat unfold 2 { \repeat unfold 6 { s8-. } } |
    }
  >>
  d'2 \! r4 |

  <> \mf \cresc
  \measures-one-to-six

  <<
    {
      b'8( \f d) g,8 8 8 8 |
      a8( c) f,8 8 8 8 |
      g8( b) e,8 8 8 8 |
      f8( e) d c b \tweak to-barline ##f \> c |
      d e f g a b |
    }
    {
      \repeat unfold 4 { s8-> \repeat unfold 5 { s-. } } |
      \repeat unfold 6 { s8-. } |
    }
  >>
  c2-> \! r4 | \bar "|."
}
