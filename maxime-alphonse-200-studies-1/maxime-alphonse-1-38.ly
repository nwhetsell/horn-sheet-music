\version "2.22.0"

\include "../sf-accent.ily"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro vivo" 4=144

  \key b \minor
  \time 3/4

  #(define measures-one-to-six #{
    \relative {
      d''8-^ r8 8-^ r e-^ r |
      f-sharp4.\sf-accent r8 e d |
      c-sharp8-^ r8 8-^ r d-^ r |
      e4.\sf-accent r8 d c-sharp |
      b8 c-sharp d4. c-sharp8 |
      b8 d c-sharp b c-sharp b |
    }
  #})

  <>_\markup { \dynamic "f" \italic "pesante" }
  \measures-one-to-six
  a'8 g f-sharp4 r |

  #(define measures-eight-to-fourteen #{
    \relative {
      \measures-one-to-six
      \stemDown b'8 a-sharp b4 \stemNeutral r |
    }
  #})
  \measures-eight-to-fourteen

  \repeat volta 2 {
    \key b \major

    <>_\markup { \concat { \dynamic "p" " per la seconda volta" } } \f
    \repeat unfold 2 {
      f-sharp4.-> d-sharp8 g-sharp e |
    }
    f-sharp4 g-sharp8 \< a-sharp b4 |
    a-sharp8 \> g-sharp f-sharp e d-sharp c-sharp |
    b8 \< c-sharp d-sharp e f-sharp g-sharp \! |
    \repeat unfold 2 {
      f-sharp4.-> d-sharp8 g-sharp e |
    }
    f-sharp4 g-sharp8 \< a-sharp b4 |
    a-sharp8 \tweak to-barline ##f \> g-sharp f-sharp e d-sharp c-sharp |
    b2 \! r4 |
  }

  \key b \minor

  b'8-^ \mf r8 8-^ r c-sharp-^ r |
  d!4.\sf-accent r8 c-sharp b |
  \stemUp a8-^ r8 8-^ r b-^ \stemNeutral r |
  c-sharp4.\sf-accent r8 b a |
  g8 a b4. a8 |
  g8 b a g a g |
  f-sharp8 e f-sharp4 r |

  <> \f
  <<
    { \measures-eight-to-fourteen }
    { s2.*3 s2 s4 \ff \tempo "Rall." }
  >> \bar "|."
}
