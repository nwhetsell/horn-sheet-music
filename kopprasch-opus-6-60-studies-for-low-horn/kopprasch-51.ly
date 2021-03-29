\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Moderato"

  \key c \major
  \time 4/4

  \repeat volta 2 {
    c'16-. \mf c'( b c) e,-. e'( d-sharp e) g,-. g'( f-sharp g) e,-. e'( d-sharp! e) |
    f-natural,!16-. f-natural'!( e f) d-natural,!-. d-natural'!( c-sharp d) b,-. b'( a-sharp b) g,-. g'( f-sharp g) |
    c,16 \cresc c' b, b' c, c' d, d' e, e' d, d' e, e' f, f' |
    g,16 \f g' e, e' f, f' d, d' e, \> e' c, c' d, d' b, b' |
    c,8-.[ \mf \tweak Y-offset #3.75 \breathe b'16( c)] e,-. e'( d-sharp e) g,-. g'( f-sharp g) e,-. e'( d-sharp! e) |
    f-natural,!16-. f-natural'!( e f) d-natural,!-. d-natural'!( c-sharp d) b,-. b'( a-sharp b) g,-. g'( f-sharp g) |
    c,16 \cresc c' b, b' c, c' d, d' e, e' d, d' e, e' f-sharp, f-sharp' |
    g,16 \f g' d, d' b, b' d, d' g,,4 r |
  }
  \stemDown g''16-. \f g,( f-sharp g) a-natural'!-. a,( b-flat a) f'-. f,( e f) g'-. g,( a-flat g) \stemNeutral |
  e'16-. e,( d-sharp e) f'-. f,( e f) d-natural'! d, b' b, g' g, b' b, |
  c'8[ \breathe b16 b,] c' c, e' e, d' d, b' b, g' g, b' b, |
  c'8[ \breathe d,16 d'] e, e' f, f' g, g' f, f' e, e' d, d' |
  c,8-.[ \tweak Y-offset #3.75 \breathe b'16( c)] a,-. a'( g-sharp a) f,-. \> f'( e f) g,-. g'( f-sharp g) |
  a-flat,16-. \mf a-flat'( g a-flat) c,-. c'( b c) e-flat, e-flat' c, c' a-flat,! a-flat'! c, c' |
  g,-. g'( f-sharp g) c,-. c'( b c) e-flat, e-flat' c, c' g, g' c, c' |
  f-sharp,,-. f-sharp'( e f-sharp) c-. c'( b c) e-flat, \> e-flat' c, c' a, a' f-sharp,! f-sharp'! |
  g,8[ \p \tweak Y-offset #3 \breathe a16 a'] b, b' c, c' a, a' b, b' c, c' d, d' |
  b,16 \cresc b' c, c' d, d' e, e' c, c' d, d' e, e' f, f' |
  e8[ \f \breathe d,16 d'] c, c' b, b' c, \> c' b, b' a, a' g, g' |
  f,8 \mf f' f, f' f-sharp, f-sharp' f-sharp, f-sharp' g,-. g'( f-sharp g) g'-. g,,( f-sharp g) |
  c,2 r | \bar "|."
}
