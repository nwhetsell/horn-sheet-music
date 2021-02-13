\version "2.22.0"

source-url = "https://imslp.org/wiki/Trio_for_Piano%2C_Oboe%2C_and_Horn%2C_Op.188_(Reinecke%2C_Carl)"
\header {
  composer-last-name = "Reinecke"
  composer-first-name = "Carl"
  title = "Trio in A Minor"
  opus = "Op. 188"
  instrument = "Horn in F"
}

\include "../titling.ily"
\include "settings.ily"

\pointAndClickOff

\layout {
  \accidentalStyle modern
  \set Score.skipBars = ##t
  \context {
    \Score
    \override Hairpin.after-line-breaking = ##t
    #(if preserve-line-breaks? #{
      \override NonMusicalPaperColumn.line-break-permission = ##f
    #})
    \override PercentRepeatCounter.staff-padding = #0.5
  }
}

\score {
  \header { piece = "I" }
  \new Staff <<
    \new Voice \with {
      \consists "Melody_engraver"
      \override Stem.neutral-direction = #'()
    } \relative {
      \language "english"

      \key c \major
      \time 4/4

      \once \override Score.MetronomeMark.padding = #3
      \tempo "Allegro moderato"

      R1*3
      \repeat volta 2 {
        R1*3
        b'1^~ \pp \< |
        b1~ |
        b2 a-sharp4.( \p c-sharp8) |
        b2. c4->~ \f |
        c4 a2-> f-sharp4 |
        b4 \parenthesize -> b2 c8. f-sharp16 | % The accent on the B isn’t in the score.
        c4 a8. f-sharp16 a4 f-sharp8. a,16 |
        b4 b2 r4 |
        r4 b'8. \mf \> e16 b4 g8. e16 |
        g4 g2 \! r4 |
        r4 b8. \p e16 b4 g8. e16 |
        g2 r2 |
        R1
        r4 a8. f-sharp16 a2~ |
        a1 |
        r4 b8. \mf g16 b2~ |
        b2 c-sharp4.( d8) |
        d2 r2 |
        R1
        r4 b8. \mf \tweak to-barline ##f \> g16 b4 g8. b,16 |
        e1 |
        d1~ |
        d2 \! r2 |
        R1*6
        g4--_\markup { \italic "dolce" }( a-- g-- a--) |
        c4( b8.) d16( b2~ |
        b4 a) g e |
        e4( f-sharp) a2~( \< |
        a4 g) g a |
        c4( \> b8.) d16 b2~ |
        b4 \acciaccatura b8 d4-> \p c-sharp4. f-sharp,8 |
        c-sharp'1( |
        b4) r r2 |
        R1*6
        r4 c8. \f a16 c4 a8. c,16 |
        f-sharp1 |
        r4 c-sharp'8. b-flat16 c-sharp4 b-flat8. c-sharp,16 |
        g'1~ \> |
        g4 \tweak X-offset #0 #(make-dynamic-script (markup #:dynamic "p" #:normal-text (#:italic "dolce"))) a g a |
        c4( b8.) d16 b2~ |
        b4 a-.( g-. e-.) |
        g4( f-sharp) d2 |
        g4 \< a g a |
        c4( \f b8.) e16 d2~( |
        d4 c b) e, |
        a1( \tweak to-barline ##f \> |
        g4) \! r r2 |
        R1
        r2 r4 e'( \p |
        d4) r r d,~ |
        d4 r r d~ \pp |
        d4 e-flat( d) e-flat( |
      }
      \alternative {
        {
          d1 |
          d-sharp1) |
          \override Score.BarNumber.break-visibility = #end-of-line-invisible
          \set Score.currentBarNumber = #3
          e2 r2 |
        } {
          \set Score.currentBarNumber = #71
          d2. d8. \mf e-natural!16 |
        }
      }
      \revert Score.BarNumber.break-visibility
      d2. d'8. \f e16 |
      d4 c8. a16 c4 a8. g-sharp16 |
      b4 b2 f'8. g16 |
      f4 e8. c16 e4 g8. a16 |
      g4 f8. d16 f4 r |
      r4 e,8. \ff d16 f4 r |
      r4 e8. d16 f4 r |
      r8 e-.^\markup { \italic "un poco pesante" } \ff d-. f-. e-. d-. f-. \> e-. |
      e4 \p r r2 |
      R1*2
      r2 r4 g-sharp4( \p |
      a4) e'2 f4~( |
      f4 e8) b d4( c8) b |
      a4. a,8 \< c( e) a c |
      c2( \> b4) \! r4 |
      R1
      r2 r8 \mf \< f f f |
      f2:8 \f f2:8 |
      f2:8 f2:8 |
      e4 r r2 |
      d-flat'4 \f c d-flat c |
      e-flat4( d8.) f16 e-flat2 |
      f4 e f e |
      g4 f-sharp8. f-sharp16 f2 |
      R1*2
      R1^\markup { \italic "cal." }
      \override Score.BarNumber.self-alignment-X = #CENTER
      R1*3
      \revert Score.BarNumber.self-alignment-X
      r2 a,2~_\markup { \dynamic "p" \italic "dolce" } |
      a4 b a b |
      d4( c-sharp8.) e16 c-sharp2~( |
      c-sharp4 b) a-.( f-sharp-.) |
      a4( \< g-sharp) b-.( a-sharp-.) |
      c-sharp4( b) f-sharp'2~ |
      f-sharp4 a2( \f c,4) |
      c-sharp4 r r2 |
      R1*5
      r4 \once \stemDown b4.-> \ff b,8->^\markup { \italic "a piacere" } d-> f-> |
      \tuplet 3/2 4 { g-sharp8( \> d) f-. g-sharp( b) a-sharp-. } c-sharp8^\markup { \combine
        \italic "cal."
        \transparent "p" % This aligns the baselines of cal.” and “a piacere”.
      }( b) a-sharp! b |
      b4^"a tempo"( \p c-sharp) b-.( \< c-sharp-.) | % The articulations of the second B and C# in the horn part are tenuto (--), not staccato.
      e4( d-sharp) g-sharp2~( \f \> |
      g-sharp4 f-sharp) d-sharp b |
      d-sharp2( c-sharp) \! |
      R1*2
      c-natural!4--( \pp b-- c-- b--) | % The articulations in the horn part are staccato (-.), not tenuto.
      d4 \cresc c2 b8. d16 |
      b4 a2 g4 |
      e'4 d2 c8. e16 |
      c4 b2 a4 |
      f-sharp'8( \f e4) e8 d8( c4) c8 |
      b8( a) b-. g-. f-sharp( e) g-. e-. |
      d-sharp4 r r2 |
      R1*4
      r2 b'2~ \pp |
      b1~ |
      b1~ \< |
      b2 a-sharp4.( c-sharp8) |
      b2. c4~ \f |
      c4 a2 f-sharp4 |
      b4 b2 c8. f-sharp16 |
      c4 a8. f-sharp16 a4 f-sharp8. a,16 |
      b4 b2 r4 |
      R1*10
      r4 d-sharp'8. \f \tweak to-barline ##f \> b16 d-sharp4 b8. d-sharp,16 |
      f-sharp2 \! r2 |
      R1
      \tuplet 3/2 2 { r4 f-sharp \p b a-sharp( g-natural!) a-sharp } |
      b1~( |
      \once \stemDown b4 a8.) c16 a2~( |
      a4 g) f-sharp c |
      e2( d-sharp) |
      R1^\markup { \italic "cal." }
      \override Score.BarNumber.self-alignment-X = #CENTER
      R1*6^"a tempo"
      \revert Score.BarNumber.self-alignment-X
      d-sharp1~( \p |
      d-sharp2 g-sharp4) r |
      R1*7
      c-sharp4_\markup { \dynamic "pp" \italic "dolce" } d-sharp c-sharp d-sharp |
      f-sharp4( f8.) a-flat16( f2~ |
      f4) e-flat d-flat b-flat |
      b-flat4( c) e-flat r |
      R1*5
      r2 r4 c->~ \f |
      c4 a2-> f4 |
      c'1~ |
      c1~ |
      c1~ |
      c2 e2~ \mf |
      e2 e2~ |
      e2 \> e2 |
      e1~ \p |
      e4 e( b) g~ |
      g4 \> g( e) g, |
      b1 |
      <<
        {
          e,1~ \pp |
          e1~ |
          \override Score.BarNumber.self-alignment-X = #CENTER
          \repeat unfold 3 { e1~ | }
        }
        {
          \set countPercentRepeats = ##t
          \hide PercentRepeat
          \repeat percent 5 { s1 | }
        }
      >>
      e2 r2 |
      \revert Score.BarNumber.self-alignment-X
      r4 b''( \pp g b,) |
      e1~ |
      e2 r2 | \bar "|."
    }

    #(if preserve-line-breaks? #{ \new Voice {
      s1*3
      \repeat volta 2 {
        s1*11 \break
        s1*9 \break
        s1*16 \break
        s1*14 \break
        s1*9 \break
        s1*6
      }
      \alternative {
        { s1*3 }
        { s1 }
      }
      s1 \break
      s1*6 \break
      s1*10 \break
      s1*14 \break
      s1*13 \break
      s1*8 \break
      s1*7 \break
      s1*13 \break
      s1*18 \break
      s1*20 \break
      s1*15 \break
    } #})
  >>
}

