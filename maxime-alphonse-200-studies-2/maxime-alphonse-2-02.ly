\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Moderato" 4.=80

  \key a \minor
  \time 6/8

  a'8( \mf c) a-. b( d) b-. |
  c4( b8) a4 r8 |
  a8( c) a-. b( d) b-. |
  c4( d8) e4 r8 |
  e4( f8) e( d) c-. |
  d4( e8) d( c) b-. |
  c4( d8) c( b) a-. |
  b4-> e8-. e,4 r8 |
  e'4( f8) e( d) c-. |
  d4( e8) d( c) b-. |
  c4( d8) c( b) a-. |
  e4.~4 r8 |

  a8( \p c) a-. b( d) b-. |
  c4( b8) a4 r8 |
  a8( c) a-. b( d) b-. |
  c4( d8) e4 r8 |
  e4 f8-. e( d) c-. |
  d4 e8-. d( c) b-. |
  c4 d8-. c( b) a-. |
  a8( b) g-sharp-. a4 r8\fermata | \bar ".|:-||"

  \key a \major
  \time 2/4

  \repeat volta 2 {
    \tempo "Stesso Tempo"
    c-sharp8( \mf a b d) |
    c-sharp16( a b g-sharp a8 e) |
    e'8 16( f-sharp) d8 16( e) |
    c-sharp8 16( d) b8 r \breathe |
    e8( c-sharp d f-sharp) |
    e16( c-sharp d b a8 e) |
    a8 16( b) \tempo \markup { \normal-text \italic "Sec. Volta" "Rall." } c-sharp8 a16( b) |
    c-sharp16( a b g-sharp a8) r |
  }
  \once \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
  \once \override Score.RehearsalMark.font-size = #0
  \mark \markup { \musicglyph #"scripts.ufermata" }

  \key a \minor
  \time 6/8

  \tempo "1º Tempo"
  a8( \mf c a) b( d b) |
  c4( b8) a4 r8 |
  a8( c a) b( d b) |
  c4( d8) e4 r8 |
  e4( f8) e( d c) |
  d4( e8) d( c b) |
  c4( d8) c( b a) |
  b4-> e8-. e,4 r8 \breathe |

  a8( \mf c) a-. b( \dim d) b-. |
  c4( b8) a4 r8 |
  a8( c) a-. b( d) b-. |
  c4( d8) e4 r8 |
  e4( \p \dim f8) e( d) c-. |
  d4( e8) d( c) b-. |
  c4( d8) \! c( b) a-. |
  \tempo "Rall." a8( b g-sharp) a4.\fermata | \bar "|."
}
