\version "2.22.0"

\include "../turn-markup.ily"

\relative {
  \language "english"

  \transposition f

  \once \override Score.MetronomeMark.padding = #4
  \tempo "Allegro vivace"

  \key e \minor
  \time 2/2

  \partial 4 { e'8-. \f g-. } | \bar "||"
  \once \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
  \once \override Score.RehearsalMark.font-size = #0
  \once \override Score.RehearsalMark.outside-staff-priority = #900
  \mark \markup { \musicglyph #"scripts.segno" }
  \stemUp b8( a-sharp) b-. \stemNeutral c-. b( a) g-. f-sharp-. |
  e8( g) f-sharp-. e-.
    f-sharp( b,) c-sharp-. d-sharp-. % The 1st edition has f-sharp-. b,( c b) here.
    |
  e8( d-sharp) e-. g-. f-sharp( e) f-sharp-. a-. |
  g8( f-sharp) g-. b-. a( g) a-. c-. |
  <<
    {
      \voiceOne
      b8( a-sharp) b-. c-. b( a) g-. f-sharp-.
    }
    \new Voice {
      \voiceTwo
      b4 r8 c
    }
  >> \oneVoice |
  e,8( g) f-sharp-. e-. f-sharp-. b,( c b) |
  e8( g) b-. e-. g( f-sharp) e-. d-sharp-. |
  e8( b) g-. b-. e,4 \breathe \bar "||" g8-. \p b-. |
  d8( c-sharp) d-. e-. d( c) b-. a-. |
  g-sharp8( \< b) d-. f-. e( \> f) e-. d-. \! |
  c8( b) c-. d-. c( b) a-. g-natural!-. |
  f-sharp8( \< a) c-. e-. d( e) d-. c-. |
  b8( \> c) b-. a-. g( f-sharp) e-. g-. \! |
  f-sharp8 r g-. \mf e-. d-sharp( b) e-. g-. |
  f-sharp8( b) g-. e-. d-sharp( b) e-. g-. |
  b4 r b8( \f c) b-. a-sharp-. |
  b8( a-sharp) b-. c-. b( a) g-. f-sharp-. |
  e8( g) f-sharp-. e-. f-sharp-. b,( c b) |
  e8( f-sharp) g-. a-. b( c-sharp) d-sharp-. e-. |
  b8( c-sharp) d-sharp-. e-. f-sharp( g) a-. f-sharp-. |
  g8( e) c-natural!-. a-. g( e) b'-. b,-. |
  e8( b) g-. b-. e4 r | \bar "||"

  \once \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
  \once \override Score.RehearsalMark.direction = #DOWN
  \once \override Score.RehearsalMark.font-size = 0
  \once \override Score.RehearsalMark.self-alignment-X = #right
  \mark \markup { \italic "Fine" }

  \key e \major
  r2^\markup { \italic "meno" } b'4( \tweak X-offset #0 #(make-dynamic-script (markup #:dynamic "p" #:normal-text (#:italic "dolce"))) \< a) |
  g-sharp2( e) \breathe |
  c-sharp'4( a e' c-sharp) \! |
  b4.( c-sharp8) \> a4.( b8) |
  g-sharp2 \breathe e'4( \< g-sharp,) |
  f-sharp4( g-sharp a b) \! |
  b-sharp8( c-sharp d-sharp c-sharp b a g-sharp f-sharp) |
  e2.( \> f-sharp8 e) |
  d-sharp2 \breathe b'4( \p \< a) |
  g-sharp4( b c-sharp d-sharp |
  e4 d-sharp c-sharp b) |
  b4( \f a-sharp f-sharp' a,) |
  g-sharp4( b e d) |
  b-sharp8( \> c-sharp d-sharp! c-sharp b a g-sharp f-sharp) \! |
  e4 r8 b8 g-sharp'4( f-sharp) |
  f-sharp2.( g-sharp8 f-sharp) |
  e2 f-sharp4( g-sharp) |
  \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . -1/3)) Slur a2.( \cresc \appoggiatura { b32 a g-sharp a } b4) |
  c4( a f-sharp e) |
  d-sharp4( b d-sharp f-sharp) |
  b4( \f d-sharp f-sharp a,) |
  g-sharp4( b e b-sharp) |
  c-sharp4( g-sharp a f-sharp) |
  e2.( \> f-sharp8 e) \! |
  d-sharp4 r f-sharp( \p g-sharp) |
  <<
    { a2.( \cresc b4) }
    { s2 s^\turn-markup }
  >> |
  c4( a f-sharp e) |
  d-sharp4( b d-sharp f-sharp) |
  b4( \f d-sharp f-sharp a,) |
  g4( b c-sharp d-sharp |
  e4 c b a-sharp) |
  b4( \> f-sharp g e) |
  b2\fermata \! r4 \bar "||"

  \key e \minor
  e8-. \f g-. \bar "||"

  \once \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
  \once \override Score.RehearsalMark.direction = #DOWN
  \once \override Score.RehearsalMark.font-size = 0
  \once \override Score.RehearsalMark.self-alignment-X = #right
  \mark \markup { \italic "D.S. al Fine" }
}
