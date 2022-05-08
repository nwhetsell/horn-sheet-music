\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Moderato" 4=76

  \key c \major
  \time 4/4

  c''8-. \f g-. e-. c-. c'16-. g-. e-. g-. c,4 \breathe |
  e8-. \p g-. c-. e-. f,-. a-. d-. f-. |
  e8-. c4-> e8-. d-. b4-> d8-. |
  c8-> g16-. e-. f8-> a16-. f-. e8-. c'16-. g-. e-. g-. e-. g-. |
  f8-> d16-. e-. f8-. a16-. f-. e8-. d16-. e-. f8-. b16-. f-. |
  e8[ \cresc \tweak Y-offset #2.25 \breathe c16 d] e c d e f-sharp8 d16 e f-sharp d e f-sharp |
  g8[ \f \breathe d'16 e] f-sharp d e f-sharp g2 \breathe |

  g,8-> \p b4-> d8->~8 b16-. g-. c8-. c,-. |
  g'8-> b16-. d-. g,8-> c16-. e-. g,8-> b16-. d-. g,8-. g,-. |
  g'8-> b4-> d8->~8 b16-. g-. c8-. c,-. |
  g'8-> b16-. d-. g,8-> c16-. e-. g,8-> b16-. d-. g,8-.[ \breathe g'-.] |

  g8( a,4->) g'8-. 8( f4->) 8-. |
  f8( g,4->) f'8-. 8( e4->) \breathe 8-. |
  e8( f-sharp,4->) e'8-. 8( d4->) 16-. c-. |
  b8-> g-. c-. g-. b[ \tweak Y-offset #3.5 \breathe g,16 \< b] d g b d \! |
  c8-^ g,16 \< c e-flat g c e-flat \! d8-^ g,,16 \< d' g b d f |
  e-flat8-> \f c16-. d-. e-flat-. c-. d-. c-. e-flat8-> c16-. d-. e-flat-. c-. d-. c-. |
  g'2 r4 r16 g,-. \p a-. b-. |

  c16-. 16-. g8-. e!16-. 16-. c8-. c'16-. g-. e-. g-. c,4 \breathe |
  e8-> g16-. 16-. c8-> e16-. 16-. f,8-> a16-. 16-. d8-> f16-. 16-. |
  e8-. c8->~8 e16-. 16-. d8-. b8->~8 d16-. 16-. |
  c8-> g'16-. e-. f8-. d16-. b-. g8-> f'16-. d-. b-. d-. g,16-. f-. |
  e8-> e'16-. c-. a8-. c16-. a-. f8-> d16-. f-. b8 d16-. b-. |
  c8->[ \tweak Y-offset #4.5 \breathe c,16 \< e] g e g c e8 e,16 g c g c e |
  g8 \f \> e16 g c, e g, c c,2 \! | \bar "|."
}
