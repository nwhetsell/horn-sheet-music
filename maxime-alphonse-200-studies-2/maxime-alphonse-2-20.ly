\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro moderato" 4=100

  \key f \major
  \time 4/4

  \partial 4 { a'8._\markup { \dynamic "mf" \italic "legato" }( b-flat16 }) |
  c4( f e g) |
  f2( c4-.) a8.( b-flat16) |
  c4( f, d' f,) |
  c'2( a4-.) \breathe c8.( \< b-flat16) |
  g4-> \! 8.( a16) g4 c8.( \< a16) |
  f4-> \! f8.( g16) f4 \breathe f'8.( \< e16) |
  e8( \> d) \! d4~4 e8.( \< f16) |
  g4->( \f c, e) e16( d c d) |
  \tempo "Cedendo" c2( \> b-flat4-.) \breathe \tempo "Tempo" a8.( \p b-flat16) |

  c4( f e g) |
  f2( c4-.) a8.( b-flat16) |
  c4( f, d' f,) |
  c'2( a4-.) \breathe c8.( \< b-flat16) |
  g4-> \! 8.( a16) g4 c8.( \< a16) |
  f4-> \! f8.( g16) f4 \breathe b-flat8.( \< a16) |
  a8( \! g) g4~4 a8.( b-flat16) |
  c4( f, a) a16( g f g) |
  \partial 2. { g2( f4) } | \bar "|."
}
