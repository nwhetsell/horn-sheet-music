\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Andante" 4.=52

  \key f \major
  \time 6/8

  #(define measures-one-to-five #{
    \relative {
      f'8 8 g a8 8 d |
      c4( b16 d) c4 a8 |
      f8 8 g a8 8 b-flat! |
      a4( g16 f) g4 \breathe d8 |
      g8 8 a b-flat8 8 e-flat |
    }
  #})

  \partial 8 { c'8 \mf } |
  \measures-one-to-five

  d'4(
  b-flat16 % This should probably be c16 to match measure 38.
  e-flat) d4 b-flat8 |

  g8 8 a b-flat8 8 c |
  b-flat4( a16 g) a4 \breathe c8 \mf #(make-music 'CrescendoEvent 'span-direction START 'span-type 'text 'span-text "cresc. poco a poco") |

  c8 a f d4 c8 |
  b8 d f a4 c8 |
  c8 a f d'4 c8 |
  b8 d f, a4 \breathe e'!8 \f #(make-music 'CrescendoEvent 'span-direction START 'span-type 'text 'span-text "cresc. poco a poco") |
  e8 c a f4 e8 |
  d8 f a c4 e8 |
  e8 c a f'4 e8 |
  d8 f a, c4 \breathe c8 \ff |

  c8 8 d->~8 c b |
  d4( c8~8) r e |
  e8 8 f~8 e d |
  f4( e8~8) r e \mf |
  f8 8 8 c4 8 |
  d8 8 8 a4 8 |
  f8 8 8 d4 8 |
  a'4. r4 c8 \ff \cresc |

  c8 8 d->~8 c b |
  d4( c8~8) r f |
  f8 8 g->~8 f e |
  g4( f8~8) r f \f |
  e8 8 8 e-flat4 8 |
  d8 8 8 d-flat4 8 |
  c8 8 8 b-flat4 8 |
  a4. r4 c,8 \mf |

  \measures-one-to-five
  d'4( c16 e-flat) d4 \breathe e!8 |
  g8 8 f c8 8 b-flat |
  a4( g16 f) f4. | \bar "|."
}
