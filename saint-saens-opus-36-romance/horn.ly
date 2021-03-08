\version "2.22.0"

source-url = "https://imslp.org/wiki/Romance,_Op.36_(Saint-Sa%C3%ABns,_Camille)"
\header {
  composer-last-name = "Saint-Saëns"
  composer-first-name = "Camille"
  title = "Romance"
  opus = "Op. 36"
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

\score {
  \new Staff <<
    \new Voice \relative {
      \language "english"

      \key c \major
      \time 3/4

      \once \override Score.MetronomeMark.padding = #3.5
      \tempo "Moderato"

      R2.*2

      g'8-.( \p \< c-. d-. e-. \> c-. g-.) \! |
      a8. (b16 a2) |
      g4 \< a4. b8 |
      c2. \> |
      e,4-.( \< f-. g-.) \! |
      a2( b8 a) |
      g2.( \tweak to-barline ##f \> |
      e2) \! r4 |
      e8-.( \p \< a-. b-. b-. \> a-. e-.) \! |
      g8. (a16 g2) |
      e4 \< a4. c8 |
      e2. |
      f4( \f \> a, d) |
      c2( b8 a) |
      b2.( \p |
      c2.) |

      R2.*2

      g2-.( \tweak to-barline ##f \< g4-.) |
      e'2( \! d8 c) |
      b2( c8 d) |
      c2( \> b8 a) \! |
      g2( a8 g) |
      g2.( \pp |
      c2.)~ |
      c4 r r |

      \tempo \markup {
        \override #'(baseline-skip . 2)
        \left-column {
          "un peu plus de Mouv!"
          \normal-text \tiny "(a little more Movement!)"
        }
      }
      g4-.( \p \< c-. d-.) | % The piano dynamic and crescendo are in the first edition score, but not the horn part.
      e2.( \< |
      e4-. f-sharp-. \! e-.
      d2) d4->~ |
      d4 \! c8-.( b-. a-. c-.) |
      c4( b) r |
      R2.
      g4-.( \< b-. d-.) |
      f2. \< |
      f4-.( \> g-. f-.) \! |
      e2 e4->~ |
      e4 \> d8-.( c-. b-. d-.) |
      d4( c) \! r |
      r8 b-.( \cresc c-. b-. d-. c-.) |
      c2. |
      r8 b-.( \< c-. b-. d-. c-.) |
      c2 \sf b-flat4~( |
      b-flat4 a a-flat |
      g4) g2->( |
      f'4->) \ff \> c-> b-flat8 a-flat |
      g4 \! g2->( \< |
      f'4->) \ff c-> b-flat8 a-flat |
      g4 g2->^\markup { \italic "stringendo" } |
      r4 c2-> |
      r4 c-sharp2-> |
      r4 d2->~ |
      d2.~ |
      d4 e8^\markup { \italic "ad lib" }( \> f d b) |
      a8.->( \p b16 a2) |
      a-flat8.->( \pp b-flat16 a-flat2~) |
      a-flat2 r4 |
      c,2.( |
      b2 c4 |
      g'2.~) |
      g2.~ |
      g8 r r4 r |

      r4 r r8 r\fermata |

      \tempo "a tempo"
      g8-.( \p \< c-. d-. e-. \> c-. g-.) \! |
      a8. (b16 a2) |
      g4 \< a4. b8 \! |
      c2. |
      e,4-.( f-. g-.) |
      a2( b8 a) |
      g2.( \tweak to-barline ##f \> |
      e2) \! r4 |
      e8-.( \p \< a-. b-. b-. \> a-. e-.) \! |
      g8. (a16 g2) |
      e4 \< a4. c8 |
      e2. \< |
      f4->( \! a, d) |
      c2( b8 a) |
      b2.( \< |
      c2) \! r4 |

      R2.*2

      g2.( \< |
      e'2 \! d8 c) |
      b2( c8 d |
      c2 \> b8 a) \! |
      g2( a8 g) |
      g2.~ |
      g4 r r |
      e2( f-sharp8 g) |
      g2( \tweak to-barline ##f \> b8 c) |
      c2.\fermata \! | \bar "|."
    }

    #(if preserve-line-breaks? #{ \new Voice {
      \repeat unfold 2 { s2.*8 \break }
      s2.*9 \break
      s2.*8 \break
      \repeat unfold 3 { s2.*7 \break }
      s2.*8 \break
      \repeat unfold 2 { s2.*7 \break }
      s2.*9 \break
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
