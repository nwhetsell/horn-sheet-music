\version "2.22.0"

\include "settings.ily"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro"

  \key c \major
  \time 3/4

  \repeat volta 2 {
    g8_\markup { \dynamic "mf" \italic "sempre staccato" } c e b c g |
    c8 e g d-sharp e c |
    e8 \< g c f-sharp, g e |
    g8 \f c e b c g |
    a8 d f d-sharp e c |
    f,8 a d-natural! b c e, |
    d8 \mf f a f-sharp \> g d-sharp |
    e8 c b4 \! r |

    c8 \mf e g d-sharp e c |
    e8 g c f-sharp, g d-sharp |
    e8 \< a c g-sharp a e |
    a8 \f c e b c a |
    e'8 b c g-sharp a f-sharp |
    d'8 a-sharp b f-sharp g d-sharp |
    e8 b c e d f-sharp |
    g4 g, r |
  }
  \repeat volta 2 {
    g'8 \mf b d a-sharp \< b g |
    b d f c-sharp d b |
    d8 \f f <a \tweak font-size #-2 d,> e f c-sharp |
    d8 \> a-sharp b f-sharp g f |
    <<
      \new Voice {
        \voiceOne
        e8 c e g c g-sharp |
      }
      {
        \voiceTwo
        e8 \p \tweak Y-offset #-5 r s \cresc
      }
    >> \oneVoice
    a8 e f a d a-sharp |
    b8 f-sharp g b e b |
    c8 \f g-sharp a c f c-sharp |
    d8 a-sharp b d g f-natural! |
    e8 b c g-sharp a-natural! e |
    f8 a d a-sharp b g-natural! |
    c4 r r |

    g,8 \mf c e b c g |
    c8 e g d-sharp e c |
    e8 \< g c g-sharp a e |
    a8 \f c e b c e |
    f8 g-natural,! b d-sharp e c-natural! |
    f,8 a d-natural! b c e, |
    d8 f-natural! a f-sharp g g, |
    c4 \clef \bass-clef-name c, r |
  }
}
