\version "2.24.0"

\include "definitions.ily"
\include "flute-1.ily"
\include "flute-3.ily"
\include "horn-1.ily"
\include "horn-3.ily"
\include "outline-1.ily"
\include "outline-3.ily"

\layout {
  indent = 0.5\in

  \context {
    \PianoStaff
    \consists #Span_stem_engraver
  }
  \context {
    \Score
    \override TupletBracket.bracket-visibility = #'if-no-beam
  }
}

\score {
  \header { piece = "1. Nocturne" }
  <<
    \new Staff \with {
      instrumentName = "Flute"
      fontSize = #-3
      \override StaffSymbol.staff-space = #(magstep -3)
    } {
      <<
        \flute-one
        \outline-one
      >>
    }

    \new Staff \with {
      instrumentName = "Horn in F"
      fontSize = #-3
      \override StaffSymbol.staff-space = #(magstep -3)
    } {
      <<
        \horn-one
        \transpose f c' {
          \outline-one
        }
      >>
    }

    \new PianoStaff \with {
      instrumentName = "Piano"
      connectArpeggios = ##t
    }
    <<
      \new Staff="up" <<
        \new Voice \relative {
          \language "english"

          <<
            \repeat unfold 2 {
              <<
                \repeat percent 4 { b-flat'''16 b-flat, b-flat, b-flat' }
                \\
                { }
              >> |
            }
            {
              s1 |
              \repeat percent 3 { s1 | }
            }
          >>

          <<
            \repeat unfold 3 {
              <<
                { \repeat percent 2 { b-flat'16 b-flat, b-flat, b-flat' } \repeat unfold 2 { a' a, a, a' } }
                \\
                { }
              >> |
            }
            {
              s1*2 |
              \repeat percent 4 { s1 | }
            }
          >>

          \repeat percent 2 {
            <<
              { \repeat percent 2 { b'16 b, b, b' } \repeat unfold 2 { a' a, a, a' } }
              \\
              { }
            >> |
          }

          % One bar after rehearsal mark 1
          \repeat unfold 2 {
            \repeat percent 2 {
              <<
                { \repeat percent 2 { b'16 b, b, b' } \repeat unfold 2 { c-sharp' c-sharp, c-sharp, c-sharp' } }
                \\
                { }
              >> |
            }
          }

          <<
            { e-flat'16 e-flat, e-flat, e-flat'
            b-flat' b-flat, b-flat, b-flat' \repeat unfold 2 { a' a, a, a' } }
            \\
            { }
          >> |

          \repeat percent 4 {
            <<
              { \repeat percent 2 { b-flat'16 b-flat, b-flat, b-flat' } \repeat unfold 2 { a' a, a, a' } }
              \\
              { }
            >> |
          }

          <e-flat g b-flat e-flat>8->\arpeggio 4-.( 8-.) <c-sharp e a c-sharp>8->\arpeggio 4-.( 8-.) |
          <b-flat e-flat! g b-flat>8\arpeggio 4-.( 8-.) <a c-sharp e a>8\arpeggio 4-.( 8-.) |

          % 2
          <g d-flat' g>8-.\arpeggio( 4-. 8-.) <f d-flat' f>8-.( 4-. 8-.~ |
          q8) <f d-flat'? f>4-.( <f d-flat' f>4-. 4-. 8-.) |

          <<
            {
              <<
                {
                  \voiceTwo
                  e-flat2-1
                }
                {
                  \voiceOne
                  s4
                  \hideNotes
                  \showStaffSwitch
                  \change Staff="up2"
                  b-flat'''
                  \unHideNotes
                  \hideStaffSwitch
                  \change Staff="up"
                }
              >> \oneVoice s2 |
              <<
                {
                  e-flat,,,2 r4 <a d-flat f> |
                  e-flat2 r4 <b-flat' g-flat'> |
                }
                \\
                { }
              >>
              r4 <g-flat e-flat'> r <a-flat c-flat f> |

              r4
              <<
                { <b-flat g-flat'> r q }
                \\
                { }
              >> |

              r4
              <<
                { <a g-flat'> r q }
                \\
                { }
              >> |

              <<
                {
                  r4 <a-flat! g-flat'> r q |
                  % 3
                  r4 <b-flat f'> r q |
                  r4 <a-flat f'> r q |
                  r4 <b-flat f'> r q |
                  r4 <a-flat c-flat f> r q |
                  r4 <a-flat e-flat'> r <a d-flat f> |
                  r4 <b-flat e-flat> r <b-flat f'> |
                }
                \\
                {
                  \repeat unfold 2 {
                    <f, e-flat'>2( d-flat') |
                    e-flat2( d-flat) |
                  }
                  <f, c-flat' e-flat>2 d-flat' |
                  <a-flat e-flat'>2( d-flat) |
                  <b-flat e-flat>2( d-flat) |
                }
              >>

              r4 <f a-flat e-flat'> r <f a d-flat> |
              r4 <f b-flat e-flat> r <f b-flat d-flat> |
              <f, c-flat' e-flat>2 <f' c-flat'> |
            }

            \new Staff="up2" \with {
              \remove Time_signature_engraver
              alignAboveContext = "up"
            } {
              \key d-flat \major
              <<
                { s4 \ottava #1 }
                {
                  \repeat unfold 13 { r4 <e-flat'' e-flat'> r <d-flat d-flat'> } |
                  \repeat unfold 6 { r8 e-flat,-. e-flat'-. e-flat'-. } |
                  \ottava #0
                }
              >>
            }
          >>

          <<
            {
              f,,,8( g-flat a-flat b-flat~8 b c d-flat~ |
              d-flat8\noBeam \stemDown <b b'> <c! c'!> <d-flat d-flat'>~8 <c c'> <d-flat d-flat'> <d d'> \stemNeutral |

              % 4
              <e-flat g! b-flat e-flat>4)
            }
            \\
            {
              f,4 e-flat a-flat g-flat |
              a-flat4
            }
          >>
          <<
            { b-flat''16 b-flat, b-flat, b-flat' \repeat unfold 2 { a' a, a, a' } }
            \\
            { }
          >> |

          \repeat percent 3 {
            <<
              { \repeat percent 2 { b-flat'16 b-flat, b-flat, b-flat' } \repeat unfold 2 { a' a, a, a' } }
              \\
              { }
            >> |
          }

          \repeat percent 2 {
            <<
              { \repeat percent 2 { b-flat'16 b-flat, b-flat, b-flat' } \repeat unfold 2 { a'[ a, r a] } }
              \\
              { s2 s8 e-flat4( d-flat8) }
            >> |
          }
          <<
            \repeat percent 4 { b-flat''16 b-flat, b-flat, b-flat' }
            \\
            { }
          >> |
          R1
        }

        \outline-one
      >>

      \new Dynamics {
        s1 \p |
        s1 \< |
        s1 \> |
        s1 |
        s1 \p |
        s1*5 |
        s1 #(make-music 'CrescendoEvent 'span-direction START 'span-type 'text 'span-text "poco cresc.") |
        s1 \! |
        s2 \< s2 \> |
        s1 \! |
        s1 |
        s1 \> |
        s4 \! s2. \p |
        s1 #(make-dynamic-script (markup #:normal-text (#:italic "più") #:dynamic "f")) |
        s1*7 |
        s1 \p |
        s1*4 |
        s1 \< |
        s1 \! |
        s1*2 |
        s1 \< |
        s1 |
        s1 \! |
        s1*4 |
        s1 \< |
        s2 \! s \> |
        s1 \! |
        s1*3 |
        s1 \dim |
        s1*2 |
        s1 \! |
      }

      \new Staff="down" <<
        \new Voice \relative {
          \clef "bass"

          <<
            { R1*4 }
            \\
            \repeat unfold 2 {
              s8 \change Staff="up" b-flat'16 \change Staff="down" s s2. |
            }
          >>

          <<
            \repeat unfold 3 {
              <<
                { <e-flat,,, b-flat' g'>4 }
                \\
                { s8 \change Staff="up" b-flat'''16 s \change Staff="down" }
              >>
              r4
              <<
                { d-flat,2 }
                \\
                {
                  <<
                    { a8 a' b, a' }
                    { \repeat unfold 2 { s8 \change Staff="up" s \change Staff="down" } }
                  >>
                }
              >> |
            }
            {
              s1*2 |
              \repeat percent 4 { s1 | }
            }
          >>

          \repeat percent 2 {
            <<
              { <b,, g' e-flat'>4 }
              \\
              { s8 \change Staff="up" b''16 s \change Staff="down" }
            >>
            r4
            <<
              { }
              \\
              {
                <<
                  { <f,, d-flat' a'>8 a'' b, a' }
                  { \repeat unfold 2 { s8 \change Staff="up" s \change Staff="down" } }
                >>
              }
            >> |
          }

          % One bar after rehearsal mark 1
          \repeat percent 2 {
            <<
              { <b,, g'>4 }
              \\
              { s8 \change Staff="up" b''16 s \change Staff="down" }
            >>
            r4
            <<
              { }
              \\
              {
                <<
                  { <e,,, c-sharp' g-sharp'>8 c-sharp''' a, c-sharp' }
                  { \repeat unfold 2 { s8 \change Staff="up" s \change Staff="down" } }
                >>
              }
            >> |
          }

          \repeat percent 2 {
            <<
              { <b,, g' d-sharp'>4 }
              \\
              { s8 \change Staff="up" b''16 s \change Staff="down" }
            >>
            r4
            <<
              { }
              \\
              {
                <<
                  { <e-sharp,,, c-sharp' g-sharp'>8 c-sharp''' a, c-sharp' }
                  { \repeat unfold 2 { s8 \change Staff="up" s \change Staff="down" } }
                >>
              }
            >> |
          }

          <<
            { <b-flat,,! g' e-flat'!>4 }
            \\
            { s8 \change Staff="up" e-flat''16 s \change Staff="down" }
          >>
          r4
          <<
            { d-flat,2 }
            \\
            {
              <<
                { a8 a' b, a' }
                { \repeat unfold 2 { s8 \change Staff="up" s \change Staff="down" } }
              >>
            }
          >> |

          \repeat percent 4 {
            <<
              { <e-flat,, b-flat' g'>4 }
              \\
              { s8 \change Staff="up" b-flat'''16 s \change Staff="down" }
            >>
            r4
            <<
              { d-flat,2 }
              \\
              {
                <<
                  { a8 a' b, a' }
                  { \repeat unfold 2 { s8 \change Staff="up" s \change Staff="down" } }
                >>
              }
            >> |
          }

          <<
            {
              e-flat2-> <e a>4\arpeggio r |
              e-flat!2-> e4\arpeggio r |
              % 2
              e-flat!2 d-flat |
            }
            \\
            {
              <e-flat,, b-flat' g'>4\arpeggio r c-sharp''2-> |
              <e-flat,,! b-flat' g'>4\arpeggio r c-sharp''2 |
              % 2
              <e-flat,,! b-flat' g'>4\arpeggio r a' r |
            }
          >>

          r4 \clef "treble" a'8 r a' r a' r \clef "bass" |

          <<
            {
              <g-flat,,,, d-flat' b-flat'>1 |
              <g-flat d-flat' a'>1 |
              <g-flat d-flat' b-flat'>1 |
            }
            \\
            {
              \change Staff="up"
              \repeat unfold 3 { \hideNotes e-flat''2( \unHideNotes d-flat) | }
              \change Staff="down"
            }
          >>
          <c-flat, g-flat' e-flat'>2 <c-flat a-flat' d-flat> |
          <<
           \repeat unfold 2 {
             \shape #'((0.25 . 0.5) (0 . 0.5) (0 . 0) (0 . 0)) Slur \stemUp e-flat'2_( \stemDown \change Staff="up" d-flat) \change Staff="down" \stemNeutral
           }
           \\
           {
             <b-flat, g-flat'>2 s |
             <a g-flat'>1 |
           }
          >>
          <d-flat, b-flat'>1 |
          \repeat unfold 2 {
            <b-flat' f'>1 |
            <d-flat, a-flat'>1 |
          }
          <c-flat' f>1 |
          <b-flat f'>1 |
          <c-flat f a-flat e-flat'>2 <f a d-flat> |
          <b-flat, f' b-flat e-flat>2 <f' b-flat d-flat> |
          <d-flat, a-flat'>2 <a-flat'' d-flat> |

          <<
            {
              <c-flat d-flat>2 2 |
              c-flat2
            }
            \\
            {
              a-flat4( g-flat f e-flat |
              <f a-flat>4 <e-flat g-flat> <d-flat f b-flat!> <c-flat f a-flat>) |
            }
          >>

          <<
            { <e-flat, b-flat' g'!>4 d-flat'\rest d-flat'2 }
            \\
            {
              s4
              <<
                { s8 b-flat'16 s a,8 a' b, a' }
                { \repeat unfold 3 { s8 \change Staff="up" s \change Staff="down" } }
              >>
            }
          >> |

          \repeat percent 3 {
            <<
              { <e-flat,, b-flat' g'>4 }
              \\
              { s8 \change Staff="up" b-flat'''16 s \change Staff="down" }
            >>
            r4
            <<
              { d-flat,2 }
              \\
              {
                <<
                  { a8 a' b, a' }
                  { \repeat unfold 2 { s8 \change Staff="up" s \change Staff="down" } }
                >>
              }
            >> |
          }

          \repeat percent 2 {
            <e-flat,, b-flat' g'>4 r <a' d-flat g>2 |
          }
          <<
            { <e-flat, b-flat' g'>4 r r2 }
            \\
            { s8 \change Staff="up" b-flat'''16 \change Staff="down" s s2. }
          >> |
          <e-flat,,,, e-flat'>4 r r2 |
        }

        \outline-one
      >>
    >>
  >>
}

\score {
  \header { piece = "3. Invocation" }
  <<
    \new Staff \with {
      instrumentName = "Flute"
      fontSize = #-3
      \override StaffSymbol.staff-space = #(magstep -3)
    } {
      <<
        \flute-three
        \outline-three
      >>
    }

    \new Staff \with {
      instrumentName = "Horn in F"
      fontSize = #-3
      \override StaffSymbol.staff-space = #(magstep -3)
    } {
      <<
        \horn-three
        \transpose f c' {
          \outline-three
        }
      >>
    }

    \new PianoStaff \with {
      instrumentName = "Piano"
      connectArpeggios = ##t
    }
    <<
      \new Staff="up" <<
        \relative {
          \clef "treble"

          r4 <f'' d a f> r |
          r4 <a, f c>( <g d b-flat> |
          <e c-sharp>) r <e' c-sharp a>-! |
          <g d b-flat g>4-!\arpeggio <a e c! a>-!\arpeggio <b-flat f d b-flat>-!\arpeggio |
          <c g e c>4-!\arpeggio <b-flat f d b-flat>-!\arpeggio <c g e c>-!\arpeggio |
          <d a f d>4-!\arpeggio <f c a f>-!\arpeggio <e c a e>-!\arpeggio |
          r4 <f, d a f> r |
          r4 <a e c a>( <g d b-flat g> |
          <f c a f>4 <e c a>) \ottava #1 <e'' b-flat g e>\arpeggio |
          <d a f d>4\arpeggio <c g e c>\arpeggio <b-flat f d b-flat>\arpeggio |
          <a e c a>4\arpeggio <g d b-flat g>\arpeggio <a e c a>\arpeggio |
          \ottava #0
          <<
            { e,,4( d c) }
            \\
            { <a' a,>2. }
          >> |
          <a' f c a>2 r4 |
          r4 <d, b-flat f>( <e b-flat g>~ |
          q4 <f d a> <g e b-flat>) |
          r4 \ottava #1 <b-flat' f d b-flat>2~\arpeggio |
          <b-flat f d b-flat>4 \ottava #0 r <b-flat, f d b-flat>\arpeggio |
          <<
            {
              <e,, b-flat g>4( <d b-flat f> <f b-flat, d,> |
              e8 d c2~ |
              8 d e g c4) |
              b-flat4( a g ) |
            }
            \\
            {
              s2. |
              <b-flat, g>4 a2 |
              b-flat2 <e c>4 |
              <e' e,>2. |
            }
          >>
          <b-flat' e, b-flat>2~( <a e a,>4) |

          % 13
          <d b-flat f d>2. |
          <d b-flat f d>4( <c a e c> <e,, c b-flat>) |
          <<
            {
              <f c a>2( <e c>4 |
              d4 <c a> b-flat |
              c4. d8 e f |
              f8 g c a <g f d> <a e> |
              <b-flat f d b-flat>2) <b-flat e, c>4 |
            }
            \\
            {
              s2. |
              f,8 g e4 f |
              g4 a c |
              <d' d,>4 <e, c> s |
            }
          >>
          c8( d e f \tuplet 3/2 { e d c) } |
          <c' c,>8( <d d,> <e e,> <f f,> \tuplet 3/2 { <e e,> <d d,> <c c,>) } |
          <c f, c>4( <b-flat f b-flat,> <c f, c>) |
          <<
            {
              d4( b-flat f) |
              s2. |
            }
            \\
            {
              <f d>2 d4 |
              s2. |
            }
            \\
            {
              \tuplet 3/2 4 {
                \change Staff="down"
                % Based on https://lilypond.org/doc/Documentation/notation/modifying-shapes#modifying-ties-and-slurs
                \shape #'((0 . -4.5) (8 . -2) (-8 . -15) (0 . -7)) Slur
                f,8( e f g f g a g a |
                \change Staff="up"
                <d b-flat>8 a b-flat <c a> b-flat c <d g,> c d) |
              }
            }
          >> |

          <<
            {
              \tuplet 3/2 4 { r8 c( d e d e f e f } |
              <g a,>4)
            }
            \\
            {
              b-flat,2 4 |
              s4
            }
          >>
          r4 <e' c-sharp a e>\arpeggio |

          <g d b-flat g>4-!\arpeggio <a e c! a>-!\arpeggio <b-flat f d b-flat>-!\arpeggio |
          <c g e c>4-!\arpeggio <b-flat f d b-flat>-!\arpeggio <c g e c>-!\arpeggio |
          <d a f d>4-!\arpeggio <f c a f>-!\arpeggio <e c a e>-!\arpeggio |

          % 14
          r4 <f, d a f>2 |
          r4 <a e c a>( <g d b-flat g> |
          <f c a f>4 <e c a e>) \ottava #1 <e'' b-flat g e>\arpeggio |
          <d a f d>4\arpeggio <c g e c>\arpeggio <b-flat f d b-flat>\arpeggio |
          <a e c a>4\arpeggio <g d b-flat g>\arpeggio <a e c a>\arpeggio |
          \ottava #0
          <<
            { e,,4( d c) }
            \\
            { <a' a,>2. }
          >> |
          <a' f c a>2 r4 |
          r4 <d, b-flat f>( <e b-flat g>~ |
          q4 <f d a> <g e c b-flat> |
          <b-flat f d b-flat>4) \ottava #1 <b-flat' f d b-flat>2  |
          \ottava #0 <d,,, b-flat f>2 <b-flat'' f d b-flat>4 |
          <b-flat f-sharp e b-flat>4( <a g e a,>) r |
          r4 <g-sharp f! d b>2->~ |
          q4 <c a e c>\arpeggio <d b-flat! f d>\arpeggio |
          <e c g! e>4\arpeggio <f d a f>\arpeggio <g e b-flat g>\arpeggio |
          <f c a f>2( <e c a e>4~ |
          q4 <d a f d>2 |
          <c a f c>2) <a, f c a>4~ |
          q2. |
        }

        \outline-three
      >>

      \new Dynamics {
        s2. \p |
        s2.*7 |
        s2 s4-\markup { \italic "dolcissimo" }
        s2.*2 |
        s2. \< |
        s2. \! |
        s2. \tweak X-offset #0 #(make-dynamic-script (markup #:normal-text (#:italic "più") #:dynamic "f")) \<
        s2. |
        s4 \! s2 \rfz |
        s2. \> |
        s2. \! |
        s2. |
        s2. \< |
        s2. \! |
        s2. \> |
        s2. \rfz |
        s2. \> |
        s2. \mp |
        s2. |
        s2. \< |
        s2. \! |
        s2. \>
        s2. \p \cresc |
        s2. |
        s2. \! |
        s2.*2 |
        s2. \> |
        s2 \! s4 \mf |
        s2. |
        s2. \< |
        s2. \> |
        s4 \! s2 \p |
        s2. |
        s2 \! s4 \pp |
        s2.*2 |
        s2. \p |
        s2. |
        s2. \mf \< |
        s2. |
        s4 \! s2 \rfz \> |
        s2 \! s4 \< |
        s4 \> s \! s |
        s4 s2 \p \> |
        s2.*2 \! |
        s2. \dim |
        s2.*2 |
        s2. \! |
      }

      \new Staff="down" <<
        \relative {
          \clef "bass"

          r4 <d' a d,> r |
          r4 <f, c f,> <g d g,> |
          <a e a,>4 r \clef "treble" <g' e c-sharp a> |
          <f d b-flat>4\arpeggio <e c!>\arpeggio <a f d>\arpeggio |
          <g e>4\arpeggio <a f d>\arpeggio <b-flat g e>\arpeggio |
          <c a f>4\arpeggio <d c a>\arpeggio <c a e>\arpeggio |
          r4 \clef "bass" <d, a d,> r |
          r4 <e c> <d b-flat> |

          <<
            { d4( e) }
            \\
            { <c a>2 }
          >>
          \clef "treble" <e' b-flat g>4\arpeggio |

          <f d a f>4\arpeggio <c g e>\arpeggio <d b-flat f d>\arpeggio |
          <c a e c>4\arpeggio <b-flat g f d b-flat>\arpeggio <c a e c>\arpeggio |

          \clef "bass"
          <<
            {
              c,,4( d e) |
              c'8( d8 a4)
            }
            \\
            {
              f,2. |
              f'2
            }
          >>
          f,4 |

          <c' c,>4 <d' b-flat f> <e b-flat g> |
          <c, c,>4 <f' d a> <g e b-flat> |
          <c,, c,>4 \clef "treble" <f'' d b-flat f c>2~\arpeggio |
          q4 \clef "bass" <c,, c,> <f' d>\arpeggio |
          <<
            {
              c,2. |
              c2 d4 |
              e4 g a |
              g4( a b-flat) |
            }
            \\
            {
              f,2.~ |
              2. |
              c'2. |
              c-sharp2. |
            }
          >>
          \clef "treble" <g'' e c-sharp>2. |
          <b-flat f d c!>4 \clef "bass" <c,, c,>2 |

          % 13
          \clef "treble" <b-flat'' f d>4 <a e c> \clef "bass" <c,, c,> |
          <<
            { c4 d e }
            \\
            { f,2 a4 }
          >>
          <b-flat b-flat,>4 <c c,> <d d,> |
          <e e,> <f f,> <a a,> |
          <b-flat d, g,>4 <e, a,>4 <b-flat' b-flat,>8 <c c,>8 |
          <g g,>2 <c, c,>4 |
          <a' c, f,>2 <a c, f,>4 |
          <b-flat c, g>2 <b-flat c, g>4 |
          <<
            {
              f2. |
              s2. |
              d4 e f~ |
              4 e d |
            }
            \\
            {
              a4 g a |
              b-flat2 r4 |
              g2.~ |
              2. |
            }
          >>
          <e' c-sharp>4 <a, a,>2 |
          \clef "treble" <f'' d b-flat>4\arpeggio <e c!>\arpeggio <a f d>\arpeggio |
          <g e>4\arpeggio <a f d>\arpeggio <b-flat g e>\arpeggio |
          <c a f>4\arpeggio <d c a>\arpeggio <c a e>\arpeggio |

          % 14
          r4 \clef "bass" <d, a d,>2 |
          r4 <e c> <d b-flat> |
          <c a>2 \clef "treble" <e' b-flat g>4\arpeggio |
          <f d a f>4\arpeggio <c g e>\arpeggio <d b-flat f d>\arpeggio |
          <a e c>4\arpeggio <g f d b-flat>\arpeggio <a e c>\arpeggio |

          \clef "bass"
          <<
            {
              c,,4( d e) |
              c'8( d8 a4)
            }
            \\
            {
              f,2. |
              f'2
            }
          >>
          f,4 |

          <c' c,>4 <d' b-flat f> ( <e b-flat g> ) |
          <c, c,>4 \clef "treble" <f' d a>4( <g e c b-flat>4) |
          <g f d>4 <g' f d>2 |
          \clef "bass" <c,,, c,>2 \clef "treble" <f' d c>4 |
          <<
            { f-sharp4( g) }
            \\
            { <e c-sharp>2 }
          >> r4 |
          r4 <g-sharp f! d b>2->~ |
          q4 <a f c>\arpeggio <b-flat g d>\arpeggio |
          <c a e>4\arpeggio <d b-flat f>\arpeggio <e c g>\arpeggio |

          <<
            {
              <c a>2.~ |
              <c a>4 <a f>2~ |
              q2
            }
            \\
            {
              f2( e4~ |
              4 d2 |
              c2)
            }
          >>
          \clef "bass" <f,, f,>4~ |

          q2. |
        }

        \outline-three
      >>
    >>
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
