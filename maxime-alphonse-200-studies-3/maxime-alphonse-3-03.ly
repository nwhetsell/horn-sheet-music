\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegretto" 4=96

  \key e-flat \major
  \time 4/4

  #(define measures-one-to-six #{
    \relative {
      b-flat'4( g'8) r a-flat,4( f'8) r |
      g,8[ r16 a-flat] b-flat8[ r16 c] b-flat8 \breathe r e-flat,8[ r16 d] |
      c8[ \< r16 e-flat] a-flat8[ r16 c] e-flat[ \> r f e-flat] d8 c \! |
      b-flat8[ r16 a-flat] 8[ r16 b-flat] g8 r \stemUp b-flat8. 16-. \stemNeutral |
      d,4-^ e-flat-^ f-^ b-flat8. 16-. |
      e-flat,4-^ f-^ g-^ \breathe
    }
  #})

  #(define measures-one-to-seven #{
    \relative {
      <<
        { \measures-one-to-six e-flat''8.( \< c16) | }
        {
          \repeat unfold 2 { s4 \> s8 \! s } |
          s1*3 |
          s4 \mf
        }
      >>
      a4-> f'8.( d16) b-flat4-> g'8.( e-flat16) |
    }
  #})

  \partial 4 { g'8.( \mf a-flat16) } |
  \measures-one-to-seven |
  e-flat'8-.( \f d-. 8-. c-. e-flat-. \> c-. b-flat-. a-.) |
  c8( b-flat) \! 4. r8 g8.( \p a-flat!16) |

  \measures-one-to-seven |
  e-flat'8-.( \f d-. 8-. c-. e-flat-. \> c-. g-. a-.) |
  c8( b-flat) \! 4. r8 4( \f |

  #(define measures-nineteen-to-twenty #{
    \relative {
      f''4->) 8.-> g16-. f8.-> e-flat16-. d8.-> e16-. |
      e4->( \sf \> f2) \breathe b-flat,4( \p |
    }
  #})

  \measures-nineteen-to-twenty
  d8-!) r b-flat[ r16 c] b-flat8 r8 4( |
  e-flat8-!) r b-flat[ r16 c] b-flat8 r8 4( \f |
  \measures-nineteen-to-twenty
  e-flat!8-!) r b-flat[ r16 c] b-flat8 r8 4( |
  f'8-!) r b-flat,[ r16 a-flat] g8 r g' \f e-flat |

  c8 b-flat8 8. a16-. 4-> g'8 e-flat |
  e-flat8 c8 8. b-flat16-. 4-> \mf \< \breathe d8 e-flat |
  e8->( \! f16) r e8->( \! f16) r e8->( \! f16) r g8->( \! e-flat16) r |
  d8-.( c-. e-flat-. c-. b-flat-. a-. g-. a-.) |
  c8( b-flat) \! 4. r8 g8.( \p a-flat!16) |

  <<
    { \measures-one-to-six a-flat8.( f16) | }
    {
      \repeat unfold 2 { s4 \< s8 \! s } |
      s1*2 |
      s2. s4 \p
    }
  >>
  d4-> b-flat'8.( g16) e-flat4-> c'8.( a-flat16) |
  a-flat8->( g-. 8-. f-. a-flat-. f-. e-flat-. d-.) |
  f8( e-flat) e-flat4~4 r | \bar "|."
}
