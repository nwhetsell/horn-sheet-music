\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro moderato"

  \key c \major
  \time 4/4

  \partial 4 { g'8.( \p f16) } |
  e8-. r c'-. r e-. r g,8.( e16) |
  f8-. r d'-. r f-. r f,8.( e16) |
  d8-. r b'-. r d-. r b-. r |
  c8-. e-. c-. e-. c-. r g8.( f16) |
  e8-. r g-. c-. e-. r g,8.( e16) |
  f8-. r a-. c-. f-. r a,8.( f16) |
  e8-. g-. c-. r d,-. g-. b-. r |
  c8-. r e-. r c-. r f,8.( e16) |
  d8-. g-. b-. g-. d'-. r d,8.( f16) |
  e8-. g-. c-. g-. e'-. r e,8.( g16) |
  f8-. b-. d-. b-. f'-. r b,-. r |
  c8-. e-. c-. e-. g-. r g,8.( f16) |
  e8-. g-. c-. g-. e'-. r e,8.( g16) |
  f8-. a-. d-. a-. f'-. r a,8.( f16) |
  e8-. g-. c-. e-. d,-. g-. b-. d-. |
  c8-. r e-. r c-. r \bar "||" \tuplet 3/2 { g8( \mf a) f-. } |

  \tuplet 3/2 4 { e8-. g-. a-. b-. c-. d-. } e r \tuplet 3/2 { g,( a) e-. } |
  \tuplet 3/2 4 { f8-. b-. c-. d-. d-sharp-. e-. } f r \tuplet 3/2 { f,( g) e-. } |
  \tuplet 3/2 4 { d8-. f-. g-. a-. b-. c-. } d-. r b-. r |
  \tuplet 3/2 4 { c8-. e-. g-. c,-. e-. g-. } c, r \tuplet 3/2 { g( a) f-. } |
  \tuplet 3/2 4 { e8-. g-. a-. b-. c-. d-. } e r \tuplet 3/2 { g,( a) e-. } |
  \tuplet 3/2 4 { f8-. a-. b-. c-. d-. e-. } f r \tuplet 3/2 { a,( c) f,-. } |
  \tuplet 3/2 { e8-. g-. c-. } e r \tuplet 3/2 { d,-. g-. b-. } d r |
  \tuplet 3/2 4 { c8-. g-. e'-. c-. g-. e'-. } c8 r \tuplet 3/2 { f,( g) e-. } |
  \tuplet 3/2 4 { d8-. f-. g-. a-. b-. c-. } d r \tuplet 3/2 { f,( g) d-. } |
  \tuplet 3/2 4 { e8-. g-. a-. b-. c-. d-. } e r \tuplet 3/2 { g,( a) e-. } |
  \tuplet 3/2 4 { f8-. b-. c-. d-. d-sharp-. e-. } f r b, r |
  \tuplet 3/2 4 { c8-. e-. g-. e-. c-. g-. } c, r \tuplet 3/2 { g'( a) e-. } |
  \tuplet 3/2 4 { e8-. c-. g'-. e-. c'-. g-. } e' r \tuplet 3/2 { e,( c) g'-. } |
  \tuplet 3/2 4 { f8-. d-. a'-. f-. d'-. a-. } f' r \tuplet 3/2 { f,( a) f-. } |
  \tuplet 3/2 4 { e8-. c-. g'-. c-. e-. g-. d,-. b-. d-. g-. b-. d-. } |
  \tuplet 3/2 4 { c8( g') e-. c-. g-. e-. } c r \bar "||" g'16( \mf a g f) |

  e8-. f16-. g-. a-. b-. c-. d-. e8-. c-. g-. e-. |
  f8-. g16-. a-. b-. c-. d-. e-. f8-. r f,16( g f e) |
  d8-. e16-. f-. g-. a-. b-. c-. d8-. b-. f-. d-. |
  e8-. f16-. g-. a-. b-. c-. d-. e8-. r g,16( a g f) |
  e8-. f16-. g-. a-. b-. c-. d-. e8-. c-. g-. e-. |
  f8-. g16-. a-. b-. c-. d-. e-. f8-. r a,16( b a f) |
  e8-. f16-. g-. a-. b-. c-. d-. d,8-. e16-. f-. g-. a-. b-. d-. |
  c8-. b16-. a-. g-. f-. e-. d-. c8-. r f16( g f e) |
  d8-. e16-. f-. g-. a-. b-. c-. d8-. d16-. d-. d-. d-. d-. d-. |
  e,8-. f16-. g-. a-. b-. c-. d-. e8-. e16-. e-. e-. e-. e-. e-. |
  f,8-. g16-. a-. b-. c-. d-. e-. f8-. f16-. f-. f-. f-. b,-. b-.
  \repeat unfold 2 { c16( e g e) } c8 r g16( a g f) |
  e8-. f16-. g-. a-. b-. c-. d-. e-. e-. e-. e-. e-. e-. e,-. e-. |
  f8-. g16-. a-. b-. c-. d-. e-. f-. f-. f-. f-. f-. f-. f,-. f-. |
  e16( g) c-. e-. g( e) c-. e,-. d( g) b-. d-. g( d) b-. g-. |
  \partial 2. { c16-. e( g e g e g e c8) r } | \bar "|."
}
