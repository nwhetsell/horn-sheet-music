\version "2.22.0"

\include "settings.ily"

\relative {
  \language "english"

  \transposition f

  \tempo "Andante"

  \key c \major
  \time 4/4

  \override Hairpin.after-line-breaking = ##t
  \override Hairpin.to-barline = ##f

  \partial 8*3 { g'8 \f \< a b } |
  c8 \! e,[ \p d c] b g'[ \f \< b c] |
  d8 \! f,[ \p e d] c g'[ \f \< c d] |
  e8 \! g,[ \p f e] d a'[ \f \< d c] |
  \once \stemDown b8 \! g[ \p d b] g g[ \f \< a b] |
  c8 \! e'[ \p d c] b g,[ \f \< b c] |
  d8 \! f'[ \p e d] c g,[ \f \< c d] |
  e8 \! g'[ \p f e] d f,,[ \f \< g a] |
  b8 \! d'[ \p b g] c4 r |
  r2 r8 e[ \f \< d c-sharp] |
  d8 \! d,[ \p f-sharp g] a e'[ \f \< d c-sharp] |
  d8 \! d,[ \p g a] b d[ \f \< c-natural! b] |
  a8 \! c,[ \p d e] f-sharp c'[ \f \< b a] |
  g8 \! g[ \p d b] g4 r |
  r2 r8 \clef \bass-clef-name g,[ \f \< a b] |
  c8 \! \clef "treble" e''[ \p c g] e \clef \bass-clef-name c,[ \f \< \f d e] |
  f8 \! \clef "treble" f''[ \p c a] f f,[ \f \< g a] |
  b8 \! f''[ \p d b] g g,[ \f \< a b] |
  c8 \! c'[ \p g e] c4 r\fermata | \bar ".|:-||" \break

  \once \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
  \once \override Score.RehearsalMark.direction = #DOWN
  \once \override Score.RehearsalMark.font-size = 0
  \once \override Score.RehearsalMark.self-alignment-X = #right
  \mark \markup { \italic "Fine" }

  \tempo "poco vivo"
  \repeat volta 2 {
    \partial 4 { \tuplet 3/2 { e8_\markup { \italic "dolce" } f-sharp g-sharp } } |
    \tuplet 3/2 4 {
      a8( e) a-. c( b) a-. b( e,) b'-. d( c) b -.|
      c8( \< e) a,-. c( e) a,-. b( e) e,-. b'( e) e,-. |
      a8( \> e) a-. c( b) a-. b( e,) b'-. d( c) b-. \! |
    }
    \tuplet 3/2 4 { c8( e)
      e,-. % The 1st edition has a here.
      b'( e) e,-. } a4
  }
  \repeat volta 2 {
    \tuplet 3/2 4 {
      a8 b c-sharp |
      d8( a) d-. e( a,) e'-. f( a,) f'-. e( a,) e'-. |
      d8( \< a) d-. c( a) c-. b( e,) e'-. b( e,) e'-. |
      a,8( \> e) a-. c( b) a-. b( e,) b'-. d( c) b-. \! |
    }
    \tuplet 3/2 4 { c8( e)
      a,-. % The 1st edition has e here.
      b( e) e,-. } a4
  }

  \partial 8*5 { r2\fermata r8 } | \bar "|."

  \once \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
  \once \override Score.RehearsalMark.direction = #DOWN
  \once \override Score.RehearsalMark.font-size = 0
  \once \override Score.RehearsalMark.self-alignment-X = #right
  \mark \markup { \italic "D.C. al Fine" }

  \revert Hairpin.after-line-breaking
  \revert Hairpin.to-barline
}
