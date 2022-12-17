\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Lento" 4=50

  \key a \major
  \time 4/4

  \once \override Slur.positions = #'(3 . 2) a'2~( \p \< 4. b8 |
  c-sharp2\fermata) \> r \! |
  c-sharp2~( \p \< 4. d8 |
  e2\fermata) \> r \! |
  f-sharp,2~( \< 4. g-sharp8 |
  a1) \> \breathe |
  a2~( \< 4. b8 |
  c-sharp4 \> e d c-sharp) \breathe |
  c-sharp1( \< |
  <<
    { b1) \> \breathe }
    { s2. s4 \! }
  >> |
  d2~( \p \< 4. e8 |
  f-sharp2\fermata) \> r \! |
  b,2~( \< 4. c-sharp8 |
  d2\fermata) \> r \! |
  g,4( \p \< b d f) |
  e2~( \f \> 4. d-sharp8 |
  e1) \breathe |
  g-sharp,!4( \p \< b d! f) |
  e2~( \f \> 4. d8 |
  c-sharp1) \breathe |

  e2~( \p \< 4. c-sharp8 |
  a2\fermata) \> r \! |
  c-sharp2~( \< 4. a8 |
  f-sharp2\fermata) \> r \! |
  a2~( \< 4. f-sharp8 |
  c-sharp2\fermata) \> r \! |
  c-sharp2~( \< 4. e8 |
  <<
    { g-sharp1) \> \breathe }
    { s2. s4 \! }
  >> |
  g-sharp2~( \< 4. c-sharp8 |
  e1) \> \breathe |
  e2~( \< 4. d8 |
  c-sharp1) \> \breathe |
  c-sharp2~( \! 4. b8 |
  <<
    {
      a1-\tweak script-priority 2 ^\markup { \italic "long" }
        -\tweak script-priority 1 \fermata)
    }
    {
      \override Hairpin.minimum-length = #3
      s2*2/3 \< s \> s \!
      \revert Hairpin.minimum-length
    }
  >> | \bar "|."
}
