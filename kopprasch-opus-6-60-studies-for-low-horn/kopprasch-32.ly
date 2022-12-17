\version "2.24.0"

\include "settings.ily"

\relative {
  \language "english"

  \transposition f

  \tempo "Moderato"

  \key c \major
  \time 4/4

  % This entire section (up to the double bar line) is not in the 1st edition.
  c8_\markup { \italic "sempre staccato" } e' c, g'' c,, c'' c,, e'' |
  c,,8 g''' c,,, e'' c,, c'' c,, g'' |
  g,8 b g d' g, g' g, b' |
  g,8 d'' g,, e'' g,, f'' g,, g'' |
  e8 r c c,, d'' c,, b'' c,, |
  c''8 c,, e'' c,, c''4 r |
  g,8 g' g, a' g, b' g, c' |
  g,8 d'' g,, c-sharp' g, d'' g,, b' |
  g,8 g' g, b' g,
    d'' g,, f'' % This would likely be c'' g,, d'' if it was in the 1st edition.
    |
  g,,8 e'' g,, d'' g,, e'' g,, c' |
  d8 g,, c-sharp' g, d'' g,, b' g, |
  g'8 g, r4 r2 |
  f'8 g, e' g, f' g, d' g, |
  b8 g r4 r2 |
  c8 c, d' c, e' c, f' c, |
  g''8 c,, a'' c,, b'' c,, c'' c,, |
  d''8 g,, e'' g,, f'' g,, g'' g,, |
  e''8 c,, r4 c''8 c,, r4 |
  d''8 g,, r4 b'8 g, r4 |
  c,8 e' c, g'' c,, c'' c,, e'' |
  c,,8 g''' c,,, e'' c,, c'' c,, g'' |
  c,,8 f' c, a'' c,, c'' c,, f'' |
  c,,8 e' c, g'' c,, c'' c,, e'' |
  c,,8 g''' c,,, e'' c,, c'' c,, g'' |
  g,8 b g d' g, g' g, b' |
  g,8 d'' g,, e'' g,, f'' g,, g'' |
  e8 r c c,, d'' c,, b'' c,, |
  c''8 c,, e'' c,, c''4 r | \bar "||"

  c,,8 e' c, g'' c,, c'' c,, e'' |
  c,,8 g''' c,,, e'' c,, c'' c,, g'' |
  g,8 b g d' g, g' g, b' |
  g,8 d'' g,, f'' g,, d'' g,, b' |
  c8 c, e' c, c' c, a' f-sharp, |
  g'8 g, r2 r4 |
  c,8 c' c, d' c, e' c, f' |
  c,8 g'' c,, a'' c,, b'' c,, c'' |
  g,8 g' g, a' g, b' g, c' |
  g,8 d'' g,, e'' g,, f'' g,, g'' |
  e8 r c c,, d'' c,, b'' c,, |
  c''8 c,, e'' c,, c''4 r | \bar "||"

  g,8 g' g, a' g, b' g, c' |
  g,8 d'' g,, c-sharp' g, d'' g,, b' |
  g,8 g' g, b' g,
    d'' g,, f'' % The 1st edition has c'' g,, d''.
    |
  g,,8 e'' g,, d'' g,, e'' g,, c' |
  d8 g,, c-sharp' g, d'' g,, b' g, |
  g'8 g, r4 r2 |
  f'8 g, e' g, f' g, d' g, |
  b8 g r4 r2 |
  c8 c, d' c, e' c, f' c, |
  \repeat unfold 2 { g''8 c,, a'' c,, b'' c,, c'' c,, | }
  d''8 g,, e'' g,, f'' g,, g'' g,, |
  e''8 c,, r4 c''8 c,, r4 |
  d''8 g,, r4 b'8 g, r4 |
  c,8 e' c, g'' c,, c'' c,, e'' |
  c,,8 g''' c,,, e'' c,, c'' c,, g'' |
  c,,8 f' c, a'' c,, c'' c,, f'' |
  c,,8 a''' c,,, f'' c,, c'' c,, a'' |
  g,8 f' g, g' b, b' g, d'' |
  g,,8 f'' g,, d'' g,, b' g, g' |
  c,,8 e'' c,, c'' c,, g'' c,, e' |
  c,8 c' c, g' c,4 r | \bar "|."
}
