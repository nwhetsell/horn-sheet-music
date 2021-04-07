\version "2.22.0"

\include "settings.ily"

\relative {
  \language "english"

  \transposition f

  \tempo "Adagio cantabile"

  \key b-flat \major
  \time 9/8

  \partial 4. { f'4_\markup { \italic "dolce espress." }( b-flat8) } |
  d4.~8 f,8( \< b-flat d) f,( d') |
  c2. \> f,4( \! c'8) |
  e-flat4.~8 f,8( \< c' e-flat) f,( e-flat') |
  d2. \> f,4( \! b-flat8) |
  f'4.~8 f,8( \< b-flat f') f,( f') |
  e-flat2. \> g,4( \! e-flat'8) |
  d4.~ \< d8 f,8( d' c) \> f,( c') |
  b-flat2. \! a4( \mf b-flat8) |

  c4.~8 d( \< e f c a) |
  d8.( \> c16) b-flat-. a-. \! g4 r8 g4( a8) |
  b-flat4.~8 c( \< d e d c) |
  a8.( \> g16) f-. d-. \! c4 r8 a4( c8) |
  f16( \f c) a-. c-. f-. a-. c( a) f-. a-. c-. f-. c-. a-. f-. c-. a-. f-. |
  c2. a4( b-flat8) |
  c8.( c-sharp16 d e-flat! e \tweak rotation #'(7 0 0) \< f g a b-flat! b c c-sharp d e-flat! e g) \! |
  f4.~4 r8 c'4( \p a8) |
  e-flat'4.~8 d-. c-. b-flat-. a-. g-. |
  f4( \< d8) b-flat'4( f8) d'4( b-flat8) \! |
  e-flat4.~( e-flat16 d) d( c) c( b-flat) b-flat( a) a( g) g( f) |
  f16( d) b-flat-. \< d-. f-. b-flat-. b-flat( f) d-. f-. b-flat-. d-. d( b-flat) f-. b-flat-. d-. f-. |
  g4.~ \f g8 b,( d a-flat' g d) |
  f4( \> e8 e-flat4.) g,4( \< g-flat8) |
  f4.~ f8 e( \> f d'4 c8) |
  b-flat2. \! f4_\markup { \italic "dolce" }( b-flat8) |

  d4.~8 f,8( \< b-flat d16) f,( b-flat d f, d') |
  c2. \> f,4( \! c'8) |
  e-flat4.~8 f,8( \< c' e-flat16) f,( c' e-flat f, e-flat') |
  d2. \> f,4( \! b-flat8) |
  f'4.~8 f,8( \< b-flat f'16) f,( b-flat d f, f') |
  e-flat2. \> g,4( \! e-flat'8) |
  d4.~ \< d8 f,8( d' c16) \> e-flat,( f c' f, c') |
  b-flat2. \! e-flat8->( d c) |
  d8->( c b-flat) c8->( b-flat a) g8->( f e-flat) |
  d4( f8 b-flat,4) r8 e-flat( \> d c) |
  d8( c b-flat) a( g f) \clef \bass-clef-name e-flat( d c) \! |
  b-flat4-._( r8 r4. b-flat4-.) r8 |
  \partial 2. {
    <<
      { b-flat2.\fermata }
      {
        \override Hairpin.minimum-length = #3
        s4 \< s \> s \!
        \revert Hairpin.minimum-length
      }
    >>
  } | \bar "|."
}
