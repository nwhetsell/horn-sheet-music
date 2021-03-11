\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Andante con moto"

  \key b \major
  \time 4/4

  \partial 4 { f-sharp'4( \p } |
  b4 \< d-sharp f-sharp g-sharp) |
  f-sharp4~( \> \tuplet 3/2 { f-sharp8 d-sharp b } \! f-sharp4) \tuplet 3/2 { f-sharp8( b c-sharp } |
  d-sharp4) \< \tuplet 3/2 { f-sharp,8( b d-sharp } c-sharp4) \> \tuplet 3/2 { f-sharp,8( a-sharp c-sharp } \! |
  b4) b'( \> f-sharp) \! f-sharp, |
  f-sharp8( \< b) b( d-sharp) d-sharp( f-sharp) f-sharp( g-sharp) |
  f-sharp4~( \> \tuplet 3/2 { f-sharp8 d-sharp b } \! f-sharp4) \tuplet 3/2 { f-sharp8( b c-sharp } |
  d-sharp4) \< \tuplet 3/2 { f-sharp,8( b d-sharp } c-sharp4) \> \tuplet 3/2 { f-sharp,8( a-sharp c-sharp } \! |
  b2) r4 b8. \mf b16 |
  b8( \< e) e( g-sharp) g-sharp( b) a-sharp-. g-sharp-. |
  f-sharp4.( \> d-sharp8 b4) \! b8. b16 |
  \tuplet 3/2 4 { b8( \< e) e-. e( g-sharp) g-sharp-. g-sharp( b) b-. b( a-sharp) g-sharp-. } |
  f-sharp4~( \> f-sharp16 d-sharp f-sharp d-sharp b4) \! f-sharp4( |

  b4 \< d-sharp f-sharp a) |
  g-sharp4~( \> \tuplet 3/2 { g-sharp8 e b } \! g-sharp4) \tuplet 3/2 { g-sharp8( a-sharp b } |
  f-sharp4) \tuplet 3/2 { f-sharp8( \< b d-sharp } c-sharp4) \> \tuplet 3/2 { f-sharp,8( a-sharp c-sharp } \! |
  b4) \tuplet 3/2 { b'8( \> f-sharp d-sharp } b4) \! f-sharp4 |
  f-sharp8( \f \< b) b( d-sharp) d-sharp( f-sharp) f-sharp( a) \! |
  g-sharp4~( \tuplet 3/2 { g-sharp8 e b } g-sharp4) \tuplet 3/2 { g-sharp8( a-sharp b } |
  f-sharp4) \tuplet 3/2 { f-sharp8( \< b d-sharp } g-sharp4) \> \tuplet 3/2 { f-sharp8( g-sharp,) a-sharp-. } \! |
  b2 r4 b8. \p b16 |

  \tuplet 3/2 4 { b8( \< f-sharp b) c-sharp( f-sharp, c-sharp') d-sharp( f-sharp, d-sharp') c-sharp( f-sharp, c-sharp') } \! |
  b4 f-sharp'->( d-sharp) b8. b16 |
  \tuplet 3/2 4 { b8( \< f-sharp b) c-sharp( f-sharp, c-sharp') d-sharp( f-sharp, d-sharp') \stemUp e( f-sharp, d-sharp') \! \stemNeutral } |
  b4~ \tuplet 3/2 { b8 f-sharp( d-sharp') } b4~ \tuplet 3/2 { b8 f-sharp( \> d-sharp') } |
  \repeat unfold 2 { \tuplet 3/2 { b8( f-sharp d-sharp') } } \repeat unfold 2 { b16( f-sharp d-sharp' f-sharp,) } |
  b4~^\markup { \italic "rit." }( \p \tuplet 3/2 { b8 d-sharp f-sharp) } b4~( \tuplet 3/2 { b8 f-sharp d-sharp) } |
  b4~( \tuplet 3/2 { b8 f-sharp d-sharp) } b4~( \tuplet 3/2 { b8 d-sharp f-sharp) } |
  \partial 2. {
    <<
      { b2\fermata r4 }
      {
        \override Hairpin.minimum-length = #3
        s4*2/3 \< s \> s \!
        \revert Hairpin.minimum-length
      }
    >>
  } | \bar "|."
}
