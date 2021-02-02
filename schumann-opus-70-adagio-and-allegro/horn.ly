\version "2.22.0"

source-url = "https://imslp.org/wiki/Adagio_and_Allegro%2C_Op.70_(Schumann%2C_Robert)"
\header {
  composer-last-name = "Schumann"
  composer-first-name = "Robert"
  title = "Adagio and Allegro"
  opus = "Op. 70"
  instrument = "Horn in F"
}

\include "../titling.ily"
\include "settings.ily"

\pointAndClickOff

\layout {
  \accidentalStyle modern
  \set Score.markFormatter = #format-mark-alphabet
  \set Score.skipBars = ##t
  \context {
    \Score
    \override Hairpin.after-line-breaking = ##t
    #(if preserve-line-breaks? #{
      \override NonMusicalPaperColumn.line-break-permission = ##f
    #})
  }
}

\score {
  \new Staff <<
    \new Voice \relative {
      \language "english"

      \key e-flat \major
      \time 4/4

      \once \override Score.MetronomeMark.padding = #4
      \tempo \markup {
        \override #'(baseline-skip . 2)
        \left-column {
          "Langsam, mit innigem Ausdruck"
          \normal-text \tiny "(Slowly, with intimate expression)"
        }
      }

      b-flat'2.^\markup { \italic "molto legato" }( \p \< b4 |
      d4 \> c2 b-flat4) \! |
      a-flat2( f'4. e-flat8 |
      d4) r b-flat,2~ \pp |
      b-flat1~ |
      b-flat4 g''4( a-flat8 f c \< d |
      \acciaccatura f e-flat a, b-flat c d-flat \tweak to-barline ##f \> e-flat f d-flat |
      c2) \! r2 |
      r2 f,2~( \pp |
      f2 b-flat,2~ |
      b-flat4) b-flat'( \< d-flat \> c8 b-flat \! |
      c2) r2 |
      g2. g4( |
      b-flat4 a \< e-flat' \> c8 a |
      \mark \default % A
      c4 \> b-flat2) \! r4 |
      R1
      r4 b-flat2( \< b4 |
      d-flat4 \> c2.) \! |
      r4 f,( \< a-flat \> f8 d-natural! \! |
      e-flat4) r r2 |
      r4 e-flat' \p e-flat8( a,4 b8 |
      c4) r r2 |
      r4 e-flat e-flat8( \< b-flat!4 b8 |
      c2.) \p \tweak to-barline ##f \< d-natural!4( |
      f4 \! e-flat2 d-flat4) |
      c4( c'2 a-flat8 f |
      d-natural!2) r2 |
      r4 b( c4. \sf g8 |
      a-flat4) a-flat( \< c8 b-flat d, e \! |
      f4) f( a-flat4. \fp g8) |
      \mark \default % B
      g4 r \clef \bass-clef-name f,2~( \f \tweak to-barline ##f \> |
      f2 \! b-flat,4) \clef "treble" b-flat'8.( \< d-flat'16) |
      d-flat4( \sf \> c8 b-flat a-flat g f e |
      g4 \< f) c'2~( \f |
      c4 d \> f8 e-flat e-flat, a-flat) |
      f2.( \< b-flat,4 |
      b-flat'2. e-flat,4) |
      e-flat'2.( \f \> e4 |
      g4 f2 e-flat!4) |
      g,4( f2 e-flat4) \! |
      \clef \bass-clef-name
      g,4( a-flat2 d,4 |
      e-flat1~ |
      e-flat1) |
      <<
        { a,1( }
        {
          \override Hairpin.minimum-length = #3
          s2*2/3 \< s \> s \!
          \revert Hairpin.minimum-length
        }
      >> |
      b-flat!1) |
      e-flat2( \< d4 e-flat |
      f4 g \> a2) |
      \clef "treble"
      b-flat4.( \! a8 b-flat e-flat g b-flat |
      g'8 e-flat b-flat g \< a-flat!4. \> d-natural,!8) |
      \mark \default % C
      e-flat2.( \p e4 |
      g4 f2 e-flat!4 |
      d-flat2 b-flat'4. a-flat8) |
      a-flat2( g |
      e-flat'1 \< |
      b-flat1 \> |
      e-flat1 \pp |
      b-flat1~ |
      b-flat1~ |
      b-flat1~ \tweak to-barline ##f \> |
      b-flat4) \! r r2 |
      r2 r4\fermata_\markup { \right-align \italic "attaca" } \bar "||"

      \tempo \markup {
        \override #'(baseline-skip . 2)
        \left-column {
          "Rasch und feurig"
          \normal-text \tiny "(Quickly and fiery)"
        }
      }
      \tuplet 3/2 { r8 g'-. \f g-. } | \noBreak
      \tuplet 3/2 4 { g8( b,) b b( e-flat) e-flat e-flat( g,) g g( c) c } |
      \tuplet 3/2 { c8( f,) f } f4~( f8 g a-flat f') |
      e-flat4( d8.) d16 e-flat4( a,8.) a16 |
      b-flat4. c8 d e-flat f g |
      a-flat!2( \sf f4 d) |
      c4.( b-flat8 a4 b-flat) |
      g,4. b-flat8 e-flat g b-flat e-flat |
      g4( c,8.) f16 f4( b-flat,) |
      a-flat'!2( \sf f4 d) |
      f4( e-flat4~8 e f d-flat) |
      c4( b-flat8.) \cresc a-flat16 e-flat'8( d c b-flat) |
      e-flat4( d8.) c16 g'8( f e f) |
      g4 a b-flat~ \tuplet 3/2 { b-flat8 b-flat-. \ff b-flat-. } |
      \tuplet 3/2 4 { b-flat8( d,) d d( g) g g( c,) c c( f) f } |
      \tuplet 3/2 { f8( b-flat,) b-flat } b-flat4 r2 |
      \tuplet 3/2 { e-flat,8 g b-flat } e-flat4 \tuplet 3/2 { c,8 \< e-flat g } c4 |
      f2( \sf b-flat,4)
        \mark \default % D
        \bar "||" \noBreak r4 |
      R1

      \override DynamicLineSpanner.staff-padding = #2
      r4 \p b( \< d-flat4. \> c8) \! |
      c4 r r2 |
      r4 c-sharp( \< e-flat!4. \> d-natural!8) \! |
      \revert DynamicLineSpanner.staff-padding
      d4 r r2 |
      R1*2
      r4 d,( \p \< e-flat f \! |
      g8\noBeam) g( \p e-flat' d c b-flat a g |
      f1) |
      r8 e-flat( \< c' g-sharp a e f e-flat \! |
      d1)
      c4.( b8 c^> \< d^> e-flat^> f^>) \! |
      f-sharp4( g2) c4( |
      f,!2) r2 |
      r4 g( \< b-flat4. \> a8) \! |
      a2.( a-flat4) \fp |
      g2( f~ |
      f4) f( \< a-flat4. \> g8) \! |
      g2. r4 |
      r4 a( \< c4. \> b-flat8) |
      e-flat4( \f \> c g a) |
      \mark \default % E
      b-flat1~ \< |
      b-flat2.~ \tuplet 3/2 { b-flat8 g'-. \f g-. } |
      \tuplet 3/2 4 { g8( b,) b b( e-flat) e-flat e-flat( g,) g g( c) c } |
      \tuplet 3/2 { c8( f,) f } f4~( f8 g a-flat f') |
      e-flat4( d8.) d16 e-flat4( a,8.) a16 |
      b-flat4. c8 d e-flat f g |
      a-flat!2( \sf f4 d) |
      c4.( b-flat8 a4 b-flat) |
      g,4. b-flat8 e-flat g b-flat e-flat |
      g4( c,8.) f16 f4( b-flat,) |
      a-flat'!2( \sf f4 d) |
      f4( e-flat4~8 e f d-flat) |
      c4( b-flat8.) \cresc a-flat16 e-flat'8( d c b-flat) |
      e-flat4( d8.) c16 g'8( f e f) |
      g4 a b-flat~ \tuplet 3/2 { b-flat8 b-flat-. \ff b-flat-. } |
      \tuplet 3/2 4 { b-flat8( d,) d d( g) g g( c,) c c( f) f } |
      \tuplet 3/2 { f8( b-flat,) b-flat } b-flat4 r2 |
      \tuplet 3/2 { e-flat,8 g b-flat } e-flat4 \tuplet 3/2 { c,8 \< e-flat g } c4 |
      f2( \sf b-flat,4) r4 | \bar "||"

      \key f-sharp \major
      \mark \default % F
      \tempo \markup {
        \override #'(baseline-skip . 2)
        \left-column {
          "Etwas ruhiger"
          \normal-text \tiny "(Somewhat calmer)"
        }
      }
      c-sharp,2.( \p c-sharpsharp4 |
      d-sharp1~ |
      d-sharp4) d-sharp4( g-sharp f-sharp |
      e-sharp1) |
      f-sharp2.( \< f-sharpsharp4 |
      a-sharp2 g-sharp4 f-sharp4~
      f-sharp4 e-sharp f-sharp g-sharp |
      b2 \! a-sharp4 e-sharp |
      f-sharp2.) r4 |
      R1
      b,2.( \p b-sharp4 |
      c-sharp1~ |
      c-sharp4) c-sharp4( f-sharp e |
      d-sharp1) |
      e2.( \< e-sharp4 |
      g-sharp2 f-sharp4 e4~
      e4 d-sharp e-sharp f-sharpsharp |
      a-sharp4 g-sharp2 f-sharp4~ |
      f-sharp4 e2 d-sharp4) \! | \bar "||"

      \mark \default % G
      \key e-flat \major
      e-flat2.->( \cresc e4 |
      f2) r2 |
      f2.->( f-sharp4 |
      g2) r2 |
      r4 g( c b-flat |
      a-flat1~ |
      a-flat4) a-flat( d c |
      b2.) \tuplet 3/2 { \tempo "Tempo I" r8 c-. \f c-. } |
      \tuplet 3/2 4 { c8( g) g g( a-flat) a-flat a-flat( e) e e( f) f } |
      \tuplet 3/2 { f8( c) c } c4~ \tuplet 3/2 4 { c8 e f a-flat c f } |
      e-flat!4( d8.) d16 e-flat4( a,8.) a16 |
      b-flat4. c8 d e-flat f g |
      a-flat!2( \sf f4 d) |
      c4.( b-flat8 a4 b-flat) |
      g,4. b-flat8 e-flat g b-flat e-flat |
      g4( c,8.) f16 f4( b-flat,) |
      a-flat'!2( \sf f4 d) |
      f4( e-flat4~8 e f d-flat) |
      c4( b-flat8.) \cresc a-flat16 e-flat'8( d c b-flat) |
      e-flat4( d8.) c16 g'8( f e f) |
      g4 a b-flat~ \tuplet 3/2 { b-flat8 b-flat-. \ff b-flat-. } |
      \tuplet 3/2 4 { b-flat8( d,) d d( g) g g( c,) c c( f) f } |
      \tuplet 3/2 { f8( b-flat,) b-flat } b-flat4 r2 |
      \tuplet 3/2 { e-flat,8 g b-flat } e-flat4 \tuplet 3/2 { c,8 \< e-flat g } c4 |
      f2( \sf b-flat,4) r4

      \mark \default % H
      R1
      \override DynamicLineSpanner.staff-padding = #2
      r4 \p b( \< d-flat4. \> c8) \! |
      c4 r r2 |
      r4 c-sharp( \< e-flat!4. \> d-natural!8) \! |
      \revert DynamicLineSpanner.staff-padding
      d4 r r2 |
      R1*2
      r4 d,( \p \< e-flat f \! |
      g8\noBeam) g( \p e-flat' d c b-flat a g |
      f1) |
      r8 e-flat( \< c' g-sharp a e f e-flat \! |
      d1)
      c4.( b8 c^> \< d^> e-flat^> f^>) \! |
      f-sharp4( g2) c4( |
      f,2) r2 |
      r4 g( \< b-flat4. \> a8) \! |
      a2.( a-flat4 \fp |
      g2 f~ |
      f4) f( \< a-flat4. \> g8) \! |
      g2. r4 |
      r4 a( \< c4. \> b-flat8) |
      e-flat4( \f \> c g a) |

      \mark \default % I
      b-flat1~ \< |
      b-flat2.~ \tuplet 3/2 { b-flat8 g'-. \f g-. } |
      \tuplet 3/2 4 { g8( b,) b b( e-flat) e-flat e-flat( g,) g g( c) c } |
      \tuplet 3/2 { c8( f,) f } f4~( f8 g a-flat f') |
      e-flat4( d8.) d16 e-flat4( a,8.) a16 |
      b-flat4. c8 d e-flat f g |
      a-flat!2( \sf f4 d) |
      f4( e-flat4~8 e f d-flat) |
      c4( b-flat8.) \cresc a-flat16 e-flat'8( d c b-flat) |
      e-flat4( d8.) c16 g'8( f e f) |
      g4 a( b-flat2~ \sf |
      b-flat4) f( a-flat!4. g8) |
      g4 a( b-flat2~ \sf |
      b-flat4) f( a-flat!4. g8) |
      g4. \sf f8 e-flat \< d d-flat c |
      b-flat8 a-flat g f \! e-flat4( b) |
      c8( b c e-flat d g e-flat a-flat) |
      a-flat2( \sf g4) r4 |
      c,8( b c e-flat d g e-flat a-flat) |
      a-flat2( \sf g4) c4 |
      \mark #11 % K
      \tuplet 3/2 4 { b-flat8( \ff g') g g( d) d d( e-flat) e-flat e-flat( b) b } |
      \tuplet 3/2 { b( c) c } c4-^~ \tuplet 3/2 4 { c8( f,) f f( b-flat) b-flat } |
      \tuplet 3/2 4 { b-flat8( g') g g( d) d d( e-flat) e-flat e-flat( b) b } |
      \tuplet 3/2 { b( c) c } c4-^~ \tuplet 3/2 4 { c8( f,) f f( b-flat) b-flat } |
      b-flat8 b-flat' g e-flat b-flat g e-flat b-flat |
      g8 b-flat e-flat g b-flat4 e-flat,4 |
      c'2-^ d,2-^ |
      \tempo \markup {
        \override #'(baseline-skip . 2)
        \left-column {
          "Schneller"
          \normal-text \tiny "(More quickly)"
        }
      }
      e-flat2 a-flat4( f8 d) |
      b-flat'4( c2) \sf d,4 |
      e-flat8( b-flat) b-flat b-flat a-flat'4( f8 d) |
      b-flat'4( c2) \sf d,4 |
      a-flat'1~ |
      a-flat1 |
      g4. g,8 \ff b-flat e-flat g b-flat |
      e-flat4 r e-flat-. r4 |
      e-flat,4-. r4 r2 | \bar "|."
    }

    #(if preserve-line-breaks? #{ \new Voice {
      s1*7 \break
      s1*9 \break
      \repeat unfold 3 { s1*8 \break }
      s1*9 \break
      s1*11 s2. \break

      s4 s1*3 \break
      s1*6 \break
      s1*4 \break
      s1*5 \break
      s1*9 \break
      s1*8 \break
      s1*7 \break
      \repeat unfold 2 { s1*6 \break }
      s1*4 \break
      s1*11 \break
      s1*9 \break
      s1*8 \break
      \repeat unfold 2 { s1*6 \break }
      s1*5 \break
      s1*8 \break
      s1*6 \break
      s1*7 \break
      s1*4 \break
      s1*5 \break
      s1*6 \break
      s1*4 \break
      \repeat unfold 2 { s1*3 \break }
      s1*5 \break
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
