\version "2.22.0"

\include "settings.ily"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro con brio"

  \key c \major
  \time 12/8

  c''8-._\markup { \dynamic "ff" \italic "risoluto" } g-. e-. c-. r r e'-. c-. g-. e-. r r |
  g'8-. e-. c-. g-. e-. c-. g-. c-. e-. g-. c-. e-. |
  g8-. e-. c-. g-. e-. c-. g-. b-. d-. g-. b-. d-. |
  c8( g') e-. c-. g-. e-. c r r c-. e-. g-. |
  c8-. g-. e-. c-. r r e'-. c-. g-. e-. r r |
  g'8-. e-. c-. g-. e-. c-. g-. c-. e-. g-. c-. e-. |
  g8-. f-. d-. b-. g-. f-. d-. b-. g-. b-. d-. g-. |
  c8-. g-. e-. #(if (string=? bass-clef-name "bass^8") #{ \clef \bass-clef-name #}) c-. g-. e-. c4. r |

  #(if (string=? bass-clef-name "bass^8") #{ \clef "treble" #})
  \repeat unfold 2 {
    c''8( \> e) b( \! d) a( c) g( b) f( a) e( g) |
    d( f) c( e) b( d) c4.->( g4) r8 |
  }
  d''8( \> f) c( \! e) b( d) a( c) g( b) f( a) |
  e'8( \> g) d( \! f) c( e) b( d) a( c) g( b) |
  c8( \> e) g,( \! c) e,( g) f( a) d,( f) b,( d) |
  c8( \> e) g,( \! c) e,( g) c,4 r8 r4. |

  d''8( \p b) g-. g-. g-. g-. e'( c) g-. g-. g-. g-. |
  d'8( b) d-. e( c) a-. d( b) g-. c( a) f-sharp-. |
  g8( b) d-. d-. d-. d-. g,( c) e-. e-. e-. e-. |
  d8( b d) e( c a) d( b g) c( a f-sharp) |
  g8-. b-. d-. c-. a-. f-sharp'-. g-. d-. b-. c-. a-. f-sharp-. |
  g8( b) d-. c( a) f-sharp'-. g( d) b-. c( a) f-sharp-. |
  g8-. f-sharp-. g-. g,4.-^ g'8-. f-sharp-. g-. g-sharp,4.-^ |
  g'8-. f-sharp-. g-. a,4.-^ g'8-. f-sharp-. g-. b-flat,4.-^ |
  g'8-. f-sharp-. g-. b,4.-^ g'8-. f-sharp-. g-. c,4.-^ |
  g'8-. f-sharp-. g-. c-sharp,4.-^ g'8-. f-sharp-. g-. d4.-^ \< |
  \repeat unfold 6 { g8-. f-sharp-. } |
  g8-. \> f-sharp-. g-. a-flat-. g-. a-flat-. a-. g-sharp-. a-. b-. a-sharp-. b-. |

  c8-. \ff g-. e-. c-. r r e'-. c-. g-. e-. r r |
  g'8-. e-. c-. g-. e-. c-. g-. c-. e-. g-. c-. e-. |
  g8-. e-. c-. g-. e-. c-. g-. b-. d-. g-. b-. d-. |
  c8( g') e-. c-. g-. e-. c r r c-. e-. g-. |
  c8-. g-. e-. c-. r r e'-. c-. g-. e-. r r |
  g'8-. e-. c-. g-. e-. c-. g-. c-. e-. g-. c-. e-. |
  g8-. f-. d-. b-. g-. f-. d-. b-. g-. b-. d-. g-. |
  \repeat unfold 2 { c8-. g-. e-. c-. e-. g-. } |
  \repeat unfold 4 { c8-. g-. e'-. } |
  c8-. g'-. e-. c-. g-. e-. c-. c'-. g-. e-. c-. g-. |
  c,4 r8 r4. c''4 r8 r4. |
  c,1.\fermata | \bar "|."
}
