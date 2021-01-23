\version "2.22.0"

\language "english"

\relative {
  \transposition f

  \tempo "Allegro scherzando"

  \key a-flat \major
  \time 3/4

  \tuplet 3/2 4 { a-flat'8-. \ff a-flat-. a-flat-. c-. c-. c-. e-flat-. e-flat-. e-flat-. } |
  a-flat4 r a-flat, \p |
  g8-. e-flat'-. a-flat,-. e-flat'-. b-flat-. e-flat-. |
  e-flat,4 r r |
  \tuplet 3/2 4 { e-flat8-. \ff e-flat-. e-flat-. g-. g-. g-. b-flat-. b-flat-. b-flat-. } |
  e-flat4 r g, \p |
  a-flat8-. e-flat'-. b-flat-. e-flat-. c-. e-flat-. |
  e-flat,4 r a-flat8( \ff g) |
  f8( a-flat d-flat f a-flat f) |
  e-flat8( a-flat) c,( e-flat) a-flat,( g) |
  f8( a-flat d-flat f a-flat f) |
  e-flat8( a-flat) c,( e-flat) a-flat,( c) |
  b-flat8( c d-flat e-flat f e-flat) |
  c'8( a-flat) a-flat( e-flat) e-flat( c) |
  g'8->( f) e-flat-. d-flat-. c-. b-flat-. |
  a-flat4 r r |

  \tuplet 3/2 4 {
    f8-._\markup { \italic "leggiero" } a-flat-. c-. f-. a-flat-. g-. f-. e-. f-. |
    g8-. e-. c-. d-flat!-. b-flat-. g-. b-flat-. g-. e-. |
    f8-. f-sharp-. g-. a-flat-. a-. b-flat-. b-. c-. d-flat!-. |
    c8-. b-. c-. c,-. b'-. c-. c,-. b'-. c-. |
    f,8-. a-flat-. c-. f-. a-flat-. g-. f-. e-. f-. |
    g8-. e-. c-. d-flat!-. b-flat-. g-. b-flat-. g-. e-. |
    f8-. f-sharp-. g-. a-flat-. a-. b-flat-. b-. c-. c,-. |
  }
  \tuplet 3/2 4 { f8-. f'( e f) c-. a-flat-. } f8 r |

  \tuplet 3/2 4 {
    e-flat!8-._\markup { \italic "sempre" \dynamic "f" } g-. b-flat-. d-flat!-. f-. e-flat-. d-flat-. b-flat-. g-. |
    a-flat8-. c-. e-flat-. a-flat-. c-. b-flat-. a-flat-. e-flat-. c-. |
    g'-. f-. b-flat,-. f'-. e-flat-. a-flat,-. e-flat'-. d-flat-. g,-. |
  }
  \tuplet 3/2 4 { a-flat-. c,-. f-. e-flat-. c'-. a-flat-. } e-flat'8 r |
  \tuplet 3/2 4 {
    e-flat,8-. g-. b-flat-. d-flat!-. f-. e-flat-. d-flat-. b-flat-. g-. |
    a-flat8-. c-. e-flat-. a-flat-. c-. b-flat-. a-flat-. e-flat-. c-. |
    b-flat8-. g'-. e-flat-. b-flat-. c-. g-. b-flat-. a-flat-. f-. |
  }
  e-flat2( \< e8) r |

  \tuplet 3/2 4 {
    f8-. \ff a-flat-. c-. f-. a-flat-. g-. f-. e-. f-. |
    g8-. e-. c-. d-flat!-. b-flat-. g-. b-flat-. g-. e-. |
    f8-. f-sharp-. g-. a-flat-. a-. b-flat-. b-. c-. d-flat!-. |
    c8-. b-. c-. c,-. b'-. c-. c,-. b'-. c-. |
    f,8-. a-flat-. c-. f-. a-flat-. g-. f-. e-. f-. |
    g8-. e-. c-. d-flat!-. b-flat-. g-. b-flat-. g-. e-. |
    f8-. f-sharp-. g-. a-flat-. a-. b-flat-. b-. c-. c,-. |
  }
  \tuplet 3/2 4 { f8-. f'( e f) c-. a-flat-. } f8 r |

  \tuplet 3/2 4 { a-flat8-. \ff a-flat-. a-flat-. c-. c-. c-. e-flat-. e-flat-. e-flat-. } |
  a-flat4 r a-flat, \p |
  g8-. e-flat'-. a-flat,-. e-flat'-. b-flat-. e-flat-. |
  e-flat,4 r r |
  \tuplet 3/2 4 { e-flat8-. \ff e-flat-. e-flat-. g-. g-. g-. b-flat-. b-flat-. b-flat-. } |
  e-flat4 r g, \p |
  a-flat8-. e-flat'-. b-flat-. e-flat-. c-. e-flat-. |
  e-flat,4 r a-flat8( \ff g) |
  f8( a-flat d-flat f a-flat f) |
  e-flat8( a-flat) c,( e-flat) a-flat,( g) |
  f8( a-flat d-flat f a-flat f) |
  e-flat8( a-flat) c,( e-flat) a-flat,( c) |
  b-flat8( c d-flat e-flat f e-flat) |
  c'8( a-flat) a-flat( e-flat) e-flat( c) |
  g'8( \> f) e-flat-. d-flat-. c-. b-flat-. \! |
  a-flat4-. r r | \bar "|."
}
