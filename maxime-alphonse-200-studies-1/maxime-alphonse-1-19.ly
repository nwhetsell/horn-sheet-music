\version "2.22.0"

\include "settings.ily"

\relative {
  \language "english"

  \transposition f

  \tempo "Allegro" 4=120

  \key d \major
  \time 4/4

  d'4 \p \< e8-. f-sharp-. g-. a-. b-. c-sharp-. |
  d8-. \> c-sharp-. b-. a-. g-. f-sharp-. e-. d-. |
  a'4 \! r4 r8 d,-. \< e-. f-sharp-. |
  g8-. \> f-sharp-. e4 \! r8 8-. \< f-sharp-. g-. |

  a8-. \> g-. f-sharp4 \! r8
  #(if preserve-line-breaks? #{ \override DynamicLineSpanner.staff-padding = #2.3 #})
  8 \< g a \! |
  #(if (not preserve-line-breaks?) #{ \override DynamicLineSpanner.staff-padding = #2.3 #})

  b8^> \< g a b \! c-sharp-> \< a b c-sharp |
  d4-> \! c-sharp8-. b-. a-. g-. f-sharp-. e-. |
  \revert DynamicLineSpanner.staff-padding
  d8-. e-. f-sharp-. g-. a-. b-. c-sharp-. d-. |
  a4-> \breathe g8-. f-sharp-. e-. d-. c-sharp-. b-. |
  a8-. b-. c-sharp-. d-. e-. f-sharp-. g-. a-. |
  b8-. a-. g-. f-sharp-. e-. d-. c-sharp-. b-. |
  a8-.[ \breathe d-.] c-sharp-. b-. a-. g-. f-sharp-. e-. |
  d4-> e8-. f-sharp-. g-. a-. b-. c-sharp-. |
  d4 \breathe e8-. \< f-sharp-. g-. a-. b-. c-sharp-. |
  d2 \> r \! | \bar "|."
}
