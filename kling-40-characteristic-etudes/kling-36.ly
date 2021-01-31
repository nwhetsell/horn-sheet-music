\version "2.22.0"

\include "settings.ily"

\relative {
  \language "english"

  \transposition f

  \tempo "Largo"

  \key c \minor
  \time 4/4

  g'4~( \p \tuplet 3/2 4 { g8 f-sharp g e-flat d e-flat c b c) } |
  \clef \bass-clef-name g4~( \tuplet 3/2 4 { g8 f-sharp g e-flat d e-flat c b c) }  |
  g2( \< a-flat4 c) \! |
  e-flat4. g8 #(if (not (string=? bass-clef-name "bass^8")) #{ \clef "treble" #}) c e-flat g #(if (string=? bass-clef-name "bass^8") #{ \clef "treble" #}) c |

  \barNumberCheck #5
  \cadenzaOn
  e-flat4\fermata \<
  \magnifyMusic \cadenza-magnification {
    d16^\markup { \normalsize \italic "ad lib." }([ e-flat b c f-sharp, \! g a-flat! g e-flat c]) g4\fermata r8 g' d'8.->([ c16]) \!
    c4->( b-natural!8) r b f'8.->([ e-flat16])
    e-flat4->( d8) r8
    d16->([ e-flat f d]) b-natural!->([ c d b]) f->([ g a-flat! f]) d->([ e-flat f d])
    b4\fermata( c16[ d e-flat f g])
    a-flat2\fermata( \< g\fermata) \>
  }
  \cadenzaOff \bar "|"
  \set Score.currentBarNumber = #6

  \clef \bass-clef-name c,,2-^~ \tweak X-offset #0 #(make-dynamic-script (markup #:dynamic "ff" #:normal-text (#:italic "marcato"))) \tuplet 3/2 4 { c8 c-> d-> e-flat-> f-> g-> } |
  a-flat4~ \tuplet 3/2 { a-flat8 f-> d-> } b4-> r |
  \clef "treble" g''2~ \pp \tuplet 3/2 4 { \tupletDown g8 \< g( a \tupletNeutral b e-flat! d) } |
  c4~ \> \tuplet 3/2 { c8 \! g-. e-flat-. } c4 r |
  \clef \bass-clef-name c,2-^~ \ff \tuplet 3/2 4 { c8 d-> e-flat-> f-> g-> a-flat-> } |
  b-flat4~ \tuplet 3/2 { b-flat8 g-> e-flat-> } b-flat4-> r |
  \clef "treble" \once \stemUp b-flat''2~( \pp \tuplet 3/2 4 { b-flat8 \< a b-flat c d, g) } |
  e-flat4~( \> \tuplet 3/2 { e-flat8 b-flat g' } e-flat4) \! r |
  \clef \bass-clef-name a-flat,2-^~ \ff \tuplet 3/2 4 { a-flat8 g-> f-> e-flat-> d-> c-> } |
  b4~ \tuplet 3/2 { b8 c-> d-> } g,4-> r |
  \clef "treble" g''2~( \pp \tuplet 3/2 4 { g8 \< f-sharp g a-flat g b,) } |
  c4~( \> \tuplet 3/2 { c8 g e-flat' } c4) \! r |
  \clef \bass-clef-name f,2-^~ \ff \tuplet 3/2 4 { f8 e-flat-> d-> a-flat'-> g-> f-> } |
  e-flat4~ \tuplet 3/2 { e-flat8 g-.-> c-.-> } e-flat4-> r |
  \clef "treble" g2~( \pp g16 \< f-sharp g a-flat a b-flat b d) |
  c4~( \> c16 g c g c4) \! r |

  c,,8-. \f c'' d,,-. d''-. e-flat,,-. e-flat''-. f,,-. f''-. |
  g4 e-flat16-. c-. g-. e-flat-. c8-. e-flat-. c'-. g'-. |
  % Override beam damping so the kneed beam does not collide with the Middle C
  % ledger line.
  \once \override Beam.damping = #4 f8-. d,,-. e-flat''-. c,,-. d''-. g,,-. b'-. g,-. |
  c4 \tuplet 5/4 { c,16-. e-flat-. g-. c-. e-flat-. } d4 \tuplet 5/4 { g,16-. b-. d-. f-. a-flat!-. } |
  g16( e-flat' b c f-sharp, g d e-flat b c f-sharp, g \clef \bass-clef-name d \> e-flat b c) |

  \barNumberCheck #27
  \cadenzaOn
  g4\fermata
  \magnifyMusic \cadenza-magnification {
    b16-.^\markup { \normalsize \italic "ad lib." }[ \! d-. #(if (not (string=? bass-clef-name "bass^8")) #{ \clef "treble" #}) g-. b-. d-. g-. #(if (string=? bass-clef-name "bass^8") #{ \clef "treble" #}) b-. d-.] f4\fermata r8 g, f'8.->([ e-flat16])
    e-flat4->( d8) r g, d'8.->([ c16])
    c4->( b-natural!8) r8 \bar ""
    f16->([ g a-flat f]) d->([ e-flat f d]) b->([ c d b])
    g4\fermata~ \tuplet 3/2 4 { g8[ f-sharp( g] a-flat[ g e-flat']) }
  }
  \cadenzaOff \bar "|"
  \set Score.currentBarNumber = #28

  e-flat4.( \> f16 e-flat d4. \tuplet 3/2 { f16 e-flat d }) |
  c4~( \p \tuplet 3/2 4 { c8 b \> c g f-sharp g e-flat d e-flat }) |
  c2 \pp c2 |
  c1\fermata | \bar "|."
}
