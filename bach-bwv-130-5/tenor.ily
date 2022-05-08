\version "2.22.0"

\language "english"

tonic = g

tenor-measures-one-to-eighty-eight = \relative {
  \key \tonic \major
  \time 2/2

  \partial 2 r2 |
  R1*15

  #(define measures-sixteen-to-thirty-one #{
    \relative {
      r2 d'4 g |
      f-sharp4 e8 d c b g'4 |
      f-sharp4 e8 d r2 |

      R1*3

      r2 b8( a) b( g) |
      d'4 4 4 g |
      f-sharp4 e8 d r4 4 |
      g4 b, c8 d16 e c4 |
      a4 g8 f-sharp g a b c |
      d4 4 4 g |
      f-sharp4 e8 d g f-sharp g d |
      e4 d8 c a'4 c, |
      b8 a g a b c b c |
      a8 g f-sharp g a b c a |
    }
  #})

  <<
    { \measures-sixteen-to-thirty-one }
    {
      s1*12 |
      s2. s8( s) |
    }
  >>
  b8 a g a b c d e |

  f-sharp4 8 g a4 g8 f-sharp |
  e4 f-sharp8 g f-sharp4 e8 d |
  e4 a, f-sharp8 e f-sharp d |
  a'1~ |
  2 4 d |
  c-sharp4 b8 a g f-sharp d'4 |
  c-sharp4 b8 a d c-sharp d a |
  b4 a8 g e'4 g, |
  f-sharp8 a d e f-sharp g f-sharp g |
  e8 d c-sharp d e f-sharp g e |
  f-sharp8 e d e f-sharp e f-sharp d |

  c-sharp4 8 d e4 f-sharp8 g |
  g8 f-sharp e d f-sharp e d c-sharp |
  d8 f-sharp e g f-sharp2~ |
  8 g16 f-sharp e8 f-sharp16 d e2~ |
  4 d4 8 c-sharp b a |
  g'8 f-sharp16 e f-sharp8 a g f-sharp e f-sharp |
  d4 4 r2 |

  R1*3

  r2 a4 b |
  c4 b8 a e'4 f-sharp |
  g4 f-sharp8 e g f-sharp e d-sharp |
  e4 f-sharp8 g a f-sharp g e |
  f-sharp4 b, g8 f-sharp g a |
  b4 4 4 e |
  d-sharp4 c-sharp8 b e f-sharp g e |
  g8 f-sharp e d-sharp e f-sharp g e |
  c-sharp2~8 d-sharp b c-sharp |
  d-sharp2~8 e c-sharp d-sharp |
  e2~8 f-sharp d-sharp e |
  f-sharp8 e d-sharp e f-sharp4 b, |
  g'4 f-sharp8 e g f-sharp e d-sharp |
  e4 4 r2 |

  R1*3

  r2 e,4 f-sharp8 g |
  a8 g f-sharp e b'4 c-sharp8 d |
  e8 d c-sharp( b) f-sharp'4 4 |
  4 e8 d g e f-sharp g |
  a-sharp,4. b8 c-sharp d e c-sharp |
  d4. e8 f-sharp g a f-sharp |
  g4. f-sharp8 e d c-sharp d16 b |
  f-sharp'1~ |
  8 e d c-sharp b c-sharp d b |
  g-sharp4. a-sharp8 b c-sharp d e |
  a-sharp,4. b8 c-sharp d e f-sharp |
  g4 f-sharp8 e d( e) f-sharp( d) |
  b8 a-sharp16 b c-sharp4~8 b16 c-sharp d4~ |
  8 c-sharp16 d e4~8 d16 e f-sharp4~ |
  8 a g f-sharp e2~ |
  2^~8 c-sharp d e |
  f-sharp8 e f-sharp g c-sharp,4.( b8) |
  2 r |
}

tenor-measures-eighty-nine-to-one-hundred-twenty-six = \relative {
  R1*3

  \measures-sixteen-to-thirty-one
  b8 a g a b c b c |
  d4 8( e f-sharp g) a c, |
  b2 r |
  r4 e8( f e d) c b |
  c2 r |

  r2 d8( c) b a |
  c8 b a g d'4 g |
  f-sharp4 e8 d a'4 c, |
  b8 a b d g4. b,8 |
  a8 g a c f-sharp4. a,8 |
  g8 f-sharp g b e4 d8 c-sharp |
  d8 e f-sharp g a4 c,8 b |
  c2 8 d16 e d8 c |
  c8( b) a g b a g f-sharp |
  g8 b a c b2~ |
  8 c16 b a8 b16 g a2~ |
  8 g a b c d e f-sharp |
  g8 f-sharp16 e d8 e b4 a8 g |
  \partial 2 { g4 4 } |
}
