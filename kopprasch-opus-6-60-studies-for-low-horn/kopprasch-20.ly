\version "2.22.0"

\include "settings.ily"

\relative {
  \language "english"

  \transposition f

  \tempo "Moderato risoluto"

  \key c \major
  \time 4/4

  \repeat volta 2 {
    \partial 4 { c'4->( \p }
    d8) r c4->( e8) r c4->( |
    f8) \cresc r c4->( g'8) r c,4->( |
    a'8) r c,4->( b'8) r c,4->( \f |
    c'2\fermata) r4 g->( \p |
    a8) r g4->( b8) r g4->( |
    c8) \cresc r g4->( d'8) r g,4->( |
    e'8) r g,4-> \tweak details.accidental-collision #5 ( f-sharp'8) r g,4->( \f |
    g'2\fermata) r4 g4->( |
    f-natural!8) r g4->( e8) r g4->( |
    d8) r g4->( c,8) r g'4->( |
    b,8) r g'4->( a,8) r g'4->( |
    g,2\fermata) r4 c4->( \p |
    b8) r c4->( a8) r c4->( |
    g8) r c4->( f,8) r c'4->( |
    e,8) r c'4->( d,8) r c'4->( |
    c,2\fermata) r4 c4( \f |

    f-sharp8) r c'4( d,8) r d'4( |
    g,8) r g,4( b'8) r g'4( |
    a,8) r f-sharp4( c'8) r d,4( |
    g8) r f-natural'!4( b,8) r\fermata c,,4( \mf |

    d'8) \cresc r c,4( e'8) r c,4( |
    f'8) r c,4( g''8) r c,,4( |
    a''8) r c,,4( \f b''8) r c,,4( |
    c''2\fermata) r4 g,4( \p |
    g'8) r g,4( a'8) r g,4( |
    b'8) \cresc r g,4( c'8) r g,4( |
    d''8) r g,,4( e''8) r g,,4( \f |
    f''2\fermata) r4 e4( \p |

    g-sharp,8) r e4( a8) r f'4( |
    b,,8) r g-natural!4( c8) r <a'' \tweak font-size #-2 e>4( |
    f-sharp,8) r e-flat4( c'8) r a4( |
    c,8) r b4( g'8) r g,4( \f |
    a-flat8) r a-flat'4( e-flat8) r c4( |
    e-flat8) r e-flat'4( c8) r a-flat,4( |
    g8) r c'4( e-flat8) r g,,4( |
    f-sharp8) r c''4( \p e-flat8) r f-sharp,,4( \f |
    g8) r c'4( \p e-natural,!8) r g,4( \f |
    g'8) r f'4( \p b,8) r g,4( \f |
    c8) r g'4( \p e8) r c,4( \f |
    d'8) r b'4( \p g,8) r c,4( \f |
    e'8) r c'4( \p g,8) r c,4( \f |
    f'8) r d'4( \p b,8) r c,4( \f |
    % The 1st edition includes another measure:
    % e'8) r c'4( \p g,8) r c,4( \f |
    e'8) r g'4( \p g,8) r c,,4( \f |
    d'8) r g4( \p g,8) r c,4( \f |
    e'8) % The 1st edition has a D here.
      r c'4( \p c,8) r e'4( \f |
    c,,2.\fermata)
  }
}
