\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Scherzo" 4.=80

  \key a \minor
  \time 3/8

  a'8-!_\markup { \dynamic "f" \italic "ma leggiero" } r r |
  e'8-! r r |
  e,8-! r r |
  \repeat unfold 2 { a8-! r c-! | }
  b8-! e-! e,-! |
  \repeat unfold 2 { a8-! r c-! | }
  b8-! \> e-! e,-! |
  a8-! d-! d,-! | \bar "||"

  g8-. \mf r r |
  d'8-. r r |
  d,8-. r r |
  \repeat unfold 2 { g8-. r b-. | }
  a8-. d-. d,-. |
  \repeat unfold 2 { g8-. r b-. | }
  a8-. \> d-. d,-. |
  g8-. c-. c,-. |

  f8-. \p r r |
  c'8-. r r |
  c,8-. r r |
  \repeat unfold 2 { f8-. r a-. | }
  g8-. c-. c,-. |
  \repeat unfold 2 { f8-. r a-. | }
  g8-. \< c-. c,-. |
  f8-. b!-. e,-. | \bar "||"

  a8-! \f r r |
  e'8-! r r |
  e,8-! r r |
  a8-! r c-! |
  b8-! e-! e,-! |
  \repeat unfold 2 { a8-! r c-! | }
  b8-! e-! e,-! |
  a8-! e-! e'-! |
  a,8-! r r |\bar "|."
}
