\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro con spirito"

  \key c \major
  \time 3/4

  \repeat volta 2 {
    c'16( \f g) c-. e-. g( c,) e-. g-. c( g) c-. e-. |
    g16( e) c-. g-. e'( c) g-. e-. c'( g) e-. c-. |
    f'16( d) b-. g-. f-sharp( g) b-. d-. f!( d) b-. g-. |
    f!16( d) b-. g-. f-sharp( g) b-. d-. f!( d) b-. g-. |

    <<
      {
        \voiceOne
        c16( g) c-.
      }
      \new Voice {
        \voiceTwo
        c8 r16
      }
    >> \oneVoice
    e-. g( c,) e-. g-. c( g) c-. e-. |

    g16( e) c-. g-. e'( c) g-. e-. c'( g) e-. c-. |
    f'16( d) b-. g-. f-sharp( g) b-. d-. f!( d) b-. g-. |
    f!16( d) b-. g-. f-sharp( g) b-. d-. f!( d) b-. g-. |
    c8 \mf e'16-. d-. c( g) e-. c-. f'( d) b-. g-. |
    c8 e16-. d-. c( g) e-. c-. f'( d) b-. g-. |
    c16( g) e'-. d-. c-. b-. a-. g-. f-. e-. d-. c-. |
    b16-. c-. d-. e-. f-. g-. a-. b-. c-. d-. e-. f-. |
    g16( e) c-. g-. f-sharp( g) c-. e-. g( e) c-. g-. |
    f-natural'!16( d) b-. g-. f-sharp( g) b-. d-. f!( d) b-. g-. |
    e'16( c) g-. e-. f'( d) b-. f-. e'( c) a-. f-sharp-. |
    d'16( g,) f-sharp-. g-. b( g) b-. d-. g4 |
  }

  g16( \f d) b-. g-. \repeat unfold 2 { f-sharp( g) b-. d-. g16( d) b-. g-. } f-sharp'( d) c-. a-. |
  f'16( d) b-. g-. \repeat unfold 2 { f-sharp( g) b-. d-. f( d) b-. g-. } e'( c) g-. e-. |
  e'16( b) g-sharp-. e-. d-sharp( e) g-sharp-. b-. e( b) g-. e-. |
  e'16( c) a-. e-. d-sharp( e) a-. c-. e( c) a-. e-. |
  f'16( d) a-. f-. b( g) f-. d-. c'( g) e-. c-. |
  g'16( b,) d-. g-. b( g) d-. b-. g4 |

  c16( \mf g) c-. e-. g( c,) e-. g-. c( e,) g-. c-. |
  e16( g,) c-. e-. g( e) c-. b-flat-. g( e) c-. e-. |
  f16( \cresc c) f-. a-. c( f,) a-. c-. f( a,) c-. f-. |
  a8[ \f r16 g-.] f-. e-. d-. c-. b-. a-. g-. f-. |
  e16-. d-. c-. d-. e-. f-. g-. a-. b-. c-. d-. e-. |
  f16( d) b-. g-. f-sharp( g) b-. d-. e( c) g-. e-. |
  f-natural'!16( d) b-. g-. f-sharp( g) b-. d-. e( c) g-. e-. |
  d'16( a) f!-. d-. c'( g) e-. c-. b'( g) f-. d-. |

  c8[ r16 e-.] \mf g( e) c-. g-. f'( d) b-. g-. |
  e'16( c) e-. g-. c( g) e-. c-. b'( g) f-. d-. |

  % These measures (which are the same as the previous two measures) are not in
  % the 1st edition.
  c8[ r16 e-.]     g( e) c-. g-. f'( d) b-. g-. |
  e'16( c) e-. g-. c( g) e-. c-. b'( g) f-. d-. |

  <<
    {
      \voiceOne
      c16( g) c-.
    }
    \new Voice {
      \voiceTwo
      c8 r16
    }
  >> \oneVoice
  e-. g( e) c-. g-. f'( d) b-. g-. |

  e'16( c) e-. g-. c( g) e-. c-. b'( g) f-. d-. |
  c16( \< g) c-. e-. g( c,) e-. g-. c( g) c-. e-. |
  c4 \f c, r | \bar "|."
}
