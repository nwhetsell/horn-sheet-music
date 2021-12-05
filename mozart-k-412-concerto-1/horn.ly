\version "2.22.0"

source-url = "https://imslp.org/wiki/Horn_Concerto_in_D_major,_K.412/386b_(Mozart,_Wolfgang_Amadeus)"
\header {
  composer-last-name = "Mozart"
  composer-first-name = "Wolfgang Amadeus"
  title = "Horn Concerto No. 1"
  opus = "K. (412+514)/386b"
  instrument = "Horn in F"
}

\include "../titling.ily"
\include "settings.ily"

\pointAndClickOff

\layout {
  \set Score.markFormatter = #format-mark-alphabet
  \set Score.skipBars = ##t
  \context {
    \Score
    #(if preserve-line-breaks? #{
      \override NonMusicalPaperColumn.line-break-permission = ##f
    #})
    \override TupletBracket.bracket-visibility = #'if-no-beam
  }
}

\score {
  \header { piece = "I" }
  \new Staff <<
    \language "english"
    \transpose f d {
      \new Voice \relative {
        \transposition d

        \key c \major
        \time 4/4

        \tempo "Allegro"

        \partial 4 { r4 } |
        R1*20

        r2 r4 g'4^\markup { \right-align "Solo" }_\markup { \dynamic "p" \italic "espressivo" } |
        \mark \default % A
        c4.( e8) d( c b c) |
        d4.( b8 g4) 4 |
        d'4.( f8) e( d c d) |
        d4( e) r c8( e) |
        g2 f8( e d c) |
        b8( a) 4~4 f'8( d) |
        g8( e) c-. 8-. 4 d16( c) d-. e-. |
        c4 r r2 |

        c4. \p g8 c \< e g \> e |
        d4 \! r r2 |
        d4. e16 \cresc f-sharp g8 f-sharp e d |
        c4 \! r r2 |
        r8 c-. 8-. 8-. 8( d16 e d8) c-. |
        b8( \< d) 8( g) \> 4.( c-sharp,8) |
        d4 \! r r2 |
        r2 r4 d_\markup { \dynamic "p" \italic "grazioso" } | \noBreak

        \mark \default % B
        \repeat unfold 2 {
          d16( c) b-. c-. d8-. 8-. d16( e) f-sharp-. g-. d8-. 8-. |
          \repeat unfold 2 { e16( d) c-. b-. a8-. r } |
        }
        R1
        g2 g' |
        a,2 e' |
        d2 c4.\trill( \< b16 c) |
        b4 \! r r2 |
        g8 a16 b c d e f-sharp g2 |
        e2 c-sharp |
        d4. e16 \cresc f-sharp \tuplet 3/2 4 { g8 f-sharp e d c b } |
        \afterGrace a1(\startTrillSpan \f { g16 a\stopTrillSpan } |

        \mark \default % C
        g4) r r2 |
        R1*20

        \mark \default % D
        r4 e'-.^"Solo"( \p \< e-. e-.) |
        e1~ \f |
        e8 \< f( f-sharp g \> f e d c) |
        f2( \p a, |
        b-flat2 b) |
        c2.( \< d8 e |
        f4) \! r r2 |
        R1*2
        r2 r4 a,4 |
        d4.( f8) e( d c-sharp d) |
        e4.( c-sharp8 a4) 4 |
        e'4.( g8) f( e d e) |
        e4( f) r2 |
        R1*11

        r2 r4 g,4^\markup { \right-align "Solo" } \p |
        \mark \default % E
        c4.( e8) d( c b c) |
        d4.( b8 g4) 4 |
        d'4.( f8) e( d c d) |
        d4( e) r c8( e) |
        g2 f8( e d c) |
        b8( a) 4~4 f'8( d) |
        g8( \cresc e) c-. 8-. 4 d16( c) d-. e-. |
        c4 \! r r2 |

        c2 b8( c) d e |
        f4 r r2 |
        f4. e16 d c-sharp8( \< d e c-sharp) |
        d4 \! r r2 |
        d2 4. 8 |
        d16( \< e) d-. e-. f( g) f-. g-. a8( \> f) d-. \! c-. |
        b4 r r2 |

        r2 r8 g \p g g |
        \mark \default % F
        g16( a) b-. a-. b( c) d-. c-. d( e) f-. e-. f8-. b,-. |
        c8 c( e c) g4 r8 g |
        g16( a) b-. a-. b( c) d-. c-. d( e) f-. e-. f8-. b,-. |
        c4 r r2 |
        R1*6

        r2 r4 r8 g^\markup { \right-align "Solo" } |
        \mark \default % G
        c8-. 8-. e16( f) g-. e-. d4.( e8) |
        f8-. a,( b c) d8.( b16 g8) 8-. |
        c8-. 8-. e16( f) g-. e-. d4.( e8) |
        f8-. a,( c b) b4( c8) r |
        R1
        r2 r4 r8 g \mf |
        \repeat unfold 2 {
          g16( a) b-. c-. d-. e-. f-. d-. g8.( e16) c8-. 8-. |
        }
        c4( c-sharp) \cresc d16( c-sharp) d-. e-. d( e) f-. e-. |
        d16( #(make-music 'CrescendoEvent 'span-direction START 'span-type 'text 'span-text "più cresc.") c-sharp) d-. e-. d( e) f-. e-. d( c-sharp) d-. e-. d( e) f-. d-. |
        c!8( \f e g4~4) f16( e) d-. c-. |
        \afterGrace d1(\startTrillSpan { c16 d\stopTrillSpan } |
        c4) r r2 |
        R1*6 \bar "|."
      }
    }

    #(if preserve-line-breaks? #{ \new Voice {
      s4 s1*26 \break
      \repeat unfold 2 { s1*6 \break }
      s1*4 \break
      s1*8 \break
      s1*30 \break
      s1*18 \break
      \repeat unfold 2 { s1*7 \break }
      s1*4 \break
      s1*11 \break
      s1*5 \break
    } #})
  >>
}

