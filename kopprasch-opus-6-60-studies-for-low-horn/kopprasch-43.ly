\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegretto"

  \key e-flat \major
  \time 6/8

  \repeat volta 2 {
    e-flat'8_\markup { \dynamic "mf" \italic "espressivo" }( g) b-flat-. b-flat-. b-flat-. b-flat-. |
    c8( b-flat) b-flat-. a( b-flat) b-flat-. |
    b-flat8-. \< c-. d-. \acciaccatura f e-flat-. d-. e-flat-. |
    g8-. \> f-. e-flat-. d-. c-. b-flat-. |
    c8-. \< d-. e-. \acciaccatura g f-. e-. f-. |
    a-flat!-. \> g-. f-. e-flat!-. d-. c-. \! |
    b-flat4 \breathe r8 b-flat( \p a)
      c-. % The 1st edition has b-flat here.
      |
    b-flat8( % The 1st edition has c here.
      f) g-. a-flat!( f) d-. |

    e-flat8( g) b-flat-. b-flat-. b-flat-. b-flat -.|
    c8( b-flat) b-flat-. a( b-flat) b-flat-. |
    b-flat8-. \< c-. d-. \acciaccatura f e-flat-. d-. e-flat-. |
    g8-. \> f-. e-flat-. d-. c-. b-flat-. \! |
    a8-. b-flat-. b-. c-. c-sharp-. d-. |
    e-flat8-. d-. c-. b-flat-. a-. g-. |
    f4 r8 f( \f b-flat) d-. |
    f( d) b-flat-. \acciaccatura b-flat a-. g-. a-. |

    % These measures are repeated in the 1st edition.
    % \repeat unfold 2 {
      b-flat-. \< c-. c-sharp-. d-. e-flat-. e-. |
      f-. \> e-flat!-. d-. c-natural!-. b-flat-. a-. \! |
    % }

    b-flat( d) c-. b-flat( d) c-. |
    b-flat4 r8 r4. |
  }
  \acciaccatura c8 b-flat-. \p a-. b-flat-. d-. a-. b-flat-. |
  f'8-. e-flat-. d-. c-. d-. b-flat-. |
  \acciaccatura d8 c-. \cresc b-. c-. e-flat-. b-. c-. |
  g'8-. f-. e-flat-. d-. e-flat-. c-. |
  \acciaccatura e-flat8 d-. \f c-sharp-. d-. f-. e-. f-. |
  a-flat8-. f-. e-flat!-. d-. c-. b-flat-. |
  e-flat4 r8 \acciaccatura f e-flat-. d-. e-flat-. |
  g-flat8( \> e-flat) c-. e-flat( c) a-. |
  b-flat8( \p d) f-. f-. f-. f-. |
  g-flat8( e-flat) c-. e-flat( c) a-. |
  b-flat4 r8 \acciaccatura c b-flat-. a-. b-flat-. |
  c8( a-flat!) f-. a-flat( f) d-. |

  e-flat8( \mf g) b-flat-. b-flat-. b-flat-. b-flat-. |
  c8( b-flat) b-flat-. a( b-flat) b-flat-. |
  b-flat8-. \< c-. d-. \acciaccatura f e-flat-. d-. e-flat-. |
  g8-. \> f-. e-flat-. d-. c-. b-. |
  c8-. \f d-. e-. f-. g-. a-flat-. |
  b-flat,8-. c-. d-. e-flat!-. f-. g-. |
  a-flat,8-. b-flat-. c-. d-. e-flat-. f-. |
  g,8-. a-flat-. b-flat-. c-. d-. e-flat-. |
  f4 \breathe r8 f-. g-. a-flat-. |
  d,8-. e-flat-. f-. b-flat,-. c-. d-. |
  e-flat4 d8 d-flat-. \> c-. c-flat-. |

  b-flat8-. a-. a-flat-.
    % The 1st edition has:
    %   g f e-flat
    % and the Gumpert edition has:
    %   g g f
    % Neither ends the chromatic scale that starts in the previous measure.
    g-. g-flat-. f-.
    \! |

  r8 e-. \< f-. f-sharp-. g-. a-flat-. |
  a8-. b-flat-. b-. c-. c-sharp-. d-. \! |
  e-flat-. g-. f-. e-flat-. b-flat-. g-. |
  e-flat4 r8 r4. | \bar "|."
}
