\version "2.22.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Moderato" 4.=84

  \key b-flat \major
  \time 12/8

  #(define measures-three-to-seven #{
    \relative {
      f'8.-> b-flat16-. d8-. 8.-> 16-. 8-. g-> f-. d-. b-flat8.-> c16-. 8-. |

      d4.-> r8 8-. f-. d8.-> c16-. 8-. r d-. f-. |
      d8.-> b-flat16-. 8-. r b-flat,-. d-. g8.-> f16-. 8-. g-. f-. d-. |
      c'8.-> b-flat16-. 8-. c-. b-flat-. f-. e-flat'8.-> d16-. 8-. e-flat-. d-. b-flat-. |
      f'8.-> f,16-. 8-. d'8.-> d,16-. 8-. b-flat'8.-> b-flat,16-. 8-.
    }
  #})

  b-flat'8.-> \mf d16-. f8-. 8-. d-. b-flat-. f8.-> b-flat16-. d8-. 8-. b-flat-. f-. |
  \repeat unfold 2 { d8.-> f16-. b-flat8-. e-flat,-. g-. b-flat-. } |
  \measures-three-to-seven r4. |

  r8 f-. \f f,-. f'4.->~8. 16-. 8-. a-. c-. a-. |
  f'8.-> f,16-. 8-. r f-. \< f'-. \! g8.-> e-flat16-. 8-. r e-flat,-. \< e-flat'-. \! |
  f8.-> d16-. 8-. r d,-. \< d'-. \! e-flat8.-> c16-. 8-. d-. 8-. b-flat-. |
  e-flat8.-> c16-. 8-. r d-. b-flat-. e-flat8.-> c16-. 8-. d8.-> b-flat16-. 8-. |
  f4.->~8 a-. c-. f,4.->~8 b-flat-. d-. |
  \repeat unfold 2 { f,8.-> a16-. c8-. f,8.-> b-flat16-. d8-. } |
  f2. r |

  b-flat,8-> \mf \< d f8 8.-> \! d16 b-flat8 f-> \< b-flat d8 8.-> \! b-flat16 f8 |
  \repeat unfold 2 { d8-> f-. b-flat-. e-flat,8.-> g16-. b-flat8-. } |
  <<
    { \measures-three-to-seven f8.-> f,16-. 8-. | }
    {
      s1. |
      \repeat unfold 2 { s4. s8 s \< s \! } |
    }
  >>
  b-flat2. \> r \! \bar "|."
}
