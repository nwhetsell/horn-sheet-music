\version "2.24.0"

source-url = "https://imslp.org/wiki/R%C3%AAverie%2C_Op.24_(Glazunov%2C_Aleksandr)"
\header {
  composer-last-name = "Glazunov"
  composer-first-name = "Alexander"
  title = "Rêverie"
  opus = "Op. 24"
  instrument = "Horn in F"
}

\include "../titling.ily"
\include "settings.ily"

\pointAndClickOff

\layout {
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

      \transposition f

      #(if (not omit-key-signature?) #{
        \key a-flat \major
      #})
      \time 3/4

      \tempo "Andantino"

      R2.

      r4 r \tuplet 3/2 { a-flat'8_\markup { \dynamic "mp" \italic "dolce" }( \< b-flat c) } |
      c4->( \> f,) \tuplet 3/2 { a-flat8( \< b-flat c) } \! |
      c4( b-flat8-> a-flat-> g-> f->) |
      g8.( a-flat16) b-flat4.( \> c8) \! |
      \tuplet 3/2 { b-flat8( c a-flat) } a-flat8. r16 \tuplet 3/2 { c8( \< d-flat e-flat) } |
      e-flat4->( \> a-flat,) \tuplet 3/2 { c8( \< d-flat e-flat) } \! |
      e-flat8( a-flat,) d-flat4.( c8) |
      b-flat8.( \< c16 d-flat4) f |
      f4->( \f b-flat,8) r8 e-flat4~( |
      \tupletDown
      \tuplet 3/2 4 { e-flat8 c a-flat f a-flat c) } b-flat8.( e-flat16) |
      \tuplet 3/2 4 { e-flat8(_\markup { \center-align { \italic "meno" \dynamic "f" } } c a-flat) f4^\markup { \italic "poco rit." }( c'8) } b-flat8.( c16) |
      \tupletNeutral
      a-flat2.~ \tweak to-barline ##f \> |
      a-flat8^\markup { \italic "a tempo" } \! r8 r4 r |
      g-sharp8( \mf a b4) e8.( \< b16) |
      d2->~ \> d8 \! r8 |
      g-sharp,8( \p a b) b e8.( \< b16) \! |
      d8. r16 g4.( \< d8) |
      f2 \f \> f8.( \! c16) |
      e-flat4 \breathe d-flat4.( f,8) |
      c'2 \> c8.( \! g16) |
      b-flat4 \breathe a-flat4.( d,8) |
      g2.~ \p \<
      g2. |
      g8( \mf a-flat b-flat) b-flat e-flat8.( \< b-flat16) |
      d-flat2.->~( |
      d-flat2 \dim c4) |
      b-flat2( a-flat4) |
      g2.~ #(make-music 'DecrescendoEvent 'span-direction START 'span-type 'text 'span-text "stringendo") |
      g4 f2 |
      d-flat2 \cresc b-flat4~ |
      b-flat4 a-flat( g) |
      f2 \clef \bass-clef-name d-flat4~ |
      d-flat4 b-flat a-flat |
      a-flat2.->~^\markup { \italic "agitato" } \f |
      a-flat2.~ |
      a-flat2 r4 |

      r4^\markup { \italic "rit." } r \clef "treble" \tuplet 3/2 { \tempo "Tempo I" a-flat''8_\markup { \italic "dolce" }( \< b-flat c) } |
      c4->( \> f,) \tuplet 3/2 { a-flat8( \< b-flat c) } \! |
      c4( b-flat8-> a-flat-> g-> f->) |
      g8.( a-flat16) b-flat4.( \> c8) \! |
      \tuplet 3/2 { b-flat8( c a-flat) } a-flat4 \breathe \tuplet 3/2 { c8( \< d-flat e-flat) } |
      e-flat4->( \> a-flat,) \tuplet 3/2 { c8( \< d-flat e-flat) } \! |
      e-flat8( a-flat,) f'4.->( e-flat8) |
      d-flat8.( \< e-flat16 f4) g \! |
      g4( c,8) r8 a-flat'4->~ \ff |
      \tuplet 3/2 4 {
        a-flat8 f( d-flat) b-flat( d-flat f) \tupletUp e-flat4 e-flat8~ \f \tupletNeutral |
        e-flat8 c( a-flat) f( a-flat c) \tupletUp b-flat4 b-flat8~ \mf \tupletNeutral |
      }
      \tuplet 3/2 4 { b-flat8 g( e-flat c e-flat g) } f4~( \> |
      f2 \p \< g4) |
      a-flat4 d-flat4.( a-flat8) |
      c2.->~ \f \tweak to-barline ##f \> |
      c4 \! b-flat4.^\markup { \italic "rit." }( a-flat8) |
      a-flat2.~^\markup { \italic "a tempo" } \p |
      a-flat2. |
      a-flat8( \mf b-flat c) c f8.( c16) |
      e-flat4 d-flat4.( a-flat8) |
      c2.~ \tweak to-barline ##f \> |
      c4 \! r r |
      \override Script.avoid-slur = #'inside
      a-flat2-+( \pp b-flat4-+ |
      c4-+) f4.-+( c8-+) |
      e-flat2.-+( |
      e-flat2.\open) \< |
      \revert Script.avoid-slur
      e-flat2.( \tweak X-offset #0 #(make-dynamic-script (markup #:dynamic "mf" #:normal-text (#:italic "morendo"))) |
      e-flat2.\fermata) | \bar "|."
    }

    #(if preserve-line-breaks? #{ \new Voice {
      \repeat unfold 2 { s2.*5 \break }
      s2.*6 \break
      s2.*8 \break
      s2.*9 \break
      s2.*7 \break
      s2.*5 \break
      s2.*4 \break
      s2.*7 \break
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