\score {
  \header { piece = "II — Scherzo" }
  % TODO: This staff should use a Melody_engraver, but it’s impossible to use a
  % Melody_engraver when a Voice includes a CueVoice; this is a bug in LilyPond:
  % https://gitlab.com/lilypond/lilypond/-/issues/6093
  \new Staff <<
    \new Voice \relative {
      \language "english"

      \key c \major
      \time 6/8

      \once \override Score.MetronomeMark.padding = #3
      \tempo "Molto vivace"

      <<
        {
          \partial 4 r8 r |
          r8
        }
        \new CueVoice {
          \stemUp
          \partial 4 d''8 d |
          d8
        }
      >>
      d8-. \pp d-. d-. r r |
      r8 d-. d-. d-. r r |
      \repeat volta 2 {
        r8 e-. e-. e-. r r |
        d4. r8 d-. d-. |
        d2.~ |
        d4.~8 d-. \mf d-. |
        d8->( g,) g-. g r r |
        r4. r8 e'-. e-. |
        e8->( a,) a-. a r r |
        R2.
        r4. g8-. \p c-sharp-. e-. |
        d8 r8 r8 d,-. f-. b-. |
        a8 r r r4. |
        r8 d-. d-. d-. r r |
      }
      R2.
      f,,2.~ \p \< |
      f2.~ |
      f2. |
      f2.~ \f |
      f2. |
      R2.*2
      r4. r8 d''-. \p d-. |
      d8-. r r r4.
      R2.*2
      r4. r8 d-. \pp d-. |
      d8-. r r r4.
      r8 d-. \pp d-. d-. r r |
      r8 d-. d-. d-. r r |
      r8 e-. e-. e-. r r |
      d4. r8 d-. d-. |
      d2.~ |
      d4. r8 d-. \mf d-. |
      d8->( g,) g-. g r r |
      r4. r8 e'-. e-. |
      e8->( a,) a-. a r r |
      R2.
      r4. g8-. \p c-sharp-. e-. |
      d8 r8 r8 d,-. f-. b-. |
      a8 r r r4. |
      r8 d-. d-. d-. r r |
      R2.
      <<
        {
          f,,2.~ \p \< |
          f2.~ |
          \override Score.BarNumber.self-alignment-X = #CENTER
          f2.~ |
          f2.~ \f |
        }
        {
          \set countPercentRepeats = ##t
          \hide PercentRepeat
          \repeat percent 4 { s2. | }
        }
      >>
      f4. r |
      \revert Score.BarNumber.self-alignment-X
      R2.*2
      r4. r8 d''8-. \p d-. |
      d8-. r r r4. |
      R2.*2
      r4. r8 d8-. d-. |
      d8-. r r r4.
      r8 d-. \pp d-. d-. r r |
      r8 d-. d-. d-. r r |
      r8 e-. e-. e-. r r |
      d4. r8 d-. d-. |
      d2.~ |
      d4. r8 d-. \mf d-. |
      d8->( g,) g-. g r r |
      r4. r8 e'-. e-. |
      e8->( a,) a-. a r r |
      g'8->( g,) g-. g r r |
      r4. c4. |
      b8-. e-. g-. f-sharp4( e8) |
      d4.( c4.) |
      b8 r r r g-. g-. |
      g8-. r r r4. |
      R2.*2 \bar "||"
      g,4.( \mf \< b-flat4.) |
      g'4.( e-flat4.) |
      c4.( \f f4 c'8) |
      c4.~8 r r |
      R2.*8
      d,2.~ \p |
      d2. |
      g,2.~ |
      g4 r8 g'4.->~( \mf \< |
      g4. a-flat) |
      c4.( \> a-flat) \! |
      g2.~ |
      g4 r8 b-flat4.~ |
      b-flat2. |
      c-sharp2. |
      e2.~( |
      e2.~ \< | \bar "||"
      \time 2/4
      e8_\markup { \italic "espressivo" } f f-sharp a) |
      g4.( \> f8) | \bar "||"
      \time 6/8
      f2.( |
      b-flat,2.~ |
      b-flat2.~ \p |
      b-flat4.) r |
      g,4.( \f b-flat4. |
      g'4. e-flat4.) |
      c4.( f4 c'8) |
      c2.~( \> |
      c2. \p |
      b-flat2.) |
      b-flat2.~ |
      b-flat4 r8 b-flat,4.~( |
      b-flat4. e-flat) |
      b-flat'4.( g4.) |
      d4.( \tweak to-barline ##f \> g4 d'8) |
      d2. \! |
      R2.*3
      r4. r8 d-. \p d-. |
      d8-. r r r4. |
      r4. r8 d-. \pp d-. |
      d8-. r r r d-. d-. |
      d8-. r r r4. |
      r8 d-. d-. d-. r r |
      r8 d-. d-. d-. r r |
      r8 e-. e-. e-. r r |
      d4. r8 d-. d-. |
      d2.~ |
      d4.~8 d-. \p d-. |
      d8->( g,) g-. g r r |
      r4. r8 e'-. e-. |
      e8->( a,) a-. a r r |
      R2.
      r4. g8-. c-sharp-. e-. |
      d8 r8 r8 d,-. f-. b-. |
      a8 r r r4. |
      r8 d-. d-. d-. r r |
      R2.
      <<
        {
          f,,2.~ \p \< |
          f2.~ |
          \override Score.BarNumber.self-alignment-X = #CENTER
          f2.~ |
          f2.~ \f |
          f2. |
        }
        {
          \set countPercentRepeats = ##t
          \hide PercentRepeat
          \repeat percent 5 { s2. | }
        }
      >>
      R2.*2
      \revert Score.BarNumber.self-alignment-X
      r4. r8 d''8-. d-. |
      d8-. r r r4. |
      R2.*2
      r4. r8 d8-. d-. |
      d8-. r r r4.
      r8 d-. \pp d-. d-. r r |
      r8 d-. d-. d-. r r |
      r8 e-. e-. e-. r r |
      d4. r8 d-. d-. |
      d2.~ |
      d4. r8 d-. \mf d-. |
      d8->( g,) g-. g r r |
      r4. r8 e'-. e-. |
      e8->( a,) a-. a r r |
      g'8->( g,) g-. g r r |
      r4. c4. |
      b8-. e-. g-. f-sharp4( e8) |
      d4.( c4.) |
      b8 r r r4. |
      r8 g,-. g-. g-. r r | \bar "|."
    }

    #(if preserve-line-breaks? #{ \new Voice {
      s4 s2.*2
      \repeat volta 2 {
        s2.*4 \break
        s2.*7 \break
        s2.
      }
      s2.*13 \break
      \repeat unfold 2 { s2.*7 \break }
      s2.*14 \break
      \repeat unfold 2 { s2.*7 \break }
      s2.*19 \break
      s2.*9 s2*2 s2.*2 \break
      s2.*13 \break
      s2.*10 \break
      s2.*7 \break
      s2.*9 \break
      s2.*12 \break
      s2.*7 \break
    } #})
  >>
}

\score {
  \header { piece = "III" }
  \new Staff <<
    \new Voice \with {
      \consists "Melody_engraver"
      \override Stem.neutral-direction = #'()
    } \relative {
      \language "english"

      \key c \major
      \time 4/4

      \once \override Score.MetronomeMark.padding = #3
      \tempo "Adagio"

      R1*4
      \clef \bass-clef-name
      g,1~ \f \tweak to-barline ##f \> |
      g2. \! r4 |
      \clef "treble"
      e''2_\markup { \dynamic "p" \italic "espress." } d4.( f8) |
      f4( \< e) e g |
      g4\(( \> f4.) g8\) \< b-.( e-.) |
      d4( \f \> c) g8( \p a e g) |
      f2( b,4.) a'8 |
      a4( \< g) g--( c--) |
      c2 \> b8( c e, b') |
      a2( \p g4) f |
      e2( \mf d4.) f8 |
      f4( e) e \< g |
      g4( \> f4. g8) \< b-.( e-.) |
      d4( \> c) g8 \tweak X-offset #0 #(make-dynamic-script (markup #:normal-text (#:italic "dolce"))) ( a e g) |
      f2( b,4.) a'8 |
      a4( g) g c |
      d,2 f4( e8) d |
      c2. r4 |
      R1*7
      c2 \< b8( c d g) |
      f2 \f r2 |
      e2 c8( d e a) |
      a-flat4( g8.) c16 f,2 |
      g2 e-flat8( f g c) |
      \set decrescendoText = \markup { \italic "stringendo" }
      \set decrescendoSpanner = #'text
      d-flat2-> \> c-> |
      \unset decrescendoText
      \unset decrescendoSpanner
      b-natural!4->( f8.) b16 c2 |
      r4 f-sharp,2( g4) |
      g-sharp4( f8.) g-sharp16 a2 |
      b-flat4( e,8.) a16 b-flat2 |
      b-flat4^\markup { \italic "rit." }( \> e,8.) a16 b-flat2 |
      b1~( \p
      b2. a4) |
      g-sharp2^"a tempo"_\markup { \italic "espress." } f-sharp4.( a8) |
      a4( g-sharp4) g-sharp b |
      b4( a4. \< b8) d-sharp-.( g-sharp-.) |
      f-sharp4( \f \> e2) d4 |
      c-sharp2. \mf a4 |
      b2 c-sharp2 |
      d2 \f r4 g-sharp,4^^ \f
      d'1^^ |
      R1*4
      R1^\markup { \italic "rit." }
      e,2^"a tempo" \ff d4. f8 |
      f4( e) e g |
      g4( f4. g8) \< b-.( e-.) |
      d4( \> c) \! g8( a e g) |
      f2( b,4.) a'8 |
      a4( g) g c |
      c2 b8( c e, b') |
      a2( \> g4) f |
      e1 \p |
      a4( g f e) |
      d2 e4.( c8) |
      b4( a b2) |
      c8( d e g) g2 |
      a2( g) |
      g1 |
      c,8 4 4 4 8 |
      c2( b) |
      c1 |
      c2( b4) g |
      g2 r8 g'8_\markup { \dynamic "p" \italic "ma espress." }( \< b e) |
      d4( \> c) \! g8( a e g) |
      f2 \> b,4.( c8) |
      c1~ \pp |
      c1\fermata | \bar "|."
    }

    #(if preserve-line-breaks? #{ \new Voice {
      s1*11 \break
      s1*7 \break
      s1*14 \break
      s1*7 \break
      s1*9 \break
      s1*12 \break
      s1*9 \break
    } #})
  >>
}

\score {
  \header { piece = "IV — Finale" }
  \new Staff <<
    \new Voice \with {
      \consists "Melody_engraver"
      \override Stem.neutral-direction = #'()
    } \relative {
      \language "english"

      \key c \major
      \time 4/4

      \tempo "Allegro ma non troppo"

      \partial 4 { r4 } |
      e1~ \p |
      e1~ |
      e1~ |
      e2. r4 |
      g-sharp'4( \mf g f-sharp d-sharp |
      e4.) f8 f-sharp4 b, |
      g-sharp'4( g f-sharp d-sharp |
      e4) b-. e,-. r |
      r4 c-sharp'8 \f r8 f-sharp2~ \tweak to-barline ##f \> |
      f-sharp2. \! r4 |
      r4 c-sharp8 r8 f-sharp2~ |
      f-sharp4 r r2 |
      g-sharp4( \mf g f-sharp d-sharp |
      e4.) f8 f-sharp4 b, |
      g-sharp'4( g f-sharp d-sharp |
      e4) b-. e,-. r |
      r4 c-sharp'8( \f a') a4. g-sharp8 |
      f-sharp4. e8 d-sharp4 r4 |
      r4 g-sharp,8( g-sharp') g-sharp4 f-sharp8-. e-. |
      e4( \> d-sharp8) c-sharp-. c4 \! r |
      R1*2
      r4 c-sharp8( \f a') a4. g-sharp8 |
      f-sharp4. e8 d-sharp4 r4 |
      r4 g-sharp,8( g-sharp') g-sharp4 f-sharp8-. e-. |
      e4( d-sharp8-.) c-sharp-. c4 r |
      R1*2
      r4 c'8( \f c-sharp) c-sharp2 |
      r4 d-sharp8( e) e2 |
      e1~ #(make-dynamic-script "sfpp") |
      e1 |
      b,1~ |
      b1~ |
      b4 g-sharp'8( \mf b) b,2~ |
      b2. r4 |
      r4 g-sharp'8( b) c-sharp,2~ |
      c-sharp2. r4 |
      r4 f8( f-sharp) f-sharp2 |
      r4 g8( \f g-sharp) g-sharp4 f |
      f-sharp \> d-sharp e f-sharp |
      g-sharp4 f-sharp e f \! |
      e2. r4 |
      R1*2
      r2 r4 f-sharp \f |
      g4.-> g-sharp8 g-sharp4 d-sharp' |
      d-sharp4.-> c-sharp8 c-sharp4 f-sharp4 |
      f-sharp4.-> b,8 b4 c-sharp |
      f-sharp,2. r4 |
      R1*3
      r2 r4 b \f |
      c4.-> c-sharp8 c-sharp4 g-sharp' |
      g-sharp4.-> f-sharp8 f-sharp4 b,4 |
      c4.-> c-sharp8 c-sharp4 g-sharp' |
      g-sharp4.-> f-sharp8 f-sharp4 r4 |
      R1*2
      r2 r4 f-natural,! \mf |
      b-flat4.-> 8 4 r |
      r2 r4 f |
      b-flat4.-> 8 4 r |
      R1*3
      r4 f-sharp \p f( f-sharp) |
      r4 f-sharp f( f-sharp) \tweak to-barline ##f \< |
      g4.-> \f g-sharp8 g-sharp4 d-sharp' |
      d-sharp4.-> c-sharp8 c-sharp4 f-sharp4 |
      f-sharp4.-> b,8 b4 c-sharp |
      f-sharp,2. r4 |
      r2 r4 b \mf |
      b4. 8 4 d-sharp |
      f-sharp,4. 8 4 f-sharp, |
      b2. r4 |
      r4 f-natural'!2_\markup { \italic "dolce" }( f-sharp4) |
      d-sharp2. r4 |
      r4 f-natural!2( f-sharp4) |
      d-sharp4 f-sharp,( d-sharp') f-sharp,( |
      d-sharp'1~  |
      d-sharp2.) r4 |
      \tieUp
      b'1~ \pp |
      b1~ |
      b1~^\markup { \italic "poco cal." } |
      b2. r4 |
      \tieNeutral
      R1*4^"a tempo"
      r4 c-sharp,8 \mf r8 f-sharp2~ |
      f-sharp2. r4 |
      r4 c-sharp8 r8 f-sharp2~ |
      f-sharp2. r4 |
      R1*2
      c-sharp1~ |
      c-sharp2. c4 \f |
      a'2. a4 |
      f-sharp'4.-> 8 4 f-sharp, |
      b4.-> 8 2~ |
      b2. r4 |
      r4 b \f g-natural!( f-sharp) |
      e4 d( c-natural!) b |
      a4 e'' c( b) |
      a4 g f-sharp r |
      r4 c'( e-flat) r |
      r4 f-sharp,( c') f-sharp,, |
      b2 r |
      <<
        {
          e,1~ \f |
          e1~ |
          \override Score.BarNumber.self-alignment-X = #CENTER
          \repeat unfold 4 { e1~ | }
        }
        {
          \set countPercentRepeats = ##t
          \hide PercentRepeat
          \repeat percent 6 { s1 | }
        }
      >>
      e4. r8 r2 |
      \revert Score.BarNumber.self-alignment-X
      r2 r4 a \f |
      d-sharp4.-> 8 4 r |
      r2 r4 a |
      f-natural'!4.-> 8 4 r |
      r4 f8( \mf a-flat) a-flat4 r |
      r4 a-flat8 b-natural! b2~( |
      b1~ \> |
      b2 b-flat2~ |
      b-flat4) r r f( \tweak X-offset #0 #(make-dynamic-script (markup #:dynamic "p" #:normal-text (#:italic "dolce"))) |
      d4 c b-flat) r
      r2 r4 e-natural!( |
      c-sharp4 b b-flat) r |
      r2 r4 d-sharp' \pp |
      b4( a-sharp) g-sharp d-natural! |
      g-sharp4( a-sharp) b r |
      R1
      r4 b( d-sharp) r |
      r4 b( d-sharp) r |
      R1
      \stemUp
      r4 g-sharp,( b) r |
      r4 g-sharp( b) r |
      g-sharp4( \pp b) r g-sharp->( |
      b4) r r2 |
      \stemNeutral
      R1*4
      r4 c-sharp,8 \f r8 f-sharp2~ \tweak to-barline ##f \> |
      f-sharp2. \! r4 |
      r4 c-sharp8 r8 f-sharp2~ |
      f-sharp4 r r2 |
      g-sharp4( \mf g f-sharp d-sharp |
      e4.) f8 f-sharp4 b, |
      g-sharp'4( g f-sharp d-sharp |
      e4) b-. e,-. r |
      r4 c-sharp'8( \f a') a4. g-sharp8 |
      f-sharp4. e8 d-sharp4 r4 |
      r4 g-sharp,8( g-sharp') g-sharp4 f-sharp8-. e-. |
      e4( \> d-sharp8) c-sharp-. c4 \! r |
      R1*2
      r4 c-sharp8( \f a') a4. g-sharp8 |
      f-sharp4. e8 d-sharp4 r4 |
      r4 g-sharp,8( g-sharp') g-sharp4( f-sharp8-.) e-. |
      e4( d-sharp8-.) c-sharp-. c4 r |
      R1*2
      r4 c-natural'!8( \mf c-sharp) c-sharp2~ |
      c-sharp2. r4 |
      r4 c8( \tweak to-barline ##f \< c-sharp) c-sharp2~ |
      c-sharp2. \! r4 |
      r4 g-sharp8-. \f 8-. 8( f-sharp) f-sharp( c-sharp') |
      c-sharp2->( c) |
      r4 f-sharp,8-. 8-. 8( e) e( d-sharp') |
      d-sharp4( c-sharp) g-sharp e |
      r4 d8( d-sharp) d-sharp2 |
      r4 d-sharp8( e) e2~( \> |
      e2 g-natural!) |
      g-sharp2( f-sharp) \! |
      f1_\markup { \italic "dol. espress." } |
      e-flat2.( g-flat4) |
      g-flat2( f) |
      f2 a-flat |
      a-flat2( g-flat~ \< |
      g-flat4 a-flat) c f |
      e-flat2( \> d-flat) \! |
      a-flat4( b-flat f a-flat) |
      g-flat1( |
      c,2.) \< b-flat'4 |
      b-flat2( \> a-flat) \! |
      a-flat2 d-flat2 |
      d-flat1 |
      c4( d-flat f, c') |
      b-flat1 \> |
      a-flat2( g-flat2) |
      f1( \p |
      e-flat2.) g-flat4 |
      g-flat2( f) |
      f2 a-flat |
      a-flat2( g-flat~ \< |
      g-flat4 a-flat) c f |
      e-flat2( \> d-flat) \! |
      a-flat4( b-flat f a-flat) |
      g-flat2. r4 |
      R1*3
      g-sharp1( \mf |
      f-sharp2.) a4 |
      a2( g-sharp) |
      g-sharp2 b |
      a2 r |
      R1
      r2 r4 c \f |
      c4.-> f-sharp,8 f-sharp4 r |
      r2 r4 d' |
      d4.-> g-sharp,8 g-sharp4 r |
      r2 r4 e' |
      e4.-> e,8 e4 r |
      r2 e~ \mf |
      e2 \< g~ |
      g2 b-flat~ |
      b-flat2 e \! |
      r4 b,8( \mf b') b2~ |
      b4 a8( g-sharp) g-sharp4 r |
      r4 b,8( \< c-sharp') c-sharp2~ \> |
      c-sharp4 b8( a) a4 g-natural! \p |
      g-sharp4 b, b'2~ \< |
      b4 a8( g-sharp) g-sharp4 \! r4 |
      r4 b,8( \f c-sharp') c-sharp2~ |
      c-sharp4 b8( a) a4 g-sharp8( f-sharp) |
      e4 r r2 |
      r2 a \mf |
      g-sharp2 r |
      r2 a \p |
      a-flat2.( g4 \tweak to-barline ##f \> |
      a-flat4 g a-flat4 g) |
      a-flat2. \! r4 |
      R1*2
      r2 g-sharp \mf |
      c-sharp1~ |
      c-sharp2 \cresc c |
      b1~ |
      b1~ |
      b2 g-sharp |
      a1~ |
      a2 g-natural! |
      g-sharp1~ |
      g-sharp2 \! r2 |
      r2 d-> \f |
      g-natural!1->~ |
      g2 g |
      c-sharp2 a |
      d2 c-sharp |
      g-sharp'2 g-sharp |
      a1 \ff |
      r4 a,( b) c-natural! |
      c1 \tweak to-barline ##f \> |
      b2( a) |
      g-sharp2. \! r4 |
      r2 a \p |
      g-sharp2. r4 |
      r2 a |
      g-sharp1 |
      b,1 \ff |
      e1~ |
      e4 r r2 | \bar "|."
    }

    #(if preserve-line-breaks? #{ \new Voice {
      s4 s1*8 \break
      s1*7 \break
      s1*8 \break
      \repeat unfold 2 { s1*9 \break }
      s1*12 \break
      \repeat unfold 2 { s1*10 \break }
      s1*11 \break
      s1*17 \break
      s1*9 \break
      s1*12 \break
      s1*9 \break
      s1*13 \break
      \repeat unfold 2 { s1*8 \break }
      s1*10 \break
      s1*9 \break
      s1*12 \break
      s1*13 \break
      s1*12 \break
      s1*10 \break
      s1*11 \break
      s1*14 \break
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
