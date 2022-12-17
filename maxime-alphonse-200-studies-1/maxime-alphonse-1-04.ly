\version "2.24.0"

\include "../sf-accent.ily"

\relative {
  \language "english"

  \transposition f

  \tempo "Moderato" 4=92

  \key g \major
  \time 4/4

  #(define measures-two-to-three #{
    \relative {
      b'4-> a8-. g-. a4-> r8 8-. |
      \stemDown c4-> b8-. a-. b4-> r8 8-. \stemNeutral |
    }
  #})

  #(define measures-two-to-five #{
    \relative {
      \measures-two-to-three
      d''4-> c8-. b-. c4-> r8 8-. |
      e4-> d8-. c-. d4-> r8
    }
  #})

  \partial 8 { g'8-. \mf #(make-music 'CrescendoEvent 'span-direction START 'span-type 'text 'span-text "cresc. poco a poco") } |
  \set Score.currentBarNumber = #2
  \measures-two-to-five d'8-. \! |
  c8-> b-. a-. g-. f-sharp-. e-. r f-sharp16-. \tweak to-barline ##f \< g-. |
  a8 \! 8\sf-accent~8 b16-. a-. d,4 r8 g-. |

  \measures-two-to-three
  d'4-> c-sharp8-. b-. c-sharp4-> r8 8-. |
  e4-> d8-. c-sharp-. b4-> r8 8-. |
  a8-> g-. f-sharp-. e-. d-. c-sharp-. r d16-. \tweak to-barline ##f \< e-. |
  f-sharp8 \! 8\sf-accent~8 g16-. f-sharp-. b,4 r8 d-. \p |

  a'8-. 4-> b8-. g-. 4-> d8-. |
  a'8-. 4-> c8-. b-. 4-> d,8-. |
  a'8-. \cresc 4-> b8-. g-. 4-> f-sharp8-. |
  c-sharp'8-. 4-> e8-. d-. 4-> \breathe 8-. \f |

  g8-. 4-> e8-. f-sharp-. 4-> d8-. |
  f8-. 4-> d8-. e-. 4-> \breathe c-sharp8-. \mf \decresc |
  e-flat8-. 4-> c!8-. d-. 4-> b8-. |
  d8-. 4-> b-flat8-. d-. 4-> a8-. |
  d8-. 4-> \! r8 r4 r8 g,-. \p #(make-music 'CrescendoEvent 'span-direction START 'span-type 'text 'span-text "cresc. poco a poco") |

  \measures-two-to-five g'8-. \f |
  \stemDown f-sharp8-> e-. d-. c-. b-. a-. r b16-. c-. \stemNeutral |
  \partial 2.. { d8-. 8\sf-accent~8[ e16-. d-.] g,4 r8 } | \bar "|."
}