\score {
  \header { piece = "II" }
  \new Staff <<
    \language "english"
    \transpose f d {
      \new Voice \relative {
        \transposition d

        \key c \major
        \time 6/8

        \tempo "Allegro"

        \partial 8 { r8 } |
        R2.*7

        r4. r4 g'8^"Solo" \p |
        g8( c) 8-. c4 g8 |
        g8( e') 8-. e4 c8 |
        g'8( e) c-. g'( f) d-. |
        c8. d16 e8 d4 g,8 |
        g( c) 8-. c4 g8 |
        g8( e') 8-. e4 c8 |
        g'8( e) c-. g'( f) d-. |
        c4( d16 e) c4 r8 |
        R2.*7

        r4. r4 d8^\markup { \right-align "Solo" } \mf |
        \mark #8 % H
        d8( e) f-sharp-. g( d) 8-. |
        d8 e16( d) e-. f-sharp-. g8 r r |
        R2.
        r4. r4 d8 \mf |
        d8( e) f-sharp-. g( d) 8-. |
        d8 e16( d) e-. f-sharp-. g4 r8 |
        r4. r8 d-. 8-. |
        d8( \> c) a-. \! g4 16-. a-. |
        b8 \cresc r b16-. c-. d8-. r d16-. e-. |
        f8-. \! 8-. 8-. 8-. d-. b-. |
        g8-. \> 8-. 8-. 8-. 8-. 8-. |
        g4 \! r8 r4 g8-. \p |

        g8( c) 8-. c4 g8 |
        g8( e') 8-. e4 c8 |
        g'8( e) c-. g'( f) d-. |
        c8. d16 e8 d4 g,8 |
        g8( c) 8-. c4 g8 |
        g8( e') 8-. e4 c8 |
        g'8( e) c-. g'( f) d-. |
        c8-. 8-. d16( e) c4 r8 |
        R2.*13

        r4. r4 g8 \p |
        \mark \default % I
        c4( e-flat8) d4( f8) |
        f8( e-flat) d e-flat r g, |
        c4( e-flat8) d( f) e-flat-. |
        d8( c) b c4 r8 |
        R2.*4
        g'4.( \p f |
        e-flat4.) \grace g16( f8)( e-flat f) |
        e-flat4 r8 r4. |
        e-flat4.( f) |
        g8 8 8 8 8 8 |
        a-flat4.( g~ |
        g4. f) |
        g4 r8 r4. |
        g4 8 8( f) g-. |
        a-flat4.( \cresc f |
        e-flat4. d4. |
        e-flat4. f4. |
        e-flat4) \! r8 r4. |
        R2.*3

        r4. r4 g,8 \p |
        g8 c e-flat g4( f8) |
        f8( e-flat) 8 4( d8) |
        c( \< b c e-flat d c |
        b4) \f r8 r4. |
        r8 c c( \< e-flat d c |
        g'4) \! r8 r4. |
        r8 c, c( \< e-flat d c) |
        g2.~ \> |
        g4.~4 g8-. \p |

        \mark #11 % K
        g8( c) 8-. c4 g8 |
        g8( e') 8-. e4 c8 |
        g'8( e) c-. g'( f) d-. |
        c8. d16 e8 d4 g,8 |
        g8( c) 8-. c4 g8 |
        g8( e') 8-. e4 c8 |
        g'8( e) c-. g'( f) d-. |
        c4( d16 e) c8 r r |
        R2.*7

        r4. r4 e16-. \p f-. |
        d8 8 e f4 e8 |
        d8 8 c b16[ c d8] e16 f |
        d8 8 e f4 e8 |
        d8( b) a-. g4 r8 |
        R2.*2
        d'8-. \p 8-. e-. f4( e8) |
        d8( e) c-. d4-. r8 |
        R2.

        r4. r4 g,8 \p |
        \mark \default
        g8( c) 8-. c4 g8 |
        g8( e') 8-. e4 c8 |
        g'8( e) c-. g'( f) d-. |
        c8. d16 e8 d4 g,8 |
        g8( c) 8-. c4 g8 |
        g8( e') 8-. e4 c8 |
        g'8( e) c-. g'( f) d-. |
        c8-. 8-. d16( e) c4 r8 |

        R2.*3
        r4. r4 g8 \p |
        g8( c) 8-. c4 g8 |
        g8( e') 8-. e c16 d e f |
        g8( e) c-. g'( f) d-. |
        c8 d16( c) d-. e-. c4 r8 |
        r4. r4 g8 \mf |
        g'8-. g16( f) e-. d-. e4 r8 |
        r4. r4 g,8 \f |
        g'8-. g16( f) e-. d-. c4 r8 |
        R2.*3 \bar "|."
      }
    }

    #(if preserve-line-breaks? #{ \new Voice {
      s8 s2.*12 \break
      s2.*13 \break
      s2.*7 \break
      s2.*6 \break
      s2.*19 \break
      s2.*11 \break
      s2.*9 \break
      s2.*10 \break
      s2.*7 \break
      s2.*13 \break
      \repeat unfold 2 { s2.*8 \break }
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
