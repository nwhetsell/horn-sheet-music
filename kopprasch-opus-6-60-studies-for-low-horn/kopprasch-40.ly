\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Presto"

  \key c \major
  \time 6/8

  \override Hairpin.after-line-breaking = ##t
  \override Hairpin.to-barline = ##f

  c'8( \f g') g-. g-. g-. g-. |
  c8( g) g-. g-. g-. g-. |
  e'8( g,) g-. g-. g-. g-. |
  c8( g) g-. g-. g-. g-. |
  b,8( g') g-. g-. g-. g-. |
  d'8( g,) g-. g-. g-. g-. |
  f'8( g,) g-. g-. g-. g-. |
  d'8( g,) g-. g-. g-. g-. |
  g8( c) c-. e( c) c-. |
  f8( c) c-. e( c) c-. |
  a8( c) c-. g( c) c-. |
  f,8( c') c-. e,( c') c-. |
  d,8( g) g-. c,( g') g-. |
  b,8( \> g') g-. c,( g') g-. |
  g,8( g') g-. g-. g-. g-. |
  g4 \! r8 r4. |

  g-sharp8( \mf e) e-. b'( e,) e-. |
  e'8( e,) e-. e-. e-. e-. |
  a8( e) e-. c'( e,) e-. |
  e'8( e,) e-. e-. e-. e-. |
  e8( c) c-. g'( c,) c-. |
  b-flat'8( c,) c-. c-. c-. c-. |
  f8( c) c-. a'( c,) c-. |
  c'8( c,) c-. c4 r8 |
  g'8( \p e) c'-. c-. c-. c-. |
  a8( \cresc f) d'-. d-. d-. d-. |
  b8( g) e'-. e-. e-. e-. |
  c8( a) f'-. f-. f-. f-. |
  f8( \f g,) g-. d'( g,) g-. |
  b8( g) g-. g-. g-. g-. |
  f8( g) g-. d( g) g-. |
  b,8( g') g-. g,( g') g-. |
  R2.\fermata

  c,8( \f g') g-. g-. g-. g-. |
  c8( g) g-. g-. g-. g-. |
  e'8( g,) g-. g-. g-. g-. |
  c8( g) g-. g-. g-. g-. |
  b,8( g') g-. g-. g-. g-. |
  d'8( g,) g-. g-. g-. g-. |
  f'8( g,) g-. g-. g-. g-. |
  d'8( g,) g-. g-. g-. g-. |
  e8( c') c-. a( c) c-. |
  g8( c) c-. f,( c') c-. |
  e,8( \> g) g-. c,( g') g-. |
  d8( g) g-. b,( g') g-. |
  c,4 \! r8 e( \p g,) g-. |
  d'8( g,) g-. b( g) g-. |
  c8( g) g-. e'( g,) g-. |
  g'8( #(make-music 'DecrescendoEvent 'span-direction START 'span-type 'text 'span-text "morendo") g,) g-. g-. g-. g-. |
  c8( c,) \repeat unfold 10 { c-. } |
  c4 \! r8 r4. | \bar "|."

  \revert Hairpin.after-line-breaking
  \revert Hairpin.to-barline
}
