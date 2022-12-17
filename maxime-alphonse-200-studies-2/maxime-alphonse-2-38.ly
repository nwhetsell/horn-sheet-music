\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \once \override Score.MetronomeMark.padding = #4
  \tempo "Allegretto" 4.=69

  \key b-flat \major
  \time 6/8

  #(define measures-one-to-four #{
    \relative {
      d''4-> 8 8 c16 b-flat a b-flat |
      c4( \> a8 f) \< b-flat c |
      d4 \! 8 8 c16 b-flat a b-flat |
      c4. r8 c d |
    }
  #})

  \partial 4 { b-flat'8 \f c } | \bar "||"
  \repeat segno 2 {
    \measures-one-to-four
    e-flat4-> 8 8 d16 c b c |
    d4( \> b8) g \< c b-flat |
    a8 d c b-flat e-flat d |
    c4.( f16) r b-flat,8 \f c |
    \measures-one-to-four
    e-flat4-> 8 8 f16 e-flat d c |
    d4( \< \override Hairpin.minimum-length = #5 f8) \> b-flat, f \mf e-flat |
    \revert Hairpin.minimum-length
    d8 \tweak to-barline ##f \> b-flat' g e-flat c' a |
    \partial 4. { b-flat4. \! } | \bar "|."
    \fine

    \tempo "Poco più presto" 4.=76
    \partial 4. { r8 d-flat \f e-flat } | \noBreak
    f4 8 e-flat d-flat c |
    b-flat4_\markup { \italic "legato" }( d-flat8 b-flat4 e-flat8 |
    b-flat4 d-flat8 b-flat4 a8 |
    b-flat4.) r8 d-flat \p e-flat |
    f4 8 e-flat d-flat c |
    d-flat4( e-flat8 d-flat4 f8 |
    d-flat4 e-flat8 d-flat4 c8 |
    d-flat4.) r8 c \mf a |
    f8 f'4->~8 d-flat b-flat |
    f8 f'4->~8 c a |
    f8-> d-flat' b-flat f-> c' a |
    f4.-> r8 c' \p a |
    f8 f'4->~8 d-flat b-flat |
    f8 f'4->~8 c a |
    f8-> d-flat' b-flat f-> c' a |
    f4.-> r8 d-flat' \f e-flat |
    f4 8 e-flat d-flat c |
    b-flat4( d-flat8 b-flat4 e-flat8 |
    b-flat4 d-flat8 b-flat4 a8 |
    b-flat4.) r8 b-flat \f c | \bar "||"
  }
}
