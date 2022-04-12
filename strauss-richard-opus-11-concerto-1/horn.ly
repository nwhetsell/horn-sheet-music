\version "2.22.0"

source-url = "https://imslp.org/wiki/Horn_Concerto_No.1%2C_Op.11_(Strauss%2C_Richard)"
\header {
  composer-last-name = "Strauss"
  composer-first-name = "Richard"
  title = "Horn Concerto No. 1"
  opus = "Op. 11"
  instrument = "Horn in F"
}

\include "../titling.ily"
\include "settings.ily"

\pointAndClickOff

\layout {
  \set Score.skipBars = ##t
  \context {
    \Score
    \override Hairpin.after-line-breaking = ##t
    \override Hairpin.to-barline = ##f
    #(if preserve-line-breaks? #{
      \override NonMusicalPaperColumn.line-break-permission = ##f
    #})
    \override RehearsalMark.font-size = #0
    \override TupletBracket.bracket-visibility = #'if-no-beam
  }
}

\score {
  \new Staff <<
    \new Voice \relative {
      \language "english"

      \transposition f

      \key b-flat \major
      \time 4/4

      \once \override Score.MetronomeMark.padding = #3
      \tempo "Allegro" 4=112

      r2\fermata r4\fermata b-flat'8.^"Solo"_\markup { \dynamic "f" \italic "energico" } d16 |
      f2. \breathe d8. g16 |
      f4 d8. b-flat16 f4 \breathe b-flat8. d16 |
      c4 b-flat8. f16 d4 \breathe b-flat8. g'16 |
      f2 f, |

      \mark \markup { "Tutti" }
      R1*21

      <<
        {
          \tweak staff-position #2 R1
          d''2\rest r4 f,4^\markup { "Solo, " \italic "con espressione" }( \p \<
        }
        \new CueVoice {
          \stemUp
          <e-flat b-flat>4 \pp g\rest <e-flat g,> g\rest
          <e-flat g,> g\rest
        }
      >> |
      <<
        { f'2. d4 }
        { s4 s \> s2 }
      >> |
      b-flat2.) \! \breathe b-flat4( \< |
      e-flat4 \> d c b-flat8. c16) \! |
      b-flat4( a2) \breathe f4( \< |
      b-flat2 c4) \! f,( |
      d'2 \< e-flat4 e \! |
      f4.) r8 g2->( \> |
      c,2) \! r4 f,( \p \< |
      <<
        { f'2. d4 }
        { s4 s \> s2 }
      >> |
      b-flat2.) \! \breathe b-flat4( \< |
      e-flat4 \> d c b-flat8. c16) \! |
      b-flat4( a2) \breathe c4( \< |
      f2 e-flat |
      d4) \breathe f-. b-flat2->~( \> |
      b-flat4 f2) \breathe f4( \! |
      d4) \breathe d( b-flat \< d8 c) |
      b-flat2.( \> a4 \! |
      b-flat4) r r2 |
      r2 r4 f8( \pp g) |
      <<
        { a1( }
        {
          \override Hairpin.minimum-length = #3
          s2*2/3 \< s \> s \!
          \revert Hairpin.minimum-length
        }
      >> |
      d,4) \! r4 r2 |
      r2 r4 a'8( \pp b) |
      <<
        { c1( }
        {
          \override Hairpin.minimum-length = #3
          s2*2/3 \< s \> s \!
          \revert Hairpin.minimum-length
        }
      >> |
      f,2.) \breathe f4 \p |
      f2( a4 g8 f) |
      f4( b-flat2) \breathe b4( |
      \override DynamicLineSpanner.staff-padding = #2
      c2 \< c-sharp |
      d4) \! \breathe d( \< e-flat e |
      f2) \! \breathe f->( |
      \override DynamicLineSpanner.staff-padding = #2.5
      d4) \breathe d( \> b-flat d8 c \!) |
      b-flat2( \< a) |
      f'2. \breathe f4 \! |
      b-flat2->( f \> |
      d4) \breathe d( b-flat \< f'8 e-flat) |
      d2.( \> c4) |
      b-flat^"Tutti" \! r4 r2 |
      \revert DynamicLineSpanner.staff-padding

      R1*11

      d2->^"Solo"_\markup { \dynamic "ff" \italic "energico" } a4..-> f16-> |
      d2->~8[ \tweak Y-offset #2.5 \breathe e16-. f-.] g-. a-. b-. c-sharp-. |
      d2-> \breathe f-> |
      b-flat,,2->~8[ \tweak Y-offset #2.5 \breathe d8( f e)] |
      d8( c-sharp) a'2( g4 |
      f8)[ \tweak Y-offset #3.5 \breathe a]( d2 c8 b-flat |
      a8)[ \breathe c]( f2 \> b,4) |
      c2. \breathe c,4 \p |
      c2_\markup { \italic "dolce" }( f4. a8) |
      c2. \breathe c,4~( |
      c4 \< f a c |
      f2) \! \breathe a,4( b |
      c2) \> \breathe g4( a \! |
      b-flat2.) \breathe b-flat4( \pp |
      a2 d, |
      g2.) r4 |
      b-flat,2( c4 d |
      c4) \breathe f( \< a c) |
      f2( \> e-flat |
      d2.) \! \breathe d4( \< |
      g4 f e) \! \breathe d~( |
      d4 \> c a f) \! |
      a2.( g4) \> |
      c2. \breathe c,4 \p |
      c2( f4. a8) |
      c2. \breathe c,4~( \< |
      c4 f a c |
      f2) \! \breathe a,4( \> b |
      c8) \< d-. e2 \breathe b4( \! |
      c8.) \mf d16-. e2 \breathe b8( c |
      a8.) b16-. \< c-. d-. e-. f-. \! g2->~ |
      g4 \breathe e-flat,!2 \tweak details.accidental-collision #6 ( \> e-flat'!4) \! |

      \tuplet 3/2 4 { d4 \tweak Y-offset #1 \breathe d,8 \p d-. \< f-sharp-. a-. \! } d4-> \once \tupletUp \tuplet 3/2 { c8-. \> d-. e-flat-. \! } |
      \tuplet 3/2 4 { d4 \tweak Y-offset #1 \breathe d,8-. d-. \< f-sharp-. a-. \! } d4-> \once \tupletUp \tuplet 3/2 { c8-. \> d-. e-flat-. \! } |
      d4 r4 \tuplet 3/2 4 { r8 d,8-. e-flat'~( e-flat d) c-. } |
      \tuplet 3/2 4 { b-flat4-. d8-. d-. e-. f-. \shape #'((0 . 0.5) (0 . 0.5) (0 . 0.5) (0 . 0.5)) PhrasingSlur g,4\(( a8) b-flat4( c8)\) } |
      \override DynamicLineSpanner.staff-padding = #3
      \tuplet 3/2 4 { a4 c,8-. c-. \< f-. a-. \! } c4-> \tuplet 3/2 { g8-. \> a-. b-flat-. \! } |
      \tuplet 3/2 4 { a4 c,8-. c-. \< f-. a-. \! } c4-> \tuplet 3/2 { g8-. \> a-. b-flat-. \! } |
      \revert DynamicLineSpanner.staff-padding
      a4 r4 \tuplet 3/2 4 { r8 f-. f'~( f e) d-. } |
      \tuplet 3/2 4 {
        c4-. f8-. c-. a-. f-. \shape #'((0 . 0.5) (0 . 0.5) (0 . 0.5) (0 . 0.5)) PhrasingSlur g4\(( a8) b-flat4( c8)\) |
        a4 \breathe a8-. a( \< b-flat) c-. d-. a-. a-. a( b-flat) c-. |
      }
      d4 \f r4 r2 | \bar "||"
      \time 2/4
      \tuplet 3/2 4 { r8 c-. \f c-. c( d) e-. } | \bar "||"
      \time 4/4
      \tuplet 3/2 4 {
        f4-. d8-. b-flat-. f-. d-. b-flat4 \breathe d'8-. d( e) f-. |
        a-flat4-. f8-. d-. b-. a-flat-. f4 \breathe f8-. f( g) g-sharp-. |
        a4( f8) a4( f8) a4 \breathe a8-. \cresc a( b-flat) b-. |
        \tupletDown c4( a8) c4( a8) c4 \breathe c8-. c( d) e-. \tupletNeutral |
      }
      f4-. \breathe f-> f-> f-> |
      f4-> r4 r2 |
      f2-> \ff c4..-> a16-> |
      f2->~8[ \tweak Y-offset #3.5 \breathe g16-. a-.] b-flat-. c-. d-. e-. |
      f2-> a2-> \breathe |
      f,2-> d'2-> \breathe |
      g,1-> \breathe |
      c1-> \breathe |
      f,2->^"Tutti" r2 |

      R1*30
      <<
        {
          <> #(make-music 'DecrescendoEvent
            'span-direction START
            'span-type 'text
            'span-text "calando"
          )
          \tweak staff-position #-4 R1
          <<
            { \tweak staff-position #-6 R1 }
            { s2. s4 \! }
          >>
        }
        \new CueVoice {
          \stemUp
          f'4\rest \tuplet 3/2 { e-flat8 a c } e-flat4 f,\rest
          d4\rest \tuplet 3/2 { e-flat,8 a c } e-flat4 d\rest
        }
      >> | \bar "||"

      \key e-flat #(if andante-uses-minor-key? #{ \minor #} #{ \major #})
      \time 3/8

      \once \override Score.MetronomeMark.padding = #3
      \tempo "Andante" 8=69

      R4.*2
      b-flat4.^"Solo"( #(make-dynamic-script (markup #:dynamic "pp" #:normal-text (#:italic "dolce"))) |
      e-flat4.) |
      b-flat4.( |
      g-flat4) \breathe e-flat8( |
      \override DynamicLineSpanner.staff-padding = #2.75
      b-flat4. \< |
      b-flat'4) \! \breathe a-flat8 |
      a-flat8( \> g-flat~ \tuplet 3/2 { g-flat16 f e-flat } \! |
      \revert DynamicLineSpanner.staff-padding
      f4) \breathe b-flat,8( |
      b-flat'4. |
      e-flat4.) |
      b-flat4 \< \breathe b-flat8( |
      g-flat'4) \> f-flat8~( |
      f-flat8 e-flat8.)[ \breathe d-flat16]~( |
      d-flat8-. c c-flat) |
      b-flat4-.( \pp b-flat8-. |
      b-flat4-.) r8 |
      R4.

      r8 r b-flat16( \mp c) |
      d-flat4( b-flat8) |
      f4 \breathe f16( g |
      a-flat16 b-flat) c8-.( c-. |
      c4-.) \breathe c8 |
      e-flat4( c8) |
      a-flat4^\markup { \italic "un poco accelerando" } \cresc \breathe a-flat16( b-flat |
      c16 d e-flat8) d8( |
      g4) \breathe

      <<
        \new Voice {
          \voiceOne
          \hideNotes
          \stemDown
          e-flat16( f |
          \unHideNotes
          \stemUp
          g16 \teeny a b-flat8) f-sharp8( |
          g8)
        }
        {
          \voiceTwo
          \slurDown
          e-flat16( \f f |
          g16 g, b-flat8) a8( \dim |
          g8)
        }
      >> \oneVoice
      \breathe d'4~^\markup { \italic "calando" } |

      d8 \breathe d4~ |
      d8 \breathe b-flat4~ |
      b-flat8 r r |

      b-flat4.^\markup { \italic "a tempo" }( \pp |
      e-flat4) \breathe e-flat8( |
      b-flat4. |
      g-flat4) \breathe e-flat8( |
      b-flat4) b-flat8( \tweak to-barline ##t \< |
      b-flat'4) \breathe a-flat8 |
      a-flat8( \> g-flat~ \tuplet 3/2 { g-flat16 f e-flat } \! |
      f4) \breathe d-flat8( \p |
      b-flat'4. |
      e-flat4) \breathe e-flat8( \< |
      b-flat4) \breathe b-flat8( |
      g-flat'4) \> f-flat8~( |
      f-flat8 e-flat8.)[ \breathe d-flat16]~( |
      d-flat8-. c c-flat)
      b-flat4-.( \pp b-flat8-. |
      b-flat4-.) r8 |

      R4.*4

      r8 r f-sharp-> \ff | \bar "||"
      \key b \major
      f-sharp'4-> d-sharp8-> |
      b8.->[ \tweak Y-offset #4 \breathe f-sharp16( d-sharp e] |
      f-sharp8.)[ \tweak Y-offset #3 \breathe f-sharp16]( \noBeam \tuplet 3/2 { a-sharp16 g-sharp f-sharp } |
      b4) \breathe g-sharp16.( d-sharp32 |
      e16) e'8->( d-sharp16 c-sharp b) |
      b8[( a-sharp) \tweak Y-offset #3.75 \breathe \tuplet 3/2 { a-sharp16( g-sharp f-sharp] } |
      b4) b-sharp8 |
      c-sharp4 \breathe f-sharp,8-> |
      f-sharp'4-> d-sharp8-> |
      b8.->[ \tweak Y-offset #4 \breathe f-sharp16( d-sharp e] |
      f-sharp8.)[ \tweak Y-offset #3 \breathe f-sharp16]( \noBeam \tuplet 3/2 { a-sharp16 g-sharp f-sharp } |
      b8.)[ \breathe b16( e d-sharp] |
      b-sharp16[ c-sharp8) \breathe c-sharp16( f-sharp e] |
      d-sharp16)[ \tweak to-barline ##t \< 8 \breathe 8 \tweak Y-offset #2 \breathe e-flat16] |
      g4-> \> e-flat8 \! |
      b-flat4 \breathe \tuplet 3/2 { g16( a-flat b-flat) } |
      c4. \dim \breathe |
      d8( c b-flat) | \bar "||"
      \key e-flat #(if andante-uses-minor-key? #{ \minor #} #{ \major #})
      e-flat4.( \p |
      b-flat4) \breathe e-flat,16( f \> |
      g4.~ |
      g8) \! r8 r |

      \mark \markup { "Tutti" }
      R4.*8
      <<
        {
          \override MultiMeasureRest.staff-position = #-4
          R4.*2
          \revert MultiMeasureRest.staff-position
          g8\rest
        }
        \new CueVoice {
          \stemUp
          a'8\rest e-flat'^\markup { \right-align "Fl." } d
          c8 a\rest \tuplet 3/2 { d,16^\markup { \center-align "Ob." }( e-flat f) }
          e-flat8
        }
      >>

      d4~ \p |
      d8 \breathe b-flat4~ |
      b-flat8 r8 r |

      b-flat4.( \pp |
      e-flat4.) |
      b-flat4.( |
      g-flat4) \breathe e-flat8( |
      \override DynamicLineSpanner.staff-padding = #2.75
      b-flat4. \< |
      b-flat'4) \! \breathe a-flat8 |
      a-flat8( \> g-flat~ \tuplet 3/2 { g-flat16 f e-flat } \! |
      \revert DynamicLineSpanner.staff-padding
      f4) \breathe b-flat,8( |
      b-flat'4. |
      e-flat4) \breathe e-flat8( |
      b-flat4) \tweak to-barline ##t \< \breathe b-flat8( |
      g-flat'4) f-flat8~( |
      f-flat8 \> e-flat8.)[ \breathe d-flat16]~( |
      d-flat8-. c c-flat)
      b-flat4-.( \pp b-flat8-. |
      b-flat4-.) r8 |
      R4.
      r8 b-flat4~ \p |
      b-flat8 \breathe b-flat,4( |
      \override DynamicLineSpanner.staff-padding = #2.5
      e-flat4) \breathe g-flat8-> \< |
      g-flat'4-> \ff e-flat8 \> | \noBreak
      \revert DynamicLineSpanner.staff-padding
      b-flat4 \p \breathe b-flat8->~ |
      b-flat4 \breathe b-flat8->~ |
      b-flat4 r8\fermata | \bar "||"

      \key b-flat \major
      \time 4/4

      \once \override Score.MetronomeMark.padding = #3
      \tempo "Allegro" 4=132

      \partial 4 r4 | \noBreak
      \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
      \mark \markup { "Tutti" }
      R1*6
      <<
        {
          \override MultiMeasureRest.staff-position = #-6
          R1
          \revert MultiMeasureRest.staff-position
          e,2\rest
        }
        \new CueVoice {
          \stemUp
          \tuplet 3/2 4 {
            g4^"Viol." b-flat,8 b-flat e-flat g b-flat4 e-flat,8 e-flat g b-flat |
            e-flat4 g,8 g b-flat e-flat
          }
        }
      >>

      \tuplet 3/2 4 { r4 f,8^"Solo" \mf f b-flat d } | \bar "||"
      \time 6/8
      \tempo \markup {
        \concat {
          \bold "Rondo"
          " ("
          \smaller \general-align #Y #DOWN \note {4.} #1
          " = "
          \smaller \general-align #Y #DOWN \note {4} #1
          ")"
        }
      }
      f4.~8 d-. g-. |
      f8( d) b-flat-. f-. b-flat-. d-. |
      c4.~8 b-flat( b |
      c4.~8) \breathe c8-. d-. |
      e-flat4.~8 d-. f-. |
      e-flat8( d) c-. b-flat-. a-. g-. |
      f4.~8 a( g |
      f4.~8) \breathe b-flat8-. d-. |
      \override DynamicLineSpanner.staff-padding = #2.25
      f4.~ \< f8 e-flat8-. d-. |
      c8( b d c4) \! \breathe c8-. |
      f4.~ \< f8 e-flat8-. d-. |
      c8( b d c4) \! \breathe c8-. |
      \revert DynamicLineSpanner.staff-padding
      f4 r8 b-flat4.->~ \f |
      b-flat4 g8-. e-flat-. c-. d-. |
      e-flat4 \breathe c8-. f4.->~( |
      f4. b-flat,4) r8 |

      R2.*16
      <<
        {
          \override MultiMeasureRest.staff-position = #-4
          R2.*2
          \revert MultiMeasureRest.staff-position
        }
        \new CueVoice {
          d-flat'4. d4.
          e-flat4. e4.
        }
      >> |
      r4 c,8~^"Solo" \f \> c4 c8~ |
      c4 c8~4 c8-. |
      c4.( \tweak X-offset #0 #(make-dynamic-script (markup #:dynamic "p" #:normal-text (#:italic "espressivo"))) \< d | \noBreak
      c4. e4 d8 |
      c4. d |
      c4.) \breathe f->~( \> |
      f4. e~ |
      e4. e-flat |
      d4.) \! \breathe d~ |
      d4. \breathe d |
      d4.( \< e-flat! |
      d4. f4 e-flat8 |
      d4. e-flat
      d4.) \breathe g->~ \> |
      g4. \breathe f4\( c8 |
      a4( b-flat8) b4( c8) |
      d4. c |
      f,4\) \! r8 r4. |

      f2.( \pp |
      g-flat4. g |
      a-flat2.~ |
      a-flat4.) \breathe a-flat( |
      d-flat2. |
      c2.) |
      c4.( b-flat |
      a-flat4.) \breathe g-flat( |
      f2. |
      g-flat4. g |
      a-flat2.~ |
      a-flat4.) \< \breathe a-flat( |
      f'2. \! |
      e-flat2.~) |
      e-flat4. \> \breathe d-flat~( |
      d-flat4. \! c~ |
      c4.) \breathe b-flat~( |
      b-flat4. a-flat) |
      a-flat2.~ |
      a-flat4. g4( f8 |
      e8) r8 r r4. |

      R2.*2

      \override DynamicLineSpanner.staff-padding = #3.25
      r4. r8 g-. \mf c-. |
      e2. \dim |
      c4. g4 e8 |
      c2.~ |
      c4 \breathe c8-. \tweak X-offset #0 #(make-dynamic-script (markup #:dynamic "mf" #:normal-text (#:italic "energico"))) c-. f-. a-. |
      \revert DynamicLineSpanner.staff-padding
      c4.( a |
      f4.~4) c8 |
      f2.~ |
      f4 \breathe c8-. c-. f-. a-. |
      c4.( a |
      f4.~4) c8 |
      f2.~ |
      f4 \breathe f8-. f-. b-flat-. d-. |
      f2.~ |
      f4. \breathe e( |
      d4. c |
      e4.) d( |
      g,4. a4 b-flat8 |
      d2.~ |
      d4.) \breathe b-flat( |
      a4. g-sharp |
      a4) r8 r4. |
      R2.*2
      r4 c,8-. \mf c-. f-. a-. |
      c4.( a |
      f4.~4) c8 |
      f2.~ |
      f4 \breathe f8-. f-. b-flat-. d-. |
      f2.~ |
      f4. \breathe e( |
      d4. c |
      e4.) d( |
      c4.) \breathe a4( f8 |
      c'4.) b-flat4.( \> |
      a2.~ |
      a4.) \! \breathe g4.( |
      f8) f-. \pp a-. c4.~ |
      c8 8-. 8-. 8-. 8-. 8-. |
      c4 r8 r4. |
      R2.*2
      r8 f,-. \< b-flat-. d4.( |
      e-flat8) f,-. c'-. e-flat-. \! r8 r8 |
      r8 f,-. \pp f-. f-. b-flat-. d-. | \bar "||"

      \time 4/4
      \tempo \markup {
        \concat {
          \smaller \general-align #Y #DOWN \note {4.} #1
          " = "
          \smaller \general-align #Y #DOWN \note {4} #1
        }
      }
      f2. \breathe d8. g16 |
      f4 d8. b-flat16 f4 \breathe b-flat8. d16 |
      c2.^\markup { \italic "un poco calando" } \breathe 8. 16 |
      \partial 2. c2.\fermata | \bar "||"

      \time 6/8
      \tempo "Tempo I"
      \partial 4. r4._"Tutti" | \noBreak
      R2.*12
      b-flat4.^"Solo"( \tweak X-offset #0 #(make-dynamic-script (markup #:dynamic "p" #:normal-text (#:italic "espressivo"))) \< c |
      b-flat4. d4 c8 |
      b-flat4. c |
      b-flat4.) \breathe e-flat->~( \> |
      e-flat4. d~ |
      d4. d-flat |
      c4.) \! \breathe c~ |
      c4. \breathe c |
      c4.( \< d-flat |
      c4. e-flat4 d-flat8 |
      c4. d-flat |
      c4.) f->~ \> |
      f4. \breathe e-flat4\( b-flat8 |
      g4( a-flat8) a4( b-flat8) |
      c4. b-flat |
      e-flat,4\) \! r8 r4. |

      e-flat2.( \pp |
      f-flat4. f |
      g-flat2.~ |
      g-flat4.) \breathe g-flat( |
      c-flat2. |
      b-flat2.) |
      b-flat4.( a-flat |
      g-flat4.) \breathe f-flat( |
      e-flat2. |
      f-flat4. f |
      g-flat2.~ |
      g-flat4.) \breathe g-flat( \tweak to-barline ##t \< |
      e-flat'2. |
      d-flat2.~) \> |
      d-flat4. \! \breathe c-flat~( |
      c-flat4. b-flat~ \! |
      b-flat4.) \breathe a-flat~ |
      a-flat4. \breathe g-flat~ |
      g-flat2.~( |
      g-flat4. \> f |
      e-flat4) \! r8 r4. |

      \mark \markup { "Tutti" }
      R2.*14
      <<
        {
          \override MultiMeasureRest.staff-position = #-4
          R2.
          \revert MultiMeasureRest.staff-position
          g4.\rest g8\rest
        }
        \new CueVoice {
          \stemUp
          c-flat4( e-flat8) c-flat4 a-flat'8(
          e-flat8) c-flat' a-flat e-flat'
        }
      >>

      b-flat,8-.^"Solo" \f d-. |
      f4.~8 d-. g-. |
      f8( d) b-flat-. f-. b-flat-. d-. |
      c4.~8 b-flat( b |
      c4.~8) \breathe c8-. d-. |
      e-flat4.~8 d-. f-. |
      e-flat8( d) c-. b-flat-. a-. g-. |
      f4.~8 a( g |
      f4.~8) \breathe b-flat8-. d-. |
      f4.~8 e-flat8-. d-. |
      c8( b d c4) \breathe c8-. |
      f4.~ \< f8 e-flat-. d-. |
      c8( b d c4) \breathe c8-. |
      f4 r8 b-flat4.->~ \ff |
      b-flat4 g8-. e-flat-. c-. d-. |
      e-flat4 \breathe c8-. f4.->~( |
      f4. b-flat,4) r8 |

      \mark \markup { "Tutti" }
      R2.*18
      <<
        {
          \override MultiMeasureRest.staff-position = #-4
          R2.*2
          \revert MultiMeasureRest.staff-position
        }
        \new CueVoice {
          \stemDown
          b-flat''8
            -\tweak control-points #'((-1.6 . 7.7) (-1 . 8.2) (-0.3 . 8.2) (0.3 . 7.7)) ( <> )
            b-flat, b-flat'~8 b-flat, b-flat'~
          b-flat8 b-flat, b-flat'~8 b-flat, b-flat'
            -\tweak control-points #'((0.3 . 7.7) (0.9 . 8.2) (1.6 . 8.2) (2.2 . 7.7)) ( <> )
        }
      >> | \bar "||"

      \time 4/4
      \tempo \markup {
        \override #'(baseline-skip . 2)
        \left-column {
          \concat {
            "Mit freiem Vortrag ("
            \smaller \general-align #Y #DOWN \note {4.} #1
            " = "
            \smaller \general-align #Y #DOWN \note {4} #1
            ")"
          }
          \normal-text \tiny "(With free performance)"
        }
      }
      r4 f,2->_\markup { \dynamic "ff" \italic "maestoso" } e-flat8( d) |
      c8( b-flat) b-flat4~8[ \breathe d( c b-flat)] |
      b-flat8( d,) d4~8[ \breathe c \dim b-flat g] |
      f2. e-flat4 |
      d4 \! \breathe f''2-> \f \> e-flat8( d) |
      c8( b-flat) \! b-flat4~8[ \breathe d( c b-flat)] |
      b-flat8( d,) d4~( d8[ \breathe d' c b-flat]) |
      \tuplet 3/2 4 { b-flat4 \< \tweak Y-offset #1 \breathe d,8 f b-flat d } f2~ \ff |
      f4 \breathe d2 \dim b-flat4~ |
      b-flat4 \breathe b-flat2-.^\markup{ \italic "rit." }( b-flat4-.) |
      f2^\markup{ \italic "Lento" } \! r |
      R1_\markup { \italic "rit." } \bar "||"

      \time 6/8
      \tempo "Tempo I, un poco più mosso"
      r4 f8-._\markup { \italic "con bravura" } e( f) b-flat-. | \noBreak
      d8( c) b-flat-. a( b-flat) g-. |
      f8 r f-. e( f) b-flat-. |
      d8( c) b-flat-. a( b-flat) g-. |
      f8 r b-flat( \acciaccatura c b-flat a b-flat) |
      d4 b-flat8( \acciaccatura c b-flat a b-flat) |
      d4 \tweak to-barline ##t \< \breathe d,8-. f-. b-flat-. d-. |
      f4.~ \f f4 r8 |
      r4 f,8-. \mf e( f) b-flat-. |
      d8( c) b-flat-. a( b-flat) g-. |
      f8 r f-. e( f) b-flat-. |
      d8( c) b-flat-. a( b-flat) g-. |
      f8 r b-flat( \acciaccatura c b-flat a b-flat) |
      d4 b-flat8( \acciaccatura c b-flat a b-flat) |
      d4 \tweak to-barline ##t \< \breathe d,8-. f-. b-flat-. d-. |
      f4.~( \> f4 e-flat8 |
      d4) \! r8 r4. |
      R2.
      r4 b-flat8-. e-flat4-. e-flat,8-. |
      b-flat'4 a8~( \< a b-flat) c-. \> |
      d4 r8 \! r4. |
      R2.
      r4 b-flat8-. e-flat4-. e-flat,8-. |
      b-flat'8( \< a) b-flat-. c( f) e-flat-. \! |
      d4 \breathe d8-. d( \< c-sharp d |
      e-flat4) \! d8-. c!( \tweak to-barline ##t \> b-flat) a-. |
      b-flat8( \tweak to-barline ##t \< f) d-. f( b-flat) d-. |
      f8( \> e-flat) d-. c( b-flat) a-. \! |
      b-flat4. \breathe b-> \cresc | #(if (not preserve-line-breaks?) #{ \noBreak #})
      c4.-> c-sharp-> |
      d4.-> d-> |
      e-flat4.-> e-> |
      f4-> r8 f4->( \f d8) |
      f4->( d8) f4->( d8) |
      f4-> e8( f) d-. b-flat-. |
      f4 r8 r4. |
      r4. f'4->( \f d8) |
      f4->( d8) f4->( d8) |
      f4-> b-flat8-. f( d) b-flat-. |
      f4 r8 r4. |
      r4 b-flat,8 \p b-flat( d) f-. | % The staccato on the last 8th note is in the score.
      b-flat2.~ |
      b-flat4 \breathe d,8 d( f) b-flat-. |
      d2.~ \cresc |
      d8 b-flat-. d-. f4.~ |
      f8 \breathe b-flat,-. d-. f4.~ |
      f4 \breathe f8~4 f8~ |
      f4 f8~4 f8~ |
      f4 \breathe f8-. \f <b-flat \tweak font-size #-2 \parenthesize d,>( f) d-. |
      b-flat8( d) b-flat-. f d b-flat |
      f4 r8 f''4.->~ \ff |
      f4. e-flat8 d c |
      b-flat4 r8 r4. | \bar "|."
    }

    #(if preserve-line-breaks? #{ \new Voice {
      s1*26 \break
      \repeat unfold 3 { s1*8 \break }
      s1*7 \break
      s1*18 \break
      s1*6 \break
      \repeat unfold 3 { s1*7 \break }
      s1*5 \break
      \repeat unfold 2 { s1*3 \break }
      s1*4 \break
      s2 s1*3 \break
      s1*5 \break
      s1*37 \break

      s4.*10 \break
      s4.*9 \break
      \repeat unfold 3 { s4.*8 \break }
      s4.*10 \break
      s4.*7 \break
      s4.*8 \break
      s4.*16 \break
      \repeat unfold 2 { s4.*12 \break }
      s4.*5 s4 s1*8 \break

      \repeat unfold 2 { s2.*6 \break }
      s2.*22 \break
      \repeat unfold 2 { s2.*8 \break }
      s2.*9 \break
      s2.*10 \break
      s2.*9 \break
      s2.*8 \break
      \repeat unfold 3 { s2.*9 \break }
      s2.*7 \break
      s1*3 s2. s4. s2.*14 \break
      s2.*9 \break
      s2.*8 \break
      s2.*10 \break
      s2.*22 \break
      \repeat unfold 2 { s2.*7 \break }
      s2.*24 \break
      \repeat unfold 2 { s1*6 \break }
      s2.*6 \break
      s2.*7 \break
      s2.*9 \break
      s2.*7 \break
      \repeat unfold 2 { s2.*8 \break }
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
