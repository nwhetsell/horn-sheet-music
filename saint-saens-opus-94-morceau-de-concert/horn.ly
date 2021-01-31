\version "2.22.0"

source-url = "https://imslp.org/wiki/Morceau_de_Concert,_Op.94_(Saint-Sa%C3%ABns,_Camille)"
\header {
  composer-last-name = "Saint-Saëns"
  composer-first-name = "Camille"
  title = "Morceau de Concert"
  opus = "Op. 94"
  instrument = "Horn in F"
}

\include "../titling.ily"
\include "settings.ily"

\pointAndClickOff

\layout {
  \set Score.skipBars = ##t
  \context {
    \Score
    #(if preserve-line-breaks? #{
      \override NonMusicalPaperColumn.line-break-permission = ##f
    #})
  }
}

show-bar-number = #(define-music-function (music) (ly:music?)
#{
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  $music
  \revert Score.BarNumber.break-visibility
#})

\score {
  \new StaffGroup
  \with {
    \remove "System_start_delimiter_engraver"
  }
  <<
    \new Staff = "main" <<
      \new Voice \relative {
        \language "english"

        \transposition f

        \key c \minor
        \time 3/4

        \once \override Score.MetronomeMark.padding = #3
        \tempo "Allegro moderato"

        R2.*4

        g'8. \f c16 e-flat8. d16 c8. b-flat32 a-flat |
        g8. c,16 e-flat4 r8 e-flat^> |
        d8-> e-flat-> f-> g-> a-flat-> c-> |
        b4-> g-> r |
        e-flat8-. c-. a-flat'2-> |
        a-flat8-. f-. c'2-> |
        \override Script #'avoid-slur = #'inside
        e-flat4->( d-> c->) |
        \revert Script #'avoid-slur
        g2. |
        g8. \f c16 e-flat8. d16 c8. b-flat32 a-flat |
        g8. c,16 e-flat4 r8 e-flat-> |
        d8-> e-flat-> f-> g-> a-flat-> c-> |
        b4-> g-> r |
        g8( e c g' c b-flat) |
        a8( d c b c4)
        e-flat8-> d-> c4-> b-> |
        c2. |
        R2.*4
        \show-bar-number
        b-flat8 \mf c16 d e-flat8 4 8 |
        e-flat4( d2) |
        g,8 a-flat16 b-flat c8 4 8 |
        c4( b-flat2) |
        b-flat8( \p g e-flat b-flat c d) |
        e-flat8( f g a-flat b-flat c) |
        <<
          { d-flat2.( }
          {
            \override Hairpin.minimum-length = #3
            s4 \< s \> s \!
            \revert Hairpin.minimum-length
          }
        >> |
        c8)\noBeam b->( c2) |
        r8 b->( c2) |
        r8 c4 c4 d8 |
        b4 r g4~ \< |
        g4  a-flat a~ |
        a4 b-flat b |
        c8.-^ \f g16 e-flat'8.-^ d16 c8.-^ b-flat32 a-flat |
        g8. c,16 e-flat4 r8 e-flat-> |
        d8-> e-flat-> f-> g-> a-flat-> c-> |
        b4-> g-> r |
        e-flat8-. c-. a-flat'2-> |
        a-flat8-. f-. c'2-> |
        \override Script #'avoid-slur = #'inside
        e-flat4->( d-> c->) |
        \revert Script #'avoid-slur
        g2. |

        R2.*11

        \show-bar-number
        \tuplet 3/2 4 { g8( \tweak X-offset #-1 \p c) e-flat e-flat( d) c c( b-flat) a-flat } |
        \tuplet 3/2 { a-flat8( g) c, } e-flat4 r8 c |
        \tuplet 3/2 4 { d8( f) e-flat d( f) g a-flat( d) c } |
        b4( g) r |
        \tuplet 3/2 { e-flat8( c e-flat) } g2 |
        \tuplet 3/2 { a-flat8( f a-flat) } c2 |
        \tuplet 3/2 4 { e-flat8( c e-flat) d( b d) c( a c) } |
        g2 r4 |
        \tuplet 3/2 { g8( \tweak X-offset #-1 \f c) e-flat } \acciaccatura f8 \tuplet 3/2 { e-flat( d c) } \acciaccatura d8 \tuplet 3/2 { c( b-flat a-flat) } |
        \acciaccatura b-flat8 \tuplet 3/2 { a-flat8( g e-flat) } c4. 8 |
        \tuplet 3/2 4 { f,8( a-flat c f a-flat c e-flat d c) } |
        b4( g) r |
        \tuplet 3/2 4 { g8( e c g c e g c b-flat) } |
        \tuplet 3/2 4 { a8( d c b a b } c4) |
        \tuplet 3/2 { c8( e-flat d) } c4 b |
        c2 r4 |
        \tuplet 3/2 { b-flat8( \tweak X-offset #-1 \p c d } e-flat8) 4 8 |
        \tuplet 3/2 { e-flat8( d c } d2) |
        \tuplet 3/2 { g,8( a-flat b-flat } c8) 4 8 |
        \tuplet 3/2 { c8( f, c' } b-flat2) |
        \tuplet 3/2 4 {
          b-flat8( g e-flat b-flat g a-flat b-flat c d |
          e-flat8 f g a-flat b-flat c d e-flat b-flat) |
        }
        d-flat2.->( |
        \tuplet 3/2 { c8)\noBeam b->( c) } c2 |
        \tuplet 3/2 { r8 b->( c) } c2 |
        \tuplet 3/2 4 { e-flat8( c e-flat) d( b d) c( a c) } |
        g2. |

        R2. \bar "||"
        \once \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
        \once \override Score.RehearsalMark.font-size = #0
        \mark \markup {
          \center-column {
            \small \italic "On peut passer au signe"
            \small "(We can go to the sign)"
            \vspace #0.1
            \musicglyph #"scripts.coda"
          }
        }
        R2.*10

        \show-bar-number
        c,16 \f e-flat g c e-flat8-> d16 c b-flat( c) b-flat a-flat |
        g16( a-flat) g e-flat c4 r8 c16 16 |
        d8 e-flat16 16 f8 g16 16 a-flat8 c16 16 |
        b4-> g-> r |
        e-flat16( c) g'-. g-. g2-> |
        a-flat16( f) c'-. c-. c2-> |
        e-flat8-> c16 e-flat d8-> b16 d c8-> a16 c |
        g2.-> |
        c,16 e-flat g c e-flat8-> f16 e-flat d c b-flat a-flat |
        g16 c g e-flat c4 r8 c |
        d16 e-flat f g a-flat8 f'-> d-> c-> |
        b4-> g-> r |
        c,8 e16 g c8-. c,-. c'-. b-flat-. |
        a8 d8->~8 c16 b c4 |
        c16 f e-flat d c4-> b-> |
        c4-> r r |
        e-flat,8 f16 g a-flat b-flat c d e-flat8-. e-flat-. |
        e-flat4( d2) |
        c,8 d16 e-flat f g a-flat b-flat c8-. c-. |
        c4( b-flat2) |
        b-flat8 b-flat,4-> b-flat8->~8 c16 d |
        e-flat16 d e-flat f g f g a-flat b-flat a-flat b-flat c |
        d-flat2. |
        c8-.\noBeam b16->( c) c2 |
        r8 b16->( c) c2 |
        e-flat8( f16 e-flat) d8( e-flat16 d) c8( d16 c) |
        g2. |

        R2. \bar "||"
        \once \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
        \once \override Score.RehearsalMark.font-size = #0
        \mark \markup { \musicglyph #"scripts.coda" }
        R2.*10

        <<
          {
            s2. |
            s2. |
            s2. |
            \tempo \markup { \combine
              "Rit."
              \transparent "g" % This aligns the baselines of “Rit.” and “Adagio”.
            }
            s2. | \bar "||"
          }
          \new CueVoice {
            \stemUp
            <a, c f>4^"Piano" <a' c f> r |
            <b-flat, f' b-flat>4 <b-flat' d f b-flat> r |
            <<
              \new CueVoice {
                \voiceOne
                c-flat4( b-flat a-flat~ |
                a-flat4 g2) |
              }
              \\
              \new CueVoice {
                \voiceTwo
                \stemUp
                \shiftOn
                f2. |
                \dotsUp e-flat2. \dotsNeutral |
              }
              \\
              \new CueVoice {
                \voiceThree
                \stemDown
                \slurDown
                a-flat,4( b-flat c-flat) |
                b-flat2( c8 d) |
              }
            >>
          }
        >>

        \time 4/4
        \tempo "Adagio"
        \show-bar-number
        r16 b-flat'( \p c b-flat a b-flat d c b-flat2) |
        r16 b-flat( \pp c b-flat a b-flat d c b-flat2) |
        \override DynamicLineSpanner.staff-padding = #2.9
        r16 b-flat( \p \< e-flat d c b-flat a-flat g c2) |
        r16 \! c( \> f c b-flat a-flat g f b-flat2) \! |
        \revert DynamicLineSpanner.staff-padding
        r4 e-flat,_\markup { \italic "espressivo" }( f d-flat' |
        c4 a-flat8 b-flat c-flat4 b-flat8 a-flat |
        g4) e-flat-+( \pp f d-flat' |
        c4 a-flat8 b-flat c-flat4 b-flat8 a-flat |
        g4) r4 r2 |
        r16 b-flat,\open( \p \< c b-flat a b-flat d \> c b-flat2) \! |
        r16 b-flat( \p \< c b-flat a b-flat d \> c b-flat2) \! |
        r16 b-flat16( a-flat' g f e-flat d c b-flat8) a-flat-> g-> f-> |
        e4-> \f d-flat''4->~8 g,16( a-flat b-flat8 a-flat16 g |
        d-flat'4-> c4~8) f,16( \> g a-flat8 g16 f |
        c'8 \p b-flat4) e-flat,8( b-flat' a-flat4) e-flat8 |
        g8( b-flat, c e-flat) g4( f) |
        \show-bar-number
        e-flat4 r r8 d'( \< e-flat f |
        \override Script #'avoid-slur = #'inside
        b,4-> c) r8 e-flat( f g |
        c-sharp,4-> d) \! r2 |
        \revert Script #'avoid-slur
        r2 e,, |
        \clef "bass"
        f4.( \< e-flat!8) d2 |
        e-flat4( \mf d c d8 e-flat) |
        b-flat1( \tweak to-barline ##f \> |
        e-flat4) \! r r2 |
        R1
        \clef "treble"
        r4 e-flat'( \pp b-flat' g |
        a-flat4. g8 f a-flat b-flat c-flat |
        b-flat4) r d,8( f g a-flat |
        g4) r a-flat8( f d c-flat |
        b-flat4) r g2 |
        \clef "bass"
        e-flat1\fermata |
        R1\fermata \bar "||"

        \time 2/2
        \set Timing.beamExceptions = \beamExceptions { \tuplet 3/2 4 { 8[ 8 8] 8[ 8 8] 8[ 8 8] 8[ 8 8] } }
        \tempo "Allegro non troppo"
        \show-bar-number
        R1*14

        <<
          {
            \clef "treble"
            s1 |
            s1 | \bar "||"
          }
          \new CueVoice {
            <a-flat' c e-flat a-flat>4->^"Piano" r <g b-flat d g>-> r |
            <f a-flat c f>4-> r <e g c e>-> r |
          }
        >>

        \key c \major
        \tempo "Cantabile"
        \clef "bass"
        \show-bar-number
        c,4( \p \< g' \clef "treble" c e |
        g4 c d e |
        f1~) \f \> |
        f1 |
        e4( \p c g e' |
        e-flat1->~) |
        e-flat4( d-flat e-flat f |
        c2 b4) r |
        \clef "bass" c,,4( \p \< g' \clef "treble" c e |
        g4 c d e |
        f1~) \f \> |
        f1 |
        e4( \p c g e' |
        e-flat1->~) |
        e-flat4( d-flat e-flat f |
        c2 b4) r |
        \show-bar-number
        r2 g( |
        a2 c |
        b4 f'2-> d4->~ |
        d4 a2-> g4) |
        g2 a4( b8 c) |
        g2.( f4 |
        e4) r g2( |
        a2 c |
        b4 f'2-> d4->~ |
        d4 a2-> g4) |
        g2 a4( b8 c) | \bar "||"
        \once \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
        \mark \markup {
          \center-column {
            \small \italic "On peut passer au signe"
            \vspace #0.1
            \musicglyph #"scripts.coda"
          }
        }
        c2( b4 b-flat |
        a4) r r2 |

        <<
          {
            r4 d,8-. \mf f-sharp-. a-. d-. f-sharp-. a-. |
            g4-. r r2 |
            r4 c,,8-. e-. g-. c-. e-. g-. |
            f4-. r r2 |
            r4 c~( \f c8 d16 e f g a b |
            c4) g8-. e-. c-. g-. e-. c-. |
          }

          \new Staff
          \with {
            \remove "Time_signature_engraver"
            alignAboveContext = "main"
            fontSize = #-3
            \override StaffSymbol.staff-space = #(magstep -3)
            \override StaffSymbol.thickness = #(magstep -3)
          }
          {
            r4 d8-. d-. f-sharp-. f-sharp-. a-. a-. |
            d4-. r r2 |
            r4 c,8-. c-. e-. e-. g-. g-. |
            c4-. r r2 |
            r4 c2-> c'4~ |
            c4 \stopStaff
          }
        >>

        g,,4 r c'2~ \> |
        c8( \p a b c b d g-sharp, b) |
        a8( \< c b a b d c b) |
        \override Script #'avoid-slur = #'inside
        g'4->( \mf e-> c-> g->) |
        \revert Script #'avoid-slur
        b4( a b c) | \bar "||"
        \once \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
        \mark \markup { \musicglyph #"scripts.coda" }
        c2->( g4) r |
        \override Script #'avoid-slur = #'inside
        r4 g->( g-> g->) |
        \revert Script #'avoid-slur
        g'1-^( |
        g,4) r r2 |
        r4 \tuplet 3/2 4 { c,8( \f e g) c( d) c b( c) b } |
        \tuplet 3/2 4 { a8( b) a g( a) g f( g) f e( f) e } |
        \tuplet 3/2 4 { d8( f-sharp) a c( b) a } d2 |
        \tuplet 3/2 4 { g,8( b) d f( e) d } g2 |
        r4 \tuplet 3/2 4 { e,8 g c e( f) e d( e) d } |
        \tuplet 3/2 4 { c8( d) c b( c) b a( b) a g( a) g } |

        <<
          {
            \tuplet 3/2 4 { f-sharp8( a) c d( f-sharp) a } c2 |
            \tuplet 3/2 4 { f,,8( g) b d( f) g } b2 |
          }

          \new Staff
          \with {
            \remove "Clef_engraver"
            \remove "Time_signature_engraver"
            alignAboveContext = "main"
            fontSize = #-3
            \override StaffSymbol.staff-space = #(magstep -3)
            \override StaffSymbol.thickness = #(magstep -3)
          }
          {
            \tuplet 3/2 4 { f-sharp,8( a) c] e( d) c } d2 |
            \tuplet 3/2 4 { f8( e) d c( b) a } g2 |
          }
        >>

        \tuplet 3/2 4 {
          \show-bar-number
          g8( c) c c( b) b b( d) d d( c) c |
          c8( e) e e( d) d d( f) f f( e) e |
        }
        e4 \tuplet 3/2 4 { e8( d) c e( d) c e( d) c } |
        \tuplet 3/2 4 { e8( \< d c) e( d c) e( d c) e( d c) } |
        e4 \! r r2 |
        r2 g,4._\markup { \dynamic "ff" \italic "tutta forza" } e8 |
        c'4 r c4. g8 |
        e'4 r e4. c8 |
        g'1-^~ |
        \tempo "Rit."
        g4 f-sharp-^ f-^ e-^ |
        \tempo "A tempo"
        d1\startTrillSpan |
        \afterGrace d1 { c16[ \stopTrillSpan d] } |
        c4 r r2 |
        r4 g,8-. c-. e-. g-. c-. e-. |
        g4 c,,8-. e-. g-. c-. e-. g-. |
        c4 r r2 |
        R1 \bar "|."
      }

      #(if preserve-line-breaks? #{ \new Voice { \include "line-breaks/horn.ily" } #})
    >>
  >>
}

\pageBreak

\colophon
