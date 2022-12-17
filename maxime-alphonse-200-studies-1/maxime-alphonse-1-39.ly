\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Lento" 4=58

  \key g \major
  \time 4/4

  d''4( \mf b) r8 d( g,4) |
  r8 g( b) g( d'4) r |
  g4( e) r8 g( c,4) |
  r8 c( e) c( g'4) r |
  d4( \cresc d,) r8 c'( d,4) |
  r8 d( f-sharp) d( d'4) r |
  f-sharp4( \f f-sharp,) r8 e'( f-sharp,4) |
  r8 f-sharp( c-sharp') f-sharp,( f-sharp'4) r |

  d4( \p b) r8 d( g,4) |
  r8 g( b) g( d'4) r |
  c!4( g) r8 c( e,4) |
  r8 e( g) e( c'4) r |
  c4( g) r8 c( e-flat,4) |
  r8 e-flat( g) e-flat( c'4) r |
  c4( a) r8 c( e-flat,4) |
  r8 e-flat( a) e-flat( c'4) r |
  c4( a) r8 c( d,4) |
  r8 d( f-sharp) d( a'4) r |
  <<
    { g1\fermata }
    {
      \override Hairpin.minimum-length = #6
      s4*2/3 \p \< s \f \> s \!
      \revert Hairpin.minimum-length
    }
  >> | \bar "|."
}
