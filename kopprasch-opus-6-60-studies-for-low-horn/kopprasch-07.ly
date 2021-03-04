\version "2.22.0"

\include "settings.ily"

\relative {
  \language "english"

  \transposition f

  \key c \major
  \time 4/4

  \tempo "Adagio"
  \repeat volta 2
  {
    \override DynamicLineSpanner.staff-padding = #2.75
    c'2 \p \< e4 g \! |
    <<
      { c1\fermata }
      {
        s2 \p
        \override Hairpin.minimum-length = #3
        s4*2/3 \< s \> s \!
        \revert Hairpin.minimum-length
      }
    >> |
    g2 \p \< b4 d |
    <<
      { g1\fermata }
      {
        \override Hairpin.minimum-length = #3
        s2*2/3 \< s \> s \!
        \revert Hairpin.minimum-length
      }
    >> |
    e4 \f c a d |
    \override DynamicLineSpanner.staff-padding = #2
    <<
      { g,1\fermata }
      {
        s2 \p
        \override Hairpin.minimum-length = #3
        s4*2/3 \< s \> s \!
        \revert Hairpin.minimum-length
      }
    >> |
    a2 \p \< b4 c-sharp |
    d2( f4) \! r |
    \revert DynamicLineSpanner.staff-padding
    g,2 \p \< a4 b |
    c2( e4) \! r |
    c4 \f a d \> f-sharp, |
    g2( g,4) \! r |
  }
  \repeat volta 2
  {
    g2 \p \< b4 d |
    g4 b d2 \f |
    g,,2 \p \< c4 e |
    g4 c e2 \f |
    f,,2 a4 c |

    f4 a c e |
    % The 1st edition has:
    % f4 a d e |

    f4 d a b |
    c2( c,4) r |
    g2 \p a4 b |
    c2 d4 e |
    f4 d b g |
    c2 r |
    c,4 \f c' e g |
    c4 g e c |
    g4 c g e |
    c2 r |
  }
}
