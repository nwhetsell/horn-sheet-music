\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Adagio" 2=66

  \key b-flat \major
  \time 2/2

  #(define measures-one-to-four #{
    \relative {
      e-flat''1( |
      c1 |
      f1 |
      d1) \breathe |
    }
  #})

  #(define measures-one-to-eight #{
    \relative {
      <> \p
      \measures-one-to-four
      c''1( |
      f,1 |
      d'1 |
      b-flat1) |
    }
  #})

  \measures-one-to-eight \breathe
  f''1( |
  d1 |
  g1 |
  e-flat1) \breathe |
  \measures-one-to-four \bar "||"

  \tempo "Allegro"
  \time 4/4

  b-flat,8-. d-. f-. d-. b-flat'-. 8-. 8-. 8-. |
  b-flat4->( a2) r4 |
  f8-. a-. c-. a-. e-flat'-. 8-. 8-. 8-. |
  e-flat4->( d2) r4 |
  d8 f d b-flat a f a c |
  b-flat8 f d b-flat f'2 \breathe |
  d'8 f d b-flat a f a c |
  b-flat8 f c' f, d'4. r8 |

  e-flat8-> b-flat g e-flat b-flat e-flat g b-flat |
  e-flat4.-> b-flat8-. g4.-> e-flat8-. |
  d'8-> b-flat f d b-flat d f b-flat |
  d4.-> b-flat8-. f4.-> d8-. \breathe |
  c8 g c e-flat g c e-flat d |
  c4. \< d8 e-flat4. e8 |
  f8( g) \> e-flat c b-flat2~( |
  b-flat2 a4.) \! r8 |

  b-flat,8 \mf \cresc d f d b-flat'-. 8-. 8-. 8-. |
  d,8 f b-flat f d'-. 8-. 8-. 8-. |
  f,8-. a-. c-. a-. f'-. 8-. 8-. 8-. |
  f,8-. b-flat-. d-. b-flat-. f'-. 8-. 8-. 8-. |
  f2-> \! r | \bar "||"

  \tempo "Adagio (1º Tempo)"
  \time 2/2
  <<
    { \measures-one-to-eight \bar "|." }
    { s1*7 s1\fermata }
  >>
}
