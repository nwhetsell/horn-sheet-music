\version "2.24.0"

\include "definitions.ily"
\include "horn-1.ily"
\include "horn-3.ily"
\include "outline-1.ily"
\include "outline-3.ily"
\header {
  instrument = "Horn in F"
}

\score {
  \header { piece = "1. Nocturne" }
  \new Staff <<
    \horn-one
    \transpose f c' {
      \outline-one
    }
  >>
}

\score {
  \header { piece = "2. À l’aube" }
  \relative {
    \language "english"

    \transposition f

    \key f \major
    \time 12/8

    \tempo "Allegretto" 4.=108

    R1.*6

    b-flat'4.~( \p 4 g8) b-flat4.~( 4 g8) |
    b-flat4 r8 4.~8 8-.( 8-. 8-. 8-. 8-.) |

    \mark #5
    R1.*2
    b-flat4.~( 4 g8) b-flat4.~( 4 g8) |
    b-flat2.-> r |
    R1.*3

    \mark \default % 6
    b-flat4.~( 4 g8-. b-flat4.~4 g8-.) |
    % \tempo "rit."
    b-flat1. \> \breathe |
    % \tempo "Poco meno mosso"
    a4.( \mf d c d |
    f4.) d( c d |
    a4 g8 a4 g8) \tuplet 2/3 4. { a-- g-- a-- c-- } |
    b2. r |
    R1.

    \mark \default % 7
    R1.
    g4( \< d'8~8 a4 g d'8~8 a4) |
    \repeat percent 2 { g4( \mf d'8~8 a4 g d'8~8 a4) | }
    g4( e'8~8 a,4 g e'8~8 a,4) |
    g4( d'8~8 a4 g d'8~8 a4) |
    \tuplet 2/3 { a-flat8( \cresc f } e4. d c~ |
    c8) \! r r a'!4.( g-sharp f-sharp) |

    \mark \default % 8
    c'4( b8 c4) r8 a4( g-sharp8 a4) r8 |
    g!8-.( 8-. 8-.) f-sharp4 \> r8 \! \tempo "cédez un peu" g8 16 16 16 16 f-sharp4 \> r8 \! |
    g4.~ \tempo "a piacere" g8 r r r2. |
    \tempo "a tempo"
    <<
      { \repeat percent 2 { r4. e-flat4.~ \mf 16 16 16 16 16 16 \tuplet 2/3 { 8-. 8-. } | } }
      {
        s1. |
        s4. \p
      }
    >>
    a4 \> r8 a-flat4 r8 g4 \tempo "cédez" r8 g-flat4 r8 |
    \tempo "Tempo I"
    f4 \! r8 r4. r2. |

    \mark \default % 9
    R1.*3
    r4. b-flat4.->~ \cresc 4.~8 r r |
    r4. b-flat4.->~ 4.~8 r r |
    \tempo "poco rit."
    f'4.-^~ \mf 8 b-flat, f' d b-flat f' e-flat c-flat e-flat |
    f4 r8 r4. r \tuplet 2/3 { r8 d^\markup { \center-align \italic "en écho" }  } |
    g4.~8 d g g d g \tuplet 2/3 { g d } |
    f1.~  \tweak to-barline ##f \> |
    f2. \! r | \bar "||"

    \mark \default % 10
    \tempo "Poco più lento"
    e,4.( \mf a g a |
    c4. a g f) |
    e4.( \cresc a g a |
    e'2. c4. a) |
    f-sharp16 16 16 16 16 16 \tuplet 2/3 4. { a8 8~8 8~ } 8 \! r r |

    \mark \default % 11
    \tempo "stretto"
    r4. e( \p g4) r8 r4. |
    r4. a( c4) r8 r4. |
    R1. \bar "||"
    \tempo "Tempo I"
    f4.-^~ \mf f8 c f c g c c4. |
    c8( \p a c f c a c g c) c4. |
    r4. e-flat( #(make-dynamic-script (markup #:normal-text (#:italic "più") #:dynamic "f")) c b-flat) |
    g-sharp2.-_ \> \tempo "poco rit." f-_ |
    \tempo "a tempo"
    e1.-> \! |
    e-flat4.->( d4) r8 e-flat4.->( d4) r8 |

    \mark \default % 12
    r4. d-flat( \> c c-flat |
    b-flat4.~8) \! r r r2. |
    \tempo "a tempo"
    R1.*2
    c'4.( \mf b8) r r c4.( b8) r r |
    r16 c \> 16 16 16 16~8 \! 8 8~8 d-flat8( b-flat!8 c8 d-flat8 b-flat8) |
    c2.( #(make-music 'CrescendoEvent 'span-direction START 'span-type 'text 'span-text "poco cresc.") b!4. b-flat) \! |
    a-flat4.( g-flat4) r8 a-flat4.( \> a4) \! r8 |
    b-flat4.( c-flat4) r8 b-flat4.( c-flat4) r8 |
    b-flat1. |
    c4.( b4. c2.) |
    b-flat!4.( \p \< a-flat g-flat e |
    <<
      { f1.) \> }
      { s2. s4. s \! }
    >> | \bar "|."
  }
}

\score {
  \header { piece = "3. Invocation" }
  \new Staff <<
    \horn-three
    \transpose f c' {
      \outline-three
    }
  >>
}

\score {
  \header { piece = "4. Pour Artémis" }
  \relative {
    \language "english"

    \transposition f

    \key b-flat \major
    \time 3/8

    \tempo "Comodo"

    \partial 8 r8 |

    R4.*5

    r8 r g' \f | \bar "||"

    \tempo "Animé" 4.=72

    c8. d16 e-flat8 |
    g4.~-> |
    g8. f16 e-flat8 |
    e-flat8. d16 c8 |
    d4.~ |
    d8 r r |
    R4.
    e-flat,8. #(make-dynamic-script (markup #:normal-text (#:italic "sempre") #:dynamic "f")) f16 g8 |
    b-flat4.( |
    c8) r g |
    c8. d16 e-flat8 |
    f4.~ |
    f8 r f, |
    b-flat8. c16 d8 |
    f8.( e-flat16 d8) |
    d8.( c16 b-flat8) |
    b-flat,4 r8 |

    \mark #15
    r8 r d \mf |
    d'8.( c16 b-flat8 |
    a4 g8 |
    a4 f-sharp8 |
    g8) r b-flat( |
    a4 f-sharp8 |
    g8. a16 b-flat8) |
    c8.( \< b-flat16 c8 |
    d8. c16 b-flat8 |
    f8) \! r r |
    R4.*5
    r8 r f |
    g8.( f16 g8 |
    f8. e-flat16 f8 |
    e-flat4. |
    d8) r
    <<
      {
        g8( |
        a8. \cresc b-flat16 c8 |
        d8.) g16 a8 |
        a4.~ |
        a8 \!
      }
      \\
      {
        s8 |
        s4. |
        d,8. \teeny g,16 a8 |
        a4.~ |
        a8
      }
    >>
    r8 r |
    r8 r g( \f |
    d'4. |

    \mark \default % 16
    d8) r g,( \mf |
    d'4.~ |
    d8) r g,( \tweak X-offset #0 #(make-dynamic-script (markup #:dynamic "p" #:normal-text (#:italic "écho"))) |
    d'4.~ |
    d4.~ |
    d4.~ \> |
    d8) \! r r |
    R4.
    r8 r \tempo "poco rit." b-flat~ \p |
    b-flat8 r a~ |
    a8 r g~ |
    g8 r f~ |
    f8 r a-flat |
    \tempo "a tempo"
    a-flat4 \cresc a-flat8 |
    g4 f8 |
    f4.~ |
    f8 r e-flat' _\mf |
    e-flat8.-^ f16 e-flat8 |
    e-flat8.-^ f16 e-flat8 |
    e-flat4.-^~ \tweak to-barline ##f \> |
    \tempo "rit."
    e-flat8 \! r r |
    R4.*2

    \mark \default % 17
    e-flat,4.-^~ \p |
    e-flat4 r8 |
    e-flat4.-^~( \> | \bar "||"
    \key a-flat \major
    \tempo "Più lento" 4.=48
    e-flat4._\markup { \italic "espress." } \! | \noBreak
    g4. |
    f4. |
    e-flat4.) |
    g4.( |
    f4. |
    e-flat4.) |
    b-flat'4.( |
    a4.) |
    a-flat4.( |
    g4. |
    g-flat4. |
    f4.~ |
    f4.~ |
    f8) r r |
    e4.~ \< |
    e4.~ |
    e4.~ |
    e4. \dim |
    f4.( |
    g4.~ |
    g4) r8 |
    e-flat4.( \p |
    g-flat4. |
    f4. |

    \mark \default % 18
    e-flat4.) \< |
    g4.( \tweak X-offset #0 #(make-dynamic-script (markup #:normal-text (#:italic "poco più") #:dynamic "f")) |
    f4. |
    e4.) |
    b-flat'4.( \dim |
    d-flat4. |
    f4. |
    e4.~ \< |
    e4.) |
    e-flat4.~ \! \> |
    e-flat8 \! r r |
    R4. |
    e,4.( |
    f-sharp4. |
    g4. |
    a-flat4.) |
    c4.( |
    b-flat4. |
    a-flat4.~ |
    a-flat8) r r |
    R4. |
    a-flat4.( |
    c4. |
    b-flat4. |
    a-flat4.) |
    c4.( |
    b-flat4. \< |
    a-flat4.~ \! |
    a-flat4.) \breathe |
    c4. \> | \bar "||"

    \key g \major
    \tempo "Tempo I"
    b4 \! r8 |
    R4.*9

    \mark \default % 19
    R4.*7
    a4.->~ \mf |
    a8 r r |
    a4.->~ |
    a8 r r |
    <<
      { \repeat unfold 4 { a4.-^ } | }
      { s4. \< }
    >>
    <<
      {
        \repeat unfold 2 {
          a8-^ b-^ c-^ |
          c8-^ b-^ a-^ |
        }
      }
      { s8 \ff }
    >>
    \repeat unfold 4 { a8-^ b-^ c-^ } |
    d8-^ r r |
    R4.*8 \bar "||"

    \mark \default % 20
    \key b-flat \major
    r8 r e-flat, \p |
    g-flat8( a-flat b-flat |
    c8 b-flat a-flat) |
    b-flat8( a-flat b-flat |
    c8. b-flat16 a-flat8 |
    g-flat8. f16 e-flat8) |
    \repeat unfold 3 { a-flat,4.~ } |
    a-flat4. |
    R4.
    b-flat'8. \cresc c16 d-flat8 |
    e-flat8. d-flat16 c8 |
    b-flat8. a-flat16 g-flat8 |
    f4.~ |
    f4.~ |
    f8 \! r r |
    R4.*6
    \tempo "rit."
    R4.*3
    r8 r \tempo "poco rit." b-flat->~ \mp |
    b-flat8 r a->~ |
    a8 r g->~( |
    \tempo "stretto"
    g4 f-sharp8) |
    g4->( f-sharp8~ |
    \tempo "a tempo"
    f-sharp4.~ |
    f-sharp4) r8 |
    a4-+( \rfz g8-+) |
    a4-+( g8-+) |
    a,4.~ \p |
    a4. |
    R4.*2

    \mark \default % 21
    <<
      { \repeat unfold 4 { g'8. a16 g8 | } }
      { s8. \mf \< }
    >>
    g8.( \ff a16 b-flat8 |
    d4) r8 |
    g,8.( a16 b-flat8 |
    d4) r8 |
    g,8.( a16 b-flat8 |
    d8) r r |
    R4.*3
    f,4.-^~( \> | \bar "||"
    \tempo "Poco più lento"
    f4. \p |
    a4. |
    g4. |
    f4.) \< |
    a4.( |
    g4. |
    f4.) \! |
    c'4.( #(make-music 'CrescendoEvent 'span-direction START 'span-type 'text 'span-text "poco cresc.") | \noBreak
    c-flat4. | \noBreak
    b-flat4. |
    a4. |
    a-flat4. |
    g4.~ |
    g4.~ |
    g4) \! r8 |
    R4.*3
    g-flat4.~ \dim |
    g-flat4.~ |
    g-flat4.~ |
    g-flat4. |
    g!4.( \! |
    \tempo "cédez"
    a4.) \breathe |

    \mark \default % 22
    \tempo "a tempo"
    a-flat4.( \pp |
    g4. |
    f-sharp4. |
    g4. |
    f-sharp4. |
    g4.) |
    a-flat4.( \< |
    g4. |
    g-flat4.~ \! |
    \tempo "poco rit."
    g-flat4.) |
    g!4.( \> |
    a4) r8 \! |
    \tempo "a tempo"
    R4.*4
    \tempo "rit."
    R4.*5

    \mark \default % 23
    r8 r \tempo "a tempo" c-sharp8 \f |
    c-sharp8.-^ b16 c-sharp8 |
    c-sharp8.-^ \< b16 c-sharp8 |
    d-sharp8. \! c-sharp16 b8 |
    c-sharp8. b16 a-sharp8~ \tweak to-barline ##f \> |
    a-sharp4.~ |
    \tempo "rit. al fine"
    a-sharp4.~ |
    a-sharp8 \! r r |
    R4.*3
    g-flat4.~ \mp |
    g-flat4.~ \dim |
    g-flat4.~ |
    g-flat4. \tweak to-barline ##f \> |
    f4.~ |
    f4.\fermata \! | \bar "|."
  }
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
