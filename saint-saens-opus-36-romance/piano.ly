\version "2.22.0"

\include "definitions.ily"

\paper {
  systems-per-page = #4
}

\layout {
  indent = 0.5\in

  \context {
    \PianoStaff
    \consists #Span_stem_engraver
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = "Horn in F"
      fontSize = #-3
      \override StaffSymbol #'staff-space = #(magstep -3)
    } {
      \include "horn.ily"
    }

    \new PianoStaff \with {
      instrumentName = "Piano"
    }
    <<
      \set PianoStaff.connectArpeggios = ##t

      \new Staff="up" <<
        \new Voice \relative {
          \language "english"

          \key f \major

          \stemUp
          \repeat unfold 2 { <a c>4 r8 <c f> <f a>4 | }
          \stemNeutral

          #(define measures-three-to-twenty-eight #{
            \relative {
              \stemUp

              <a c>4 r8 <c f> <f a>4 |
              <a, d>4 r8 <d f> <f a>4 |
              c4 r8 <e c> <g e>4 |
              \change Staff="down" <f, b-flat>4 \change Staff="up" r8 <b-flat d> <d f>4 |
              \change Staff="down" <f, a>4 \change Staff="up" r8 <a c> <c f>4 |
              <d f>4 r8 <d f g> <f g d'>4 |
              <c e>4 r8 <c e g> <c e c'>4 |
              <a c f>4 r8 <f' a> <a c>4 |

              \change Staff="down" <f, a d>4 \change Staff="up" r8 <d' f> <f a>4 |
              \change Staff="down" <e, a c>4 \change Staff="up" r8 <c' e> <e a>4 |
              \change Staff="down" <f, a d>4 \change Staff="up" r8 <d' f> <f a>4 |
              \change Staff="down" <e, a c-sharp>4 \change Staff="up" r8 <c-sharp' e> <e a>4 |
              \change Staff="down" <d, g b-flat>4 \change Staff="up" r8 <b-flat' d> <d g>4 |
              \change Staff="down" <f, a d>4 \change Staff="up" r8 <d' f> <f a>4 |
              \change Staff="down" <e, a c-sharp>4 \change Staff="up" r8 <c-sharp' e> <e a>4 |

              \stemNeutral

              <<
                {
                  a'2(\arpeggio g8 f) |
                  e2( f8 g) |
                  f2( e8 d) |
                  c2( d8 c |
                  c2.) |
                }
                \\
                {
                  <a c!>2.\arpeggio |
                  <a c-sharp>2. |
                  <a d>2. |
                  <e g b-flat>2. |
                  <f a>2. |
                }
              >>
              <e a c-sharp>2. |
              <f a d>2. |
              <<
                {
                  f'2 e4 |
                  c'2( b-flat8 a) |
                  a2( g8 f) |
                  f2\arpeggio
                }
                \\
                {
                  <f, a c>2 <g b-flat c>4 |
                  <c f>2. |
                  <a c>2. |
                  <f a c>2
                }
              >> r4 |
            }
          #})

          \measures-three-to-twenty-eight
          R2.

          <c-sharp e>4( q q) |
          <d f>4( q q |
          <b f'>4) q <c e> |
          <<
            { d2. }
            \\
            { a2 b4 }
          >> |
          \set doubleSlurs = ##t <b d>( <e c>) \unset doubleSlurs \stemUp <g g'^~>^> \stemNeutral |
          <<
            {
              \voiceOne
              g'4( f8 e d f) |
              f4( e)
            }
            \new Voice {
              \voiceTwo
              a,2 b4 |
              <b d>4( c)
            }
          >> \oneVoice r4 |

          <e-flat, g>4( q q |
          <d f>4 q q) |
          <c-sharp e!>4 q <d f> |
          \set doubleSlurs = ##t <d g>2( <c-sharp e>4) \unset doubleSlurs |

          <a a'>8-.( <d d'>-. <e e'>-. <f f'> -. <d d'>-. <a a'>-.) |
          <b f' g-sharp b>2. |
          <a a'>8-.( <d d'>-. <e e'>-. <f f'> -. <d d'>-. <a a'>-.) |
          <b-flat! f' a-flat b-flat!>2 <b b'>4 |
          <c e-flat a-flat c>2. |
          d-flat8( e-flat g b-flat d-flat g) |
          <g, b-flat c g'>2. |
          <g, b-flat d-flat>2. |
          <g b-flat c>8( g' a-flat b-flat g c,) |
          <g b-flat d-flat>2. |

          \set doubleSlurs = ##t
          <g b-flat c>4 r <g c g'>( |
          <a c f>4) r <c f a c>( |
          <b-flat f' b-flat>4) r <b-flat f' b-flat>( |
          <b f' b>) r <f' b f'>( |
          <g b-flat! e>) <b-flat e g b-flat> r |
          \unset doubleSlurs
          R2.*3

          <<
            { f'8.( g-flat16 f2) }
            \\
            { c-flat8. d-flat16 c-flat2 }
          >> |
          R2.*2

          r4 r8 <e, g>-.\noBeam <e g c>-. r |
          r4 r8 <f a-flat>-.\noBeam <f a-flat d-flat>-. r | % These staccato marks are missing from the score.
          r4 r8 <g b-flat>-.\noBeam <g b-flat e-flat>-. r |
          r4 r8 <g b-flat e!>-.\noBeam <c e c'>\arpeggio r\fermata |

          \measures-three-to-twenty-eight
          <a, f' a>2 r4 |
          <f a c f>2.\arpeggio\fermata |
        }

        #(if preserve-line-breaks? #{ \new Voice {
          s2.*5 \break
          \repeat unfold 10 { s2.*6 \break }
          \repeat unfold 4 { s2.*7 \break }
        } #})
      >>

      \new Dynamics {
        s2. \p |
        s2.*9 \p |
        s2. \p |
        s2.*6 |

        s2.-\markup{ \italic "espressivo" } |
        s2.*7 |
        s2. \pp |
        s2.*3 |

        s2. \p \tweak to-barline ##f \< |
        s2. \! |
        s2. \tweak to-barline ##f \> |
        s2. \! |
        s2.*3 |
        s2. \< |
        s4 \! s s \tweak to-barline ##f \> |
        s4 \! s2 |
        s2.*2 |
        s2. \fp |
        s2. \< |
        s2. \fp |
        s4 s2 \cresc |
        s2 s8 s \! |
        s2. \p \< |
        s2. \sf |
        s2. \cresc |
        s2. \sf |

        s2 s4 \cresc |
        s2.*2 |
        s2 s4 \f |
        s2.*4 |
        s2. \pp |
        s2.*2 |
        s4 s8 s \pp s4 |
        s2.*3 |

        s2.*15 |

        s2.-\markup{ \italic "espressivo" } |
        s2.*10 |
        s2. \pp |
      }

      \new Staff="down" \relative {
        \clef "bass"

        \key f \major

        \stemDown
        \repeat unfold 2 { <f, f'>4 r8 a' c4 | }
        \stemNeutral

        #(define measures-three-to-twenty-eight #{
          \relative {
            \stemDown

            <f, f'>4 r8 a' c4 |
            <f,, f'>4 r8 a' d4 |
            <<
              { \crossStaff { g,4 } }
              \\
              { <e, e'>4 }
            >> r8 g' c4 |
            <d,, d'>4 r8 f' b-flat4 |
            <c,, c'>4 r8 f' a4 |
            <<
              { \crossStaff { g4 } }
              \\
              { <b-flat,, b-flat'>4 }
            >> r8 g'' d'4 |
            <<
              { \crossStaff { g,4 } }
              \\
              { <c,, c'>4 }
            >> r8 g'' <b-flat g>4 |
            <f, f'>4 r8 \change Staff="up" c'' f4 \change Staff="down" |

            <d,, d'>4 r8 a'' d4 |
            <a,, a'>4 r8 a'' c4 |
            <d,, d'>4 r8 a'' d4 |
            <a,, a'>4 r8 a'' c-sharp4 |
            <g,, g'>4 r8 g'' b-flat4 |
            <d,, d'>4 r8 a'' d4 |
            <a,, a'>4 r8 a'' c-sharp4 |

            \stemNeutral

            <f,,, f'>4 r8 <f'' a> <a c>4 |
            <f,, f'>4 r8 <f'' a> <a c-sharp>4 |
            <f,, f'>4 r8 <f'' a> <a d>4 |
            <f,, f'>4 r8 <g'' c> <c e>4 |
            <f,,, f'>4 r8 <f'' a> <a c>4 |
            <f,, f'>4 r8 <f'' a> <a c-sharp>4 |
            <d,, d'>4 r8 <f' a> <a d>4 |
            <a,, a'>4 r8 <a'' c>8 <c, g' c>4 |
            <f, f'>4 r8 <f' a c> <a c f>4 |
            \stemDown
            <f, f'>4 r8 <c' f a> <f a c>4 |
            <f, c' f a>2\arpeggio r4 |
            \stemNeutral
          }
        #})

        \measures-three-to-twenty-eight
        R2.

        <g a>4 q q |
        <f a>4 q q |
        <d g>4 q <e g> |
        f2 g4 |
        <c, g'>2 e'4 |
        d2 g4 |
        <c, g'>2 r4 |
        <g b-flat>4 q q |
        q4( q q) |
        <g a>4 q <f a> |
        <e b-flat'>2( a4) |

        <d,, f'>2.\arpeggio |
        <d' f g-sharp>2. |
        <d, f'>2.\arpeggio |
        <d' f a-flat>2. |
        <<
          {
            e-flat8( a-flat b-flat c a-flat e-flat) |
            d-flat8( e-flat g b-flat d-flat g) |
            c,,8( g' a-flat b-flat g c,) |
          }
          \\
          {
            e-flat,2. |
            e-flat2. |
            e!2. |
          }
        >>
        <f d-flat'>2. |
        <<
          { c'8( g' a-flat b-flat g c,) }
          \\
          { e,2. }
        >> |
        <f d-flat'>2. |

        <c c'>4 r <e e'>( |
        <e-flat e-flat'>4) r q( |
        <d d'>4) r q( |
        <d-flat d-flat'>4) r q( |
        <c c'>4) <c' c'> r |
        R2.*3

        \clef "treble"
        <<
          { a-flat''8.( b-flat16 a-flat2) }
          \\
          { d-flat,2. }
        >> |
        \clef "bass"
        R2.*2

        r4 r8 <e, g>-.\noBeam <e g c>-. r |
        r4 r8 <f a-flat>-.\noBeam <f a-flat d-flat>-. r | % These staccato marks are missing from the score.
        <c, c'>4 r8 <g'' b-flat>-.\noBeam <g b-flat e-flat>-. r |
        <c, c'>4-. \clef "treble" r8 <g' b-flat e!>-.\noBeam <c g' b-flat>\arpeggio r\fermata |
        \clef "bass"

        \measures-three-to-twenty-eight
        \stemDown <f,, c' f>2 r4 \stemNeutral |
        <f, f' c'>2.\arpeggio_\fermata |
      }

      \new Dynamics {
        s2.\sustainOn |
        s2.*39 |
        s2.\sustainOn |
        s2.*22 |
        \repeat unfold 2 { s4\sustainOn s4. s8\sustainOff | }
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
