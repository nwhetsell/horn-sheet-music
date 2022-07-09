\version "2.22.0"

\include "definitions.ily"

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
      \override StaffSymbol #'staff-space = #(magstep -3)
    } {
      <<
        { \include "flute-1.ily" }
        { \include "outline-1.ily" }
      >>
    }

    \new Staff \with {
      instrumentName = "Horn in F"
      fontSize = #-3
      \override StaffSymbol #'staff-space = #(magstep -3)
    } {
      <<
        { \include "horn-1.ily" }
        { \transpose f c { \include "outline-1.ily" } }
      >>
    }

    \new PianoStaff \with {
      instrumentName = "Piano"
    }
    <<
      \set PianoStaff.connectArpeggios = ##t

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
              \remove "Time_signature_engraver"
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

        { \include "outline-1.ily" }
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

        { \include "outline-1.ily" }
      >>

      \new Dynamics {

      }
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
