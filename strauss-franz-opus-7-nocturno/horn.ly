\version "2.24.0"

source-url = "https://imslp.org/wiki/Nocturno%2C_Op.7_(Strauss%2C_Franz)"
\header {
  composer-last-name = "Strauss"
  composer-first-name = "Franz"
  title = "Nocturno"
  opus = "Op. 7"
  instrument = "Horn in F"
}

\include "../titling.ily"
\include "settings.ily"

\pointAndClickOff

\layout {
  \context {
    \Score
    skipBars = ##t
    \override BreathingSign.Y-offset = #3
    #(if preserve-line-breaks? #{
      \override NonMusicalPaperColumn.line-break-permission = ##f
    #})
  }
}

\score {
  \new Staff <<
    \new Voice \relative {
      \language "english"

      \transposition f

      \key a-flat \major
      \time 4/4

      \once \override Score.MetronomeMark.padding = #4
      \tempo "Andante quasi Adagio"

      R1

      a-flat'2^\markup { \center-align \italic "dolce" }( g8 \< a-flat d-flat c) |
      c4.( \> b-flat8 a-flat4) \! \breathe e-flat( |
      e-flat'4 g,) b-flat8( \< a-flat g a-flat) |
      b-flat2. \> e-flat,4~ \! |
      e-flat4. \parenthesize \breathe a-flat,8( \< c e-flat a-flat c) |
      c4.( \> b-flat8 a-flat4) \< \breathe a-flat |
      g8( \mf e-flat' d c) b4( \appoggiatura { c16 b } a8 b) |
      c2. r4 |
      r4 e-flat4\( \pp d-flat!8 c b-flat a( |
      c4 \< b-flat2)\) \parenthesize \breathe f'4~( \! |
      f4 g,) a-flat8([ \appoggiatura { b-flat32 a-flat } g16 a-flat] d-flat8 c) |
      b-flat2~8 \breathe b-flat( \< \acciaccatura d c b-flat) |
      b-flat2~ \tuplet 3/2 4 { \once \tupletDown b-flat8[ \tweak Y-offset #4 \breathe a( b-flat] d c b-flat) } |
      b-flat8( \f g' d e-flat) b16( c g a-flat b, c g' f) |
      e-flat8 r8 f-sharp( \< g b-flat4. \> d,8) \! |
      e-flat2 r |
      a-flat2( \p g8 \< a-flat d-flat c) |
      c4.( \> b-flat8 a-flat4) \! \breathe e-flat |
      b-flat'4.( g8 a-flat16-.) \breathe e-flat-.( \< f-. g-. a-flat-. b-flat-. c-. d-flat-.) \! |
      e-flat4. b8 c4 \breathe c~ |
      c8 \breathe e,( g b-flat d-flat16 \< c b c b c \acciaccatura e-flat8 d-flat16 c) |
      f4. \f \breathe g8 \tuplet 3/2 4 { a-flat( e f c d-flat b-flat) }
      a-flat4~16 \breathe e-flat16( d e-flat c'4. b-flat8) |
      a-flat2 r |

      R1
      r2 r4 e-flat( \p |
      e-flat'2.) c,4( |
      c'2.) r4 |
      R1*3

      f,4~_\markup { \dynamic "ff" \italic "più animato e marcato" } f16 g-. a-flat-. b-flat-. c4 \breathe f~->( |
      f4. d-flat8 b-flat4) \breathe \tuplet 3/2 { g4( f8) } |
      e8 g'4->( e8 c4) \tuplet 3/2 { g8( a-flat b-flat) } |
      a-flat4~16 b-flat( b c) f,8 r f4( |
      a-flat8^\markup { \italic "risoluto" } g f e f) \breathe c( f a-flat |
      c b-flat a-flat g a-flat) r f4 |
      a8. f16 e( f) a-. c-. f4.( e-flat8) |
      e-flat4( d-flat2) \breathe c4->-\markup { \right-align \italic "accel." } |
      b-flat-> a-flat-> g-> \shape #'((0 . 0) (0 . -0.5) (0 . -0.5) (0 . 0)) Slur f8[( \appoggiatura { g32 f } e16 f)] |

      \tempo "Tempo I"
      g2 r4 g \pp |
      g2.( a8. b16 |
      c2 g4) \breathe g( |
      d'4. \< b8 \> c4) r \! |
      r2 r4 c~ \mf |
      c~16 \< a-flat16-.( b-flat-. b-. c4) \breathe f |
      g-flat8-.( \ff d-flat-. b-flat-. g-flat-. d-flat-. b-flat-.) g-flat( \> g-flat') \! |
      g-flat \p r f4~( f8 a-flat g f) |
      c2 \breathe e8\(( \< f) a-flat-. c-.\) |
      d-flat2 \> \breathe e,4~^\markup { \combine
        \italic "rit."
        \transparent "p" % This aligns the baselines of “rit.” and “a tempo”.
      }( \< e8. f16) \! |
      f2^\markup { \italic "a tempo" } r |

      R1*6
      R1^\markup { \combine \italic "rit." \transparent "p" }
      R1^\markup { \italic "a tempo" }
      a-flat2^\markup { \italic dolce }( g8 \< a-flat d-flat c) |
      c4.( \> b-flat8 \! a-flat4) \breathe e-flat( |
      e-flat'4 \< g,) b-flat8( a-flat g a-flat) |
      b-flat2. \> \breathe e-flat,4~ \! |
      e-flat4. a-flat,8( \< c e-flat a-flat c) |
      c4.( \> b-flat8 a-flat4) \! \breathe c |
      b-flat4( \tweak minimum-length #4 \< c8[ \mf \appoggiatura { d32 c b c } d16 \< e-flat] e-flat,4) g8( f) |
      e-flat2 \> r \! |
      e4( \pp g8 \< b-flat d-flat c b c) \! |
      f2( c4) \breathe c( \mf |
      d-flat4) a-flat-> \< b-flat-> b-> \! |
      c2 r4 g \ff |
      d'4.( b8 c4) r |
      r2 r4 e-flat!-> \ff |
      a-flat4.-> e-flat8( c a-flat e-flat c) |
      b-flat8 r d-flat'4->~8 e16( \> f e-flat d-flat c b-flat) |
      a-flat4~ \mf a-flat16[ \parenthesize \breathe e-flat16( d e-flat] c'4. b-flat8) |
      a-flat2 r |

      c2.( \p e-flat4~ |
      e-flat2 d4) r |
      b-flat2~( b-flat4 \< c8 d-flat!)
      d-flat2( \> c4) \! r |
      c-flat2( \< b-flat4 a-flat |
      a-flat2) \> \breathe e-flat2~( \! |
      e-flat2 f4 g) |
      a-flat2 r |
      e-flat2( f4 \< g |
      a-flat2) \> r \! |
      e-flat1^\markup { \combine \italic "rit." \transparent "p" } |
      <>^\markup { \italic "a tempo" }_\markup { \dynamic "pp" }
      \repeat unfold 4 {
        <<
          { a-flat,4.( g8) }
          { s4*2/3 \tweak shorten-pair #'(0 . -0.75) \< s \tweak shorten-pair #'(0.75 . -1.5) \> s \! }
        >>
      } |
      a-flat2 \clef \bass-clef-name a-flat,2~ |
      a-flat4 r r2\fermata | \bar "|."
    }

    #(if preserve-line-breaks? #{ \new Voice {
      s1*6 \break
      s1*5 \break
      s1*4 \break
      s1*5 \break
      s1*4 \break
      s1*9 \break
      s1*3 \break
      s1*4 \break
      s1*5 \break
      s1*4 \break
      s1*11 \break
      s1*4 \break
      s1*3 \break
      \repeat unfold 2 { s1*4 \break }
      s1*3 \break
      \repeat unfold 2 { s1*5 \break }
    } #})
  >>
}

\bookpart {
  \paper {
    bookTitleMarkup = ##f
    scoreTitleMarkup = ##f
    evenHeaderMarkup = ##f
    oddHeaderMarkup = \evenHeaderMarkup
  }
  \colophon
}
