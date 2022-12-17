\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro"

  \key c \major
  \time 4/4

  \override Hairpin.after-line-breaking = ##t
  \override Hairpin.to-barline = ##f

  \repeat volta 2 {
    c'16( \f e) g-. c-. e8 r e,16( g) c-. e-. g8 r |
    g,,16( g') b-. d-. g8 r g,,16( b) d-. g-. b8 r |
    g,16( \< c) e-. g-. c,( e) g-. c-. e,( g) c-. e-. g,( c) e-. g-. |
    f8 \! r c,16( \< f) a-. c-. f,( a) c-. f-. a,( c) f-. a-. |
    g8 \! r g,,16( \f b) d-. g-. b,( d) g-. b-. d,( g) b-. d-. |
    c8 e16( c) g( c) g-. e-. c4 r |
    c16( d-sharp) f-sharp-. a-. c8 r d-sharp,16( f-sharp) a-. c-. d-sharp8 r |
    a16( c) d-sharp-. f-sharp-. f-sharp,( a) c-. d-sharp-. d-sharp,( f-sharp) a-. c-. c,( d-sharp) f-sharp-. a-. |
    b,16( e) g-. b-. e8 r b,16( d-sharp) f-sharp-. b-. d-sharp8 r |
    e,16( g) b-. e-. g( e) b-. g-. e4 r |
    \repeat unfold 2 { e16( g) b-. e-. } \repeat unfold 2 { e,( a) c-. e-. } |
    \repeat unfold 2 { f-sharp,16( a) c-. d-. } \repeat unfold 2 { g,( b) d-. g-. } |
    c,,16( e) a-. c-. e8 r d,16( f-sharp) a-. d-. f-sharp8 r |
    g,,16( g') b-. d-. g( d) b-. g-. g,4 r |
  }

  g16( \mf b) d-. g-. b8 r b,16( d) g-. b-. d8 r |
  g,,16( \< b) d-. g-. b,( d) g-. b-. d,( g) b-. d-. g,( b) d-. g-. \! |
  g,,16( \mf c) e-. g-. c8 r c,16( e) g-. c-. e8 r |
  g,,16( \< c) e-. g-. c,( e) g-. c-. e,( g) c-. e-. g,( c) e-. g-. |
  f8 \! r g,16( \mf b) d-. f-. e8 r e,16( g-sharp) b-. d-. |
  c8 r c,16( e) g!-. b-flat-. a8 r g16( b-flat) c-sharp-. e-. |
  d8 r f,16( a) d-. f-. g,( b) d-. f-. g,,( g') b-. d-. |
  c,16( e) g-. c-. e( c) g-. e-. c4 r |

  g'16( \mf b-flat) c-sharp-. e-. g( e) c-sharp-. b-flat-. e( c-sharp) b-flat-. g-. c-sharp( b-flat) g-. e-. |
  d16( \< f) a-. d-. f8 r f,16( a) d-. f-. a8 \! r |
  f,16( \mf g) b-. d-. f( d) b-. g-. d'( b) g-. f-. b( g) f-. d-. |
  c16( \< e-flat) g-. c-. e-flat8 r e-flat,16( g) c-. e-flat-. g8 \! r |
  g,,16( \f c) e-flat-. g-. c,( e-flat) g-. c-. e-flat,( g) c-. e-flat-. g,( c) e-flat-. g-. |
  c,,16( e-flat) a-flat-. c-. e-flat8 r c,16( e-flat) f-sharp-. a-. c8 r |
  b,16( d) g-. b-. d( g,) b-. d-. f( d) b-. g-. f( d) b-. g-. |

  c16( e!) g-. c-. e8 r e,16( g) c e g8 r |
  f8 r c,16( f) a-. c-. f,( a) c-. f-. a,( c) f-. a-. |
  g8 r g,,16( b) d-. g-. b,( d) g-. b-. d,( g) b-. d-. |
  c8 r c,16( e) g-. c-. e4 r |
  d-sharp,16( e) g-sharp-. b-. d-sharp( b) g-sharp-. e-. d-sharp( e) a-. c-. e( c) a-. e-. |
  b16( \mf d-sharp) f-sharp-. b-. d-sharp8 r b,16( e) g-. b-. e8 r |
  g,,16( g') b-. d-. f8 r c,16( e) g-. c-. e8 r |
  f,16( a) d-. f-. a8 r g,,16( b) d-. g-. b8 r |
  \repeat unfold 2 { c,16( e) g-. c-. c,( e) a-. c-. c,( f) a-. c-. g,( g') b-. d-. | }
  c8 r g,16( \f c) e-. g-. c( g) e-. c-. e( g) c-. e-. |
  g16( e) c-. g-. e'( c) g-. e-. c'( g) e-. c-. g'( e) c-. g-. |
  <\tweak font-size #-2 c c,>4 r r2 | \bar "|."

  \revert Hairpin.after-line-breaking
  \revert Hairpin.to-barline
}
