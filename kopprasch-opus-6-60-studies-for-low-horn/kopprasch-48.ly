\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro moderato"

  \key c \major
  \time 4/4

  \tuplet 3/2 { e'8-._\markup { \dynamic "p" \italic "sempre staccato" } f-. f-sharp-. } g4-> \tuplet 3/2 { c8-. b-. b-flat-. } a4-> |
  \tuplet 3/2 { f-sharp8-. g-. g-sharp-. } a4-> \tuplet 3/2 { d8-. c-sharp-. c-. } b4-> |
  \tuplet 3/2 4 { g8-. \cresc g-sharp-. a-. a-sharp-. b-. c-. c-sharp-. d-. d-sharp-. e-. f-. f-sharp-. } |
  g4 \f \tuplet 3/2 { b,8-. c-. c-sharp-. } d4 \tuplet 3/2 { d8-. d-sharp-. e-. } |
  \tuplet 3/2 4 { f8-. \> e-. e-flat-. d-. d-flat-. c-. b-. b-flat-. a-. a-flat-. g-. f-sharp-. } |
  g4 \! r r \tuplet 3/2 { g8-. \p f-sharp-. f-. } |
  \tuplet 3/2 4 {
    e8-. \< f-. f-sharp-. g-. g-sharp-. a-. a-sharp-. b-. c-. c-sharp-. d-. d-sharp-. |
    e8-. \> f-. f-sharp-. g-. f-sharp-. f-. e-. e-flat-. d-. d-flat-. c-. b-. |
  }
  c4 \! \tuplet 3/2 { e-flat8-. \tweak X-offset #-1 \p d-. c-sharp-. } d4-> \tuplet 3/2 { c8-. b-. a-sharp-. } |
  b4-> \tuplet 3/2 { a-flat8-. g-. f-sharp-. } g4-> \breathe \tuplet 3/2 { g8-. \p f-sharp-. f-. } |
  \tuplet 3/2 4 { e8-. \< d-sharp-. e-. f-. f-sharp-. g-. g-sharp-. a-. a-sharp-. b-. c-. c-sharp-.} |
  \tuplet 3/2 4 { d8-. \f d-sharp-. e-. f-. f-sharp-. g-. } d4 \tuplet 3/2 { a8-. a-sharp-. b-. } |
  c4-> \tuplet 3/2 { f-sharp,8-. g-. g-sharp-. } a4-> \tuplet 3/2 { e8-. f-. f-sharp-. } |
  g4-> \tuplet 3/2 { a-flat,8-. g-. f-sharp-. } g4-> r |

  \tuplet 3/2 { c'8-. \tweak X-offset #-1 \p b-. b-flat-. } a4-> \tuplet 3/2 { a-flat8-. g-. g-flat-. } f4-> |
  \tuplet 3/2 { d'8-. \cresc c-sharp-. c-. } b4-> \tuplet 3/2 { b-flat8-. a-. a-flat-. } g4-> |
  \tuplet 3/2 4 { g'8-. \f f-sharp-. f-. e-. e-flat-. d-. d-flat-. c-. b-. b-flat-. a-. a-flat-. } |
  \tuplet 3/2 4 { g8-. \> f-sharp-. g-. a-flat-. g-. f-sharp-. } g4 \! r |
  \tuplet 3/2 4 { e8-. \cresc d-sharp-. e-. f-. e-. d-sharp-. e-. f-. f-sharp-. g-. g-sharp-. a-.} |
  \tuplet 3/2 4 { a-sharp8-. b-. c-. c-sharp-. d-. d-sharp-. } e4 r |
  \tuplet 3/2 4 { f8-. \f e-. e-flat-. d-. d-flat-. c-. b-. b-flat-. a-. a-flat-. g-. g-flat-. } |
  \tempo \markup { \combine
    \normal-text \italic "rit."
    \transparent \bold "p" % This aligns the baselines of “rit.” and “a tempo”.
  }
  \tuplet 3/2 4 { f8-. \> e-. e-flat-. d-. d-flat-. c-. } b4 \! r |
  \tempo "a tempo"
  \tuplet 3/2 4 { c8-. \p \cresc c-sharp-. d-. d-sharp-. e-. f-. f-sharp-. g-. g-sharp-. a-. a-sharp-. b-. } |
  \tuplet 3/2 4 { c8-. c-sharp-. d-. d-sharp-. e-. f-. } f-sharp4->( \f g8) r |
  \tuplet 3/2 4 { a,8-. a-sharp-. b-. c-. c-sharp-. d-. } d-sharp4->( e8) r |
  \tuplet 3/2 4 { f,8-. f-sharp-. g-. g-sharp-. a-. a-sharp-. } b4->( c8) r |
  \tuplet 3/2 4 {
    e8-. \> e-flat-. d-. d-flat-. c-. b-. b-flat-. a-. a-flat-. g-. g-flat-. f-. |
    e8-. \< f-. f-sharp-. g-. g-sharp-. a-. a-sharp-. b-. c-. c-sharp-. d-. d-sharp-. |
  }
  \tuplet 3/2 { e8-. f-. f-sharp-. } g4 \tuplet 3/2 4 { e,8-. \f f-. f-sharp-. g-. g-sharp-. a-. } |
  \tuplet 3/2 4 { a-sharp8-. b-. c-. d-flat-. c-. b-. } c4 r |
  r4 \tuplet 3/2 { d-flat,8-. \mf c-. b-. } c4 r |
  r4 \tuplet 3/2 4 { d-flat,8-.^\markup { \italic "rit." } \p c-. b-. } c4 r | \bar "|."
}
