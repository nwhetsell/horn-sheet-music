\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Very quickly"

  \key c \major
  \time 4/4

  #(define measures-one-to-thirty-two #{
    \relative {
      \partial 8 g'8 \mf |
      g2:8 2:8 |
      c2. r8 g |
      g2:8 2:8 |
      e2. r8 g |
      g2:8 2:8 |
      e'8( d) c-. b-. c( b) a-. g-. |
      a8( g) f-. e-. f( e) d-. c-. |
      c2( b4) r8 g' |
      g2:8 2:8 |
      b2. r8 g |
      g2:8 2:8 |
      d'2. r8 g, |
      g2:8 2:8 |
      f'8( e) d-. c-. d( c) b-. a-. |
      b8( a) g-. f-. g( f) e-. d-. |
      g2( e4) r8 c' \< |
      c2:8 2:8 |
      g'2( \> f4) r8 c |
      c2:8 \< 2:8 |
      f2( \> e4) r8 g, |
      g2:8 \mf 2:8 |
      f'8( e) d-. c-. d( c) b-. a-. |
      b8( a) g-. f-. g( f) e-. d-. |
      e2( c4) r8 c' \< |
      c2:8 2:8 |
      b-flat8( \! c) e-. g-. f4. \> c8 |
      c2:8 \< 2:8 |
      c8( \! a) c-. f-. e4. \> \breathe 8 |
      e2:8 \mf 2:8 |
      g8( e) c-. g-. e'( c) g-. e-. |
      f'8( d) b-. g-. f( d) b-. g-. |
      <c, \tweak font-size #-2 c'>2. r8
    }
  #})

  \repeat volta 2 {
    \measures-one-to-thirty-two
  }

  \repeat volta 2 {
    g'8 \p |
    g2:8 2:8 |
    e-flat2. r8 g |
    g2:8 2:8 |
    c2. r8 g |
    g2:8 \< 2:8 |
    g'8( \f f) e-flat-. d-. e-flat( d) c-. b!-. |
    c8 \>( b-flat) a-flat-. g-. a-flat( g) f-. e-flat-. |
    e-flat2( \! d4) r8 g \p |
    g2:8 2:8 |
    b!2. r8 g |
    g2:8 2:8 |
    d'2. r8 g, |
    g2:8 \< 2:8 |
    a-flat'8( \f g) f-. e-flat-. f( e-flat) d-. c-. |
    d( c) b!-. \> a-flat-. g( f) e-flat-. d-. |
    e-flat2( c4) \p r8 e-flat |
    e-flat2:8 \< 2:8 |
    c'4.( \> a!8 b-flat4) \! r8 e-flat, |
    e-flat2:8 \< 2:8 |
    b-flat'4.( \> g8 a-flat4) \! r8 a-flat |
    a-flat2:8 \< 2:8 |
    f'4.( \> d8 e-flat4) \! r8 a-flat, \< |
    a-flat2:8 2:8 |
    e-flat'4.( \> c8 d-flat4) r8 c-sharp |
    c-sharp2:8 \mf 2:8 |
    c-sharp8^"Getting slower"( b-flat) g-. e-. c-sharp4. c'8 |
    c2:8 2:8 |
    c8( b-flat) g-. e-. c4. \breathe b'8 \pp |
    b2:8 2:8 |
    b!8( a-flat) f-. d-. b4. \ppp \breathe b'8 |
    b2:8_"Very slowly" 2:8 |
    b8( g) f-. d-. g,4 r8

    <>^\markup { \italic "a tempo" }
    \measures-one-to-thirty-two
  }
}
