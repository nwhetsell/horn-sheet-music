\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Presto"

  \key f \major
  \time 4/4

  \repeat volta 2 {
    \tuplet 3/2 4 {
      c''8-._\markup { \dynamic "mf" \italic "espressivo" } b-. c8-. a-. g-. a-. f-. e-. f-. c-. d-. e-. |
      f8-. g-. a-. b-flat!-. c-. d-. c-. d-. e-. f-. e-. d-. |
      c8-. b-. c-. a-. g-. a-. f-. e-. f-. d-. f-sharp!-. g-. |
    }
    \tuplet 3/2 4 { c,8-. c'-. a-. b-flat!-. g-. e-. } f!4 r |
    \tuplet 3/2 4 {
      f8-. e-. f-. g-. e-. c-. a'-. g-. a-. b-flat-. g-. e-. |
      f8-. f'-. e-. d-. c-. b-. d-. c-. a-. c-. b-flat-. g-. |
    }
    f8-. r \tuplet 3/2 4 { g8-. \cresc e-. c-. a'-. g-. a-. g-. e-. c-. } |
    \tuplet 3/2 4 { c'8-. g-. e-. d'-. b-. g-. e'-. \! c-. g-. f'-. d-. b-. } |
    \tuplet 3/2 4 { c8-. \< c,-. e-. g-. c-. e-. } g4 \! r8 b-flat,!-. |
    \tuplet 3/2 4 { a8-. \< c,-. f-. a-. c-. f-. } a4 \! r8 c,8-. |
    \tuplet 3/2 4 {
      b8-. d-. g,-. a-flat-. g-. b-. d-. g,-. c-sharp-. d-. f-. b,-. |
      c!8-. e-. g,-. a-flat-. g-. b-. c-. g-. d-sharp'-. e-. g-. c-sharp,-. |
      d!8-. c-sharp-. d-. f-. e-. d-. c-. b-. a-. g-. a-. b-. |
    }
    \tuplet 3/2 4 { c8-. e-. g,-. c-. e,-. g-. } c,4 r |
  }

  \tuplet 3/2 4 {
    g'8( \p f-sharp g) e( d-sharp e) c( b c) g-. \cresc a-. b-. |
    c8-. d-. e-. f-. g-. a-. g-. a-. b-. c-. b-. a-. |
    g-sharp8-. \f b-. c-. d-. c-. b-. a-. c-. d-. e-. d-. c-. |
  }
  \tuplet 3/2 4 { b-. d-. e-. f-. b,-. c-. d-. c-sharp-. d-. } f8-. r |
  \tuplet 3/2 4 {
    e8( \mf d-sharp e) b( a-sharp b) g-sharp( f-sharp g-sharp) e( d-sharp e) |
    e'8( d-sharp e) c( b c) a( g-sharp a) e( d-sharp e) |
    f'8( e f) c( b c) a( g-sharp a) f( e f) |
    e8-. \< f-. g!-. a-. b-. c-sharp-. d-. \f e-. f-. e-. d-. c-sharp-. |
  }
  d8-. r \tuplet 3/2 4 { f,8-. \mf g-. a b-flat!-. \< c!-. d-. c-. \> b-flat-. a-. \! } |
  \tuplet 3/2 4 { b-flat8( a b-flat) g( f-sharp g) e( d-sharp e) c( b c) } |
  \tuplet 3/2 4 { f!8( \< e f) a( g a) } c4 \! r |
  \tuplet 3/2 4 { g8( \> f-sharp g) b-flat!( a b-flat) } d4 \! r |

  \tuplet 3/2 4 {
    c8-. \mf b-. c-. a-. g-. a-. f-. e-. f-. c-. \< d-. e-. |
    f8-. g-. a-. b-flat-. c-. d-. c-. d-. e-. f-. \f e-. d-. |
    c8-. b-flat-. a-. g-. f-. e-. d-. e-. f-. g-. a-. b-flat-. |
  }
  \tuplet 3/2 { a8( \> f) a-. } c-. r \tuplet 3/2 { g( e) g-. } c-. r |
  \tuplet 3/2 4 { f,8( \p e) f-. c-. d-. e-. } f4 r |
  \tuplet 3/2 4 {
    e8( \mf g) c,-. d-flat( c) f-sharp-. g-. c,-. e-. g-. b-flat-. e,-. |
    f!8( a) c,-. d-flat( c) e-. f-. c-. g'-. a-. c-. f-sharp,-. |
    g8-. f-sharp-. g-. b-flat-. a-. g-. f-. e-. d-. c-. d-. e-. |
  }
  \tuplet 3/2 4 { f-. c'-. a-. f-. c-. a-. } f4 r | \bar "|."
}
