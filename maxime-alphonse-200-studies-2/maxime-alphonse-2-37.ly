\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Andantino" 4=84

  \key a \major
  \time 2/4

  #(define first-two-measures #{
    \relative {
      \repeat unfold 2 { a'8-^ 16-. c-sharp-. } |
      a8-^ 16-. b-. c-sharp-. a-. b-. g-sharp-. |
    }
  #})

  <> \f
  \first-two-measures
  \repeat unfold 2 { a'8-^ 16-. c-sharp-. } |
  a8-^ 16-. c-sharp-. b-. a-. b-. g-sharp-. |
  a4-> r |
  \repeat unfold 2 { c-sharp8-^ 16-. e-. } |
  c-sharp8-^ 16-. d-sharp-. e-. c-sharp-. d-sharp-. b-sharp-. |
  \repeat unfold 2 { c-sharp8-^ 16-. e-. } |
  c-sharp8-^ 16-. e-. d-sharp-. c-sharp-. d-sharp-. b-sharp-. |
  c-sharp4-> r16 f-sharp, \f g-sharp a-sharp |
  b!8-^ 16-. f-sharp-. b8-^ 16-. d!-. |
  b8-^ 16-. c-sharp-. d-. b-. c-sharp-. a-sharp-. |
  b8-^ 16-. f-sharp-. b8-^ 16-. d-. |
  b8-^ 16-. c-sharp-. d-. b-. c-sharp-. a-sharp-. |
  b4-> r16 d \mf b a! |
  \repeat unfold 2 {
    g8-^ 16-. d-. g8-^ 16-. b-. |
    g8-^ 16-. a-. b-. g-. a-. f-sharp-. |
  }
  g4-> r16 b \p g! f-sharp |
  \repeat unfold 2 { e8-^ 16-. g-. } |
  e8-^ 16-. f-sharp-. g-. e-. f-sharp-. d-sharp-. |
  e8-^ 16-. g-. e8-^ 16-. g-sharp-. |
  e8-^ 16-. g-sharp-. b-. g-sharp-. b-. g-sharp-. |
  e4.-> r8 | \bar "||"

  \tempo "Allegro vivo" 4=144
  e4_\markup { \dynamic "mf" \italic "legato" }( e' |
  d4 c-sharp) |
  b8( d b g-sharp) |
  a4.->( c-sharp8) |
  b4.->( d8) |
  c-sharp4.->( e8) |
  d4.->( f-sharp8) |
  e4 r |
  f-sharp4->( c-sharp |
  d4 f-sharp) |
  e8( d c-sharp b) |
  c-sharp4.->( a8) |
  d4.->( b8) |
  e4.->( c-sharp8) |
  f-sharp4.( d8) |
  b4. r8 |

  e,4( \p \< e' |
  d4 \> c-sharp) |
  b8( \! d b g-sharp) |
  a4.( c-sharp8) |
  b4.( d8) |
  c-sharp4.( e8) |
  d4.( f-sharp8) |
  e4 r |
  f-sharp4->( c-sharp |
  d4 f-sharp) |
  e8( d c-sharp b) |
  c-sharp4.( a8) |
  d4.( b8) |
  e4.( c-sharp8) |
  d8( b a g-sharp) |
  a4. r8 | \bar "||"

  \tempo "1º Tempo"
  <> \f
  \first-two-measures
  \repeat unfold 2 { a8-^ 16-. c-sharp-. } |
  a8-^ 16-. c-sharp-. b-. a-. b-. g-sharp-. |
  a4. r8 |
  \repeat unfold 2 { c-sharp8-^ 16-. e-. } |
  c-sharp8-^ 16-. d-sharp-. e-. c-sharp-. d-sharp-. b-sharp-. |
  \repeat unfold 2 { c-sharp8-^ 16-. e-. } |
  c-sharp8-^ 16-. e-. d-sharp-. c-sharp-. d-sharp-. b!-. |
  <<
    {
      c-sharp4-> r16 d! \< c-sharp b \! |
      \first-two-measures
      a8-^ a,16-. c-sharp-. a8-^ 16-. e'-. |
      a,8-^ 16-. a'-. e-. a-. e-. c-sharp-. a2-> \! | \bar "|."
    }
    \new Dynamics {
      s4 s16 s \decresc s8 |
      s2*4 |
      s2 \!
    }
  >>
}
