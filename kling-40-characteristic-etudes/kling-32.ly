\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Andante"

  \key b-flat \major
  \time 9/8

  \partial 4. { d''4( \tweak X-offset #0 #(make-dynamic-script (markup #:dynamic "p" #:normal-text (#:italic "espress."))) e-flat8) } |
  f4.~( \< f8 g f d b-flat g) |
  f4.~ \> f8 d( \< e-flat f d' c) |
  b-flat8( \< a c e-flat g f e-flat g, a) |
  c8( \> b-flat d) f,4 \! r8 d'4( e-flat8) |
  f4.~( \< f8 g f d b-flat g) |
  f4.~ \> f8 d( \< e-flat f d' c) |
  b-flat8( \< a c e-flat g f e-flat g, a) |
  c4.( \> b-flat4) \! r8 a4( \mf b-flat8) |

  c16( d32 c) b16-. c-. d-. c-. f( g32 f) e16-. f-. g-. f-. a( b-flat32 a) g-sharp16-. a-. b-flat-. a-. |
  g16-. b-flat-. d,-. g-. b-flat,-. d-. g,-. b-flat-. d,-. g-. b-flat,-. d-. \repeat unfold 2 { g-. b-flat-. d-. } |
  e16( f32 e) d-sharp16-. e-. f-. e-. g( a32 g) f-sharp16-. g-. a-. g-. b-flat( c32 b-flat) a16-. g-. f-. e-. |
  f16-. a-. c,-. f-. a,-. c-. f,-. a-. c,-. f-. a,-. c-. \repeat unfold 2 { f-. a-. c-. } |
  e-flat!16( f32 e-flat) d16-. e-flat-. f-. e-flat-. c( d32 c) b16-. c-. d-. c-. a( b-flat32 a) g-sharp16-. a-. b-flat-. a-. |
  b-flat16-. d-. f,-. b-flat-. d,-. f-. b-flat,-. d-. f-. b-flat-. d-. f-. b-flat-. f-. d-. b-flat-. f-. d-. |
  c16-. f-. a-. c-. f-. a-. c-. a-. f-. c-. a-. f-. e-. g-. b-flat-. c-. e-. g-. |
  f16( g32 f) e16-. f-. a,-. c-. f,8 r r d'4( \p e-flat8) |

  f4.~( \< f8 g f d b-flat g) |
  f4.~ \> f8 d( \< e-flat f d' c) |
  b-flat8( \< a c e-flat g f e-flat g, a) |
  c8( \> b-flat d) f,4 \! r8 d'4( e-flat8) |
  f4.~( \< f8 g f d b-flat g) |
  f4.~ \> f8 d( \< e-flat f d' c) |
  b-flat8( \< a c e-flat g f e-flat g, a) |
  c4.( \> b-flat4) \! r8 r4. |
  f'4.~( \< f8 a \> g d e-flat c) \! |
  b-flat4( d8 f,4) r8 r4. |
  f4.~( \> f8 a g d e-flat c) \! |
  b-flat4 r8 r4. d'4-.( \pp r8 |
  \partial 2. { b-flat4-.) r8 r4. } | \bar "|."
}
