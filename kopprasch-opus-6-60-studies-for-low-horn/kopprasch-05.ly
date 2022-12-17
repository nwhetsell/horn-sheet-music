\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \key c \major
  \time 4/4

  \override Score.NonMusicalPaperColumn.line-break-permission = ##f

  \repeat volta 2 {
    \tuplet 3/2 4 {
      c''8( \repeat unfold 5 { d c } d) |
      e8( \repeat unfold 5 { d e } d) |
      c8( \repeat unfold 5 { d c } d) |
    }
    e2 r | \break
    \tuplet 3/2 4 {
      d8( \repeat unfold 5 { e d } e) |
      f8( \repeat unfold 5 { e f } e) |
      d8( \repeat unfold 5 { e d } e) |
    }
    c2 r | \break
    \tuplet 3/2 4 {
      e8( \repeat unfold 5 { f e } f) |
      g8( \repeat unfold 5 { f g } f) |
      e8( \repeat unfold 5 { f e } f) |
    }
    d2 r | \break

    c16( \repeat unfold 7 { d c } d) |
    e16( \repeat unfold 7 { d e } d) |
    c16( \repeat unfold 7 { d c } d) |
    e2 r | \break
    d16( \repeat unfold 7 { e d } e) |
    f16( \repeat unfold 7 { e f } e) |
    d16( \repeat unfold 7 { e d } e) |
    c2 r | \break
    e16( \repeat unfold 7 { f e } f) |
    g16( \repeat unfold 7 { f g } f) |
    e16( \repeat unfold 7 { f e } f) |
    c2 r | \break
    d16( \repeat unfold 7 { e d } e) |
    f16( \repeat unfold 7 { e f } e) |
    d16( \repeat unfold 7 { e d } e) |
    c2 r |
  }

  \revert Score.NonMusicalPaperColumn.line-break-permission
}
