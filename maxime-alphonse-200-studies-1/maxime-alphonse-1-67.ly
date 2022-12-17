\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Lento" 4.=48

  \key g \minor
  \time 12/8

  #(define measures-one-to-three #{
    \relative {
      g'8-- \p 8-- c-- d-- 8-- e-flat-- d4-- c16-- b-flat-- c4.-- \> |
      g8-- \! 8-- c-- d-- 8-- e-flat-- d4-- c16-- b-flat-- c4-- \> 8-- \! | \tweak X-offset #0.5 \breathe
      d8-- 8-- e-flat-- f4-- d16-- c-- b-flat8-- 8-- c-- d4-- b-flat16-- a-- |
    }
  #})

  \measures-one-to-three
  g'4-> \< b-flat8-^ a4-> c8-^ b-flat4-> d8-^ c4-> e-flat8-^ |

  d4.~ \f 8 e-flat-- f-- c4.->~8 d-- e-flat-- |
  b-flat4.->~8 c-- d-- a-- b-flat-- c-- g-- a-- b-flat-- |
  d,8--[ \tweak Y-offset #2.5 \breathe e-- f-sharp--] 8. g16 a8-. 8-- b-flat-- c-- 8.-> d16 e-flat!8-. |
  e-flat8-> d c e-flat-> d c d-> c b-flat d-> c b-flat |
  c8-> b-flat a c-> \> b-flat a \tempo "Rall." b-flat-- a-- g-- a-- g-- f-sharp-- \tweak X-offset #0.5 \breathe | \bar "||"

  \tempo "1º Tempo"
  \measures-one-to-three
  g4 b-flat8-^ g4-> d'8-^ g,4 b-flat8 g4 d'8 |
  g,1. | \bar "|."
}
