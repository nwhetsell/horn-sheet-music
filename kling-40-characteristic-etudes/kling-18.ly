\version "2.22.0"

\include "settings.ily"

\relative {
  \language "english"

  \transposition f

  \tempo "Presto assai"

  \key g \major
  \time 3/4

  \partial 4 { d'4-. \f } |
  g,8-. f-sharp-. g-. a-. b-. c-. |
  d8-. e-. f-sharp-. g-. a-. g-. |
  f-sharp8-. g-. f-sharp-. e-. d-. e-. |
  f-sharp4 r d' |
  d,8-. c-sharp-. d-. e-. f-sharp-. g-. |
  a8-. b-. c-. a-. f-sharp-. d-. |
  g8-. b-. g-. d-. b-. d-. |
  g,4 r d''_\markup { \dynamic "p" \italic "grazioso" } |
  a4( d f-sharp,) |
  \acciaccatura a8 g4( f-sharp g) |
  a8( \< d c-sharp d f-sharp, b) |
  a2( \> d4) \! |
  a4( d f-sharp,) |
  \acciaccatura a8 g4( f-sharp e) |
  d8-. \< d-sharp e-. e-sharp-. f-sharp-. g-. |
  g-sharp8-. a-. a-sharp-. b-. b-sharp-. c-sharp-. |
  d8-. \> d-flat-. c-. b-. b-flat-. a-. |
  a-flat8-. g-. g-flat-. f-. e-. e-flat-. |
  d8-. \< d-sharp e-. e-sharp-. f-sharp-. g-. |
  g-sharp8-. a-. a-sharp-. b-. b-sharp-. c-sharp-. |
  <> \f \repeat unfold 3 { d8->( e) c-sharp->( e) }
  d8\(( \> g f-sharp b, e a,) |
  d8( g, c f-sharp, b e,)\) |
  #(if preserve-line-breaks? #{
    \shape #'((0 . -0.5) (0 . 0) (0 . 0) (0 . -0.5)) PhrasingSlur
  #} #{
    \shape #'(((0 . -0.5) (0 . 0) (0 . 0) (0 . 0)) ((0 . 0) (0 . 0) (0 . 0) (0 . -0.5))) PhrasingSlur
  #})
  a8\(( d, g c, f-sharp b,) \! |
  e8( a, d g, c f-sharp,)\) |
  g8->( f-sharp) e-. d-sharp-. e-. g-sharp-. |
  a8->( g) f-sharp-. e-sharp-. f-sharp-. a-sharp-. |
  b8->( \cresc a-natural!) g-. f-sharp-. g-. b-. |
  c8->( b) a-. g-sharp-. a-. c-sharp-. |
  d8->( #(make-music 'CrescendoEvent 'span-direction START 'span-type 'text 'span-text "più cresc.") c-natural!) b-. a-sharp-. b-. d-sharp-. |
  e8->( d-natural!) c-. b-. c-. e-sharp-. |
  f-sharp8->( e-natural!) d-. c-sharp-. d-. f-sharp-. |
  g8->( f-sharp) e-. d-sharp-. e-. g-sharp-. |
  a8-. \f b-. c-. a-. f-sharp-. d-. |
  b'8-. g-. e-. c-. a'-. f-sharp-. |
  d8-. b-. g'-. e-. c-. a-. |
  f-sharp'8-. d-. b-. g-. e'-. c-. |
  a8-. f-sharp-. d'-. b-. g-. e-. |
  c'8-. a-. f-sharp-. d-. b'-. g-. |
  e8-. c-. a'-. f-sharp-. d4 |
  r4 r d'4-. \ff |

  g,8-. f-sharp-. g-. a-. b-. c-. |
  d8-. e-. f-sharp-. g-. a-. g-. |
  f-sharp8-. g-. f-sharp-. e-. d-. e-. |
  f-sharp4 r d' |
  d,8-. c-sharp-. d-. e-. f-sharp-. g-. |
  a8-. b-. c-. d-. e-. f-sharp-. |
  g8-. d-. b-. g-. d-. b-. |
  g8-. b-. d-. g-. b-. d-. |
  g8-. d-. b-. e-. d-. b-. |
  g8-. c-. b-. g-. d-. a'-. |
  g8-. d-. b-. e-. d-. b-. |
  g4-. r \clef \bass-clef-name d-. |
  g,4-. r \clef "treble" d''-. |
  g4-. r r | \bar "|."
}
