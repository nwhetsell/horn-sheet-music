\version "2.22.0"

\include "settings.ily"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro scherzando"

  \key c \major
  \time 3/4

  \partial 4 { g'8-._\markup { \dynamic "f" \italic "leggiero" } r } |
  \tuplet 3/2 { e'8-. d-. c-. } b-. r a-. r |
  g2 \tuplet 3/2 { e8-. f-. g-. } |
  a2 \tuplet 3/2 { f8-. g-. a-. } |
  b2 \tuplet 3/2 { g8-. a-. b-. } |
  c8 r \tuplet 3/2 { a-. b-. c-. } d r |
  \tuplet 3/2 { b8-. c-. d-. } e r \tuplet 3/2 { c-. d-. e-. } |
  f8-. r d-. r \tuplet 3/2 { b-. a-. g-. } |
  g4 r g8-. r |
  \tuplet 3/2 { e'8-. d-. c-. } b-. r a-. r |
  g2 \tuplet 3/2 { e8-. f-. g-. } |
  a2 \tuplet 3/2 { f8-. g-. a-. } |
  b2 \tuplet 3/2 { g8-. a-. b-. } |
  c8 r \tuplet 3/2 { a-. b-. c-. } d r |
  \tuplet 3/2 { b8-. c-. d-. } e r \tuplet 3/2 { c-. d-. e-. } |
  \tuplet 3/2 4 { f8( g) f-. e-. d-. c-. b-. a-. g-. } |
  c8-. r c,,-. r r4 |

  \tuplet 3/2 4 {
    d'8-. \f e-. f-sharp-. g-. a-. b-. c-. a-. d-. |
    b8-. g'-. f-sharp-. e-. d-. c-. b-. a-. g-. |
    f-sharp'8-. e-. d-. c-. b-. a-. g-. f-sharp-. a-. |
    g8-. d'-. c-. b-. a-. g-. f-sharp-. e-. d-sharp-. |
    d-natural!8-. e-. f-sharp-. g-. a-. b-. c-. a-. d-. |
    b8-. g'-. f-sharp-. e-. d-. c-. b-. a-. g-. |
    f-sharp8-. e-. d-. c-. b-. a-. g-. f-sharp-. a-. |
  }
  \tuplet 3/2 4 { g8-. b-. d-. g-. b-. d-. } g-. r |
  \tuplet 3/2 4 { f-natural!8-. d-. b-. g-. d-. b-. } g-. r |
  \tuplet 3/2 4 { e''8-. c-. g-. e-. c-. g-. } c,-. r |
  \tuplet 3/2 4 { e-flat''8-. c-. g-. e-flat-. c-. g-. } c,-. r |
  \tuplet 3/2 4 { d''8-. b-. g-. d-. b-. g-. } \clef \bass-clef-name g, r |
  \clef "treble"
  g'8-. r g'-. r \tuplet 3/2 { g,-. g-. g-. } |
  a-flat8-. r g'-. r \tuplet 3/2 { a-flat,-. a-flat-. a-flat-. } |
  a-natural!8-. r g'-. r \tuplet 3/2 { a,-. a-. a-. } |
  b-flat8-. r g'-. r \tuplet 3/2 { b-flat,-. b-flat-. b-flat-. } |
  \tuplet 3/2 4 {
    b-natural!8-. b-. b-. c-. c-. c-. c-sharp-. c-sharp-. c-sharp-. |
    d8-. d-. d-. d-sharp-. d-sharp-. d-sharp-. e-. e-. e-. |
  }
  \tuplet 3/2 4 { f8-. f-. f-. f-sharp-. f-sharp-. f-sharp-. } g-. r |

  \tuplet 3/2 { e'8-. \f d-. c-. } b-. r a-. r |
  g2 \tuplet 3/2 { e8-. f-. g-. } |
  a2 \tuplet 3/2 { f8-. g-. a-. } |
  b2 \tuplet 3/2 { g8-. a-. b-. } |
  c8 r \tuplet 3/2 { a-. b-. c-. } d r |
  \tuplet 3/2 { b8-. c-. d-. } e r \tuplet 3/2 { c-. d-. e-. } |
  f8-. r d-. r \tuplet 3/2 { b-. a-. g-. } |
  g4 r g8-. r |
  \tuplet 3/2 { e'8-. d-. c-. } b-. r a-. r |
  g2 \tuplet 3/2 { e8-. f-. g-. } |
  a2 \tuplet 3/2 { f8-. g-. a-. } |
  b2 \tuplet 3/2 { g8-. a-. b-. } |
  c8 r \tuplet 3/2 { a-. b-. c-. } d r |
  \tuplet 3/2 { b8-. c-. d-. } e r \tuplet 3/2 { c-. d-. e-. } |
  \tuplet 3/2 4 { f8( g) f-. e-. d-. c-. b-. a-. g-. } |
  \partial 2 { c8-. r c,,-. r } | \bar "|."
}
