\version "2.22.0"

\relative c'' {
  \language "english"

  \transposition f

  \once \override Score.MetronomeMark.padding = #3
  \tempo "Moderato"

  \key c \major
  \time 4/4

  #(define measures-one-to-four #{
    \relative {
      c8 \tweak X-offset #-2.5 \tweak Y-offset #-5 \f \tuplet 5/4 { c'32-. e-. g-. e-. c-. }
      c'8 \tuplet 5/4 { c,32-. e-. g-. e-. c-. }
      e'8 \tuplet 5/4 { c,32-. e-. g-. e-. c-. }
      c'8 \tuplet 5/4 { c,32-. e-. g-. e-. c-. } |

      g8  \tuplet 5/4 { g'32-. b-. d-. b-. g-. }
      b,8 \tuplet 5/4 { g'32-. b-. d-. b-. g-. }
      d8  \tuplet 5/4 { g32-.  b-. d-. b-. g-. }
      b,8 \tuplet 5/4 { g'32-. b-. d-. b-. g-. } |

      c,8 \tuplet 5/4 { c'32-. d-. e-. d-. c-. }
      f,8 \tuplet 5/4 { d'32-. e-. f-. e-. d-. }
      g,8 \tuplet 5/4 { c32-.  d-. e-. d-. c-. }
      g,8 \tuplet 5/4 { b'32-. c-. d-. c-. b-. } |

      c8  \tuplet 5/4 { c,32-. e-. g-. e-. c-. }
      e'8 \tuplet 5/4 { e,32-. g-. c-. g-. e-. }
      c4 r |
    }
  #})

  #(define measures-one-to-eight #{
    \relative {
      \measures-one-to-four

      c'8 \mf \tuplet 5/4 { c'32-. d-. e-. d-. c-. }
      d,8 % The 1st edition has e here.
             \tuplet 5/4 { c'32-. d-. e-. d-. c-. }
      g8     \tuplet 5/4 { c32-.  d-. e-. d-. c-. }
      e,8    \tuplet 5/4 { c'32-. d-. e-. d-. c-. } |

      g,8      \tuplet 5/4 { b'32-. c-. d-. c-. b-. }
      g'8      \tuplet 5/4 { b,32-. c-. d-. c-. b-. }
      e8       \tuplet 5/4 { a,32-. b-. c-. b-. a-. }
      f-sharp8 \tuplet 5/4 { c'32-. d-. e-. d-. c-. } |

      g8  \tuplet 5/4 { b32-.        c-. d-. c-. b-. }
      c,8 \tuplet 5/4 { a'32-.       b-. c-. b-. a-. }
      d,8 \tuplet 5/4 { g32-.        a-. b-. a-. g-. }
      d'8 \tuplet 5/4 { f-sharp,32-. g-. a-. g-. f-sharp-. } |

      g8 % The 1st edition has e here.
          \tuplet 5/4 { g32-. a-. b-. a-. g-. } g'8 r
      d,8 \tuplet 5/4 { g32-. a-. b-. a-. g-. } g'8 r |
    }
  #})

  % These measures are repeated in the 1st edition.
  % \repeat volta 2 {
    \measures-one-to-eight

    e,8 \f  \tuplet 5/4 { c-sharp'32-. d-. e-. d-. c-sharp-. }
    g8      \tuplet 5/4 { c-sharp32-.  d-. e-. d-. c-sharp-. }
    b-flat8 \tuplet 5/4 { c-sharp32-.  d-. e-. d-. c-sharp-. }
    g8      \tuplet 5/4 { c-sharp32-.  d-. e-. d-. c-sharp-. } |

    f-sharp,8 \tuplet 5/4 { c-natural'!32-. d-. e-. d-. c-. }
    d,8       \tuplet 5/4 { a'32-. b-. c-. b-. a-. }
    g,8       \tuplet 5/4 { b'32-. c-. d-. c-. b-. }
    b,8       \tuplet 5/4 { g'32-. a-. b-. a-. g-. } |

    c,8 \tuplet 5/4 { a'32-. b-. c-. b-. a-. } e'8 r
    d,8 \tuplet 5/4 { f-sharp32-. g-. a-. g-. f-sharp-. } d'8 r |

    g,,8 \tuplet 5/4 { g'32-. a-. b-. a-. g-. }
    g'8  \tuplet 5/4 { g,32-. a-. b-. a-. g-. }
    g'4 r |
  % }

  % The Gumpert edition repeats previous measures; the 1st edition is almost
  % totally different.

  \measures-one-to-eight
  \measures-one-to-four

  % g,,8 \p \tuplet 5/4 { g'32-. a-. b-flat-. a-. g-. }
  % g'8     \tuplet 5/4 { g,32-. a-. b-flat-. a-. g-. }
  % g,4 r |
  %
  % g8      \tuplet 5/4 { g'32-. a-. b!-. a-. g-. }
  % f'8     \tuplet 5/4 { g,32-. a-. b-.          a-. g-. }
  % e-flat8 \tuplet 5/4 { c'32-. d-. e-flat-.     d-. c-. }
  % c,8 r |
  %
  % <> \f
  % \repeat unfold 2 {
  %   f8 \tuplet 5/4 { a32-.      c-. e-flat-. c-. a-. }
  %   f8 \tuplet 5/4 { b-flat32-. d-. f-.      d-. b-flat-. }
  % } |
  %
  % f-sharp8     \tuplet 5/4 { c'32-.      d-.      e-flat-. d-.      c-. }
  % g8           \tuplet 5/4 { b-flat32-.  c-.      d-.      c-.      b-flat-. }
  % e-natural,!8 \tuplet 5/4 { b-flat'32-. c-.      d-.      c-.      b-flat-. }
  % f-sharp8     \tuplet 5/4 { a32-.       b-flat-. c-.      b-flat-. a-. } |
  %
  % d8  \tuplet 5/4 { g,32-. b-flat-. d-. b-flat-. g-. }
  % f'8 \tuplet 5/4 { g,32-. a-.      b-. a-.      g-. }
  % c8 c,32-. e-. g-. e-.
  % c8 r |
  %
  % \repeat unfold 2 {
  %   c8  \tuplet 5/4 { e32-.  g-. b-flat-. g-. e-. }
  %   g'8 \tuplet 5/4 { e,32-. g-. b-flat-. g-. e-. }
  % } |
  %
  % c8  \tuplet 5/4 { f32-.  a-. c-. a-. f-. }
  % c8  \tuplet 5/4 { b'32-. d-. f-. d-. b-. }
  % c,8 \tuplet 5/4 { g'32-. c-. e-. c-. g-. }
  % c,8 r |
  %
  % f8       \tuplet 5/4 { a32-. d-.       f-. d-.       a-. }
  % e8       \tuplet 5/4 { a32-. c-sharp-. e-. c-sharp-. a-. }
  % f8       \tuplet 5/4 { a32-. d-.       f-. d-.       a-. }
  % f-sharp8 \tuplet 5/4 { a32-. c-sharp-. d-. c-sharp-. a-. } |
  %
  % g,8 \tuplet 5/4 { g'32-. a-. b-. a-. g-. }
  % g,8 \tuplet 5/4 { b'32-. c-. d-. c-. b-. }
  % g,8 \tuplet 5/4 { b'32-. d-. f-. d-. b-. }
  % g,8 \tuplet 5/4 { b32-.  d-. f-. d-. b-. } |
  %
  % R1\fermata |
  %
  % c,8 \tuplet 5/4 { c'32-. e-. g-. e-. c-. }
  % c'8 \tuplet 5/4 { c,32-. e-. g-. e-. c-. }
  % e'8 \tuplet 5/4 { c,32-. e-. g-. e-. c-. }
  % c'8 \tuplet 5/4 { c,32-. e-. g-. e-. c-. } |
  %
  % g8  \tuplet 5/4 { g'32-. a-. b-. a-. g-. }
  % d'8 \tuplet 5/4 { g,32-. a-. b-. a-. g-. }
  % f'8 \tuplet 5/4 { g,32-. a-. b-. a-. g-. }
  % d'8 \tuplet 5/4 { g,32-. a-. b-. a-. g-. } |
  %
  % c,8 \tuplet 5/4 { c'32-. d-. e-. d-. c-. }
  % f,8 \tuplet 5/4 { d'32-. e-. f-. e-. d-. }
  % g,8 \tuplet 5/4 { c32-.  d-. e-. d-. c-. }
  % g,8 \tuplet 5/4 { b'32-. c-. d-. c-. b-. } |
  %
  % c8 \tuplet 5/4 { c,32-. d-. e-. d-. c-. }
  % e'8 \tuplet 5/4 { e,32-. g-. c-. g-. e-. }
  % c4 r |
  %
  % g8   \tuplet 5/4 { g'32-. a-. b-. a-. g-. }
  % f'8  \tuplet 5/4 { g,32-. a-. b-. a-. g-. }
  % c,,8 \tuplet 5/4 { c'32-. e-. g-. e-. c-. }
  % e'8  \tuplet 5/4 { c,32-. e-. g-. e-. c-. } |
  %
  % g8  \tuplet 5/4 { b'32-. c-. d-. c-. b-. }
  % g,8 \tuplet 5/4 { c'32-. d-. e-. d-. c-. }
  % g,8 \tuplet 5/4 { g'32-. a-. b-. a-. g-. }
  % g'8 r |
  %
  % c,,,8     \tuplet 5/4 { e'32-. g-. b-flat-. g-. e-. }
  % c,8       \tuplet 5/4 { c'32-. e-. g-.      e-. c-. }
  % c,8       \tuplet 5/4 { c'32-. f-. a-.      f-. c-. }
  % f-sharp,8 \tuplet 5/4 { a'32-. c-. e-flat-. c-. a-. } |
  %
  % g,8  \tuplet 5/4 { g'32-. c-. e-. c-. g-. }
  % g'8 r
  % g,,8 \tuplet 5/4 { g'32-. b-. d-. b-. g-. }
  % g'8 r |
  %
  % e,8 \tuplet 5/4 { c'32-. e-. g-. e-. c-. }
  % c,8 \tuplet 5/4 { g'32-. c-. e-. c-. g-. }
  % d8  \tuplet 5/4 { b'32-. d-. f-. d-. b-. }
  % g,8 \tuplet 5/4 { g'32-. b-. d-. b-. g-. } |
  %
  % c,8 \tuplet 5/4 { c'32-. e-. g-. e-. c-. }
  % e,8 \tuplet 5/4 { g32-.  c-. e-. c-. g-. }
  % d8  \tuplet 5/4 { b'32-. d-. f-. d-. b-. }
  % g,8 \tuplet 5/4 { g'32-. b-. d-. b-. g-. } |
  %
  % c,,8 \tuplet 5/4 { c'32-. e-. g-. e-. c-. }
  % e'8  \tuplet 5/4 { c,32-. e-. g-. e-. c-. }
  % c,4 r |

  \bar "|."
}
