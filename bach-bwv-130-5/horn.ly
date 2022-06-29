\version "2.22.0"

\include "definitions.ily"
\header {
  instrument = "Horn in F"
}

\include "tenor.ily"

\score {
  \new Staff
    \new Voice {
      <<
        {
          \transpose \tonic d' \relative d' {
            \transposition f
            \tenor-measures-one-to-eighty-eight
            \tenor-measures-eighty-nine-to-one-hundred-twenty-six \bar "|."
          }
        }
        {
          s2 |
          s1*15 |

          s1 |
          s4 s8( s) s4( s) |
          s4 s8( s) s2 |

          s1*3 |
          s1 |
          s2 s4( s) |
          s4 s8( s) s2 |
          s2 s4( s) |
          s4 \repeat unfold 3 { s8( s) } |
          s2 s4( s) |
          s4 \repeat unfold 2 { s8( s) } s4 |
          s4 s8( s) s4( s) |
          s1( |
          s1*2 |

          s1) |
          \repeat unfold 2 { s4 s8( s) } |
          s2 \repeat unfold 2 { s8( s) } |
          s1*2 |
          s4 s8( s) s4( s) |
          s4 \repeat unfold 3 { s8( s) } |
          s4 s8( s) s4( s) |
          s1( |
          s1*2 |

          s1) |
          \repeat unfold 4 { s8( s) } |
          s1( |
          s1 |
          s2) \repeat unfold 2 { s8( s) } |
          s4( s) \repeat unfold 2 { s8( s) } |
          s1 |

          s1*3 |
          s1 |
          s4 s2( s4) |
          \repeat unfold 2 { s4 \repeat unfold 3 { s8( s) } | }
          s2 \repeat unfold 2 { s8( s) } |
          s2 s4( s) |
          s4 \repeat unfold 3 { s8( s) } |
          \repeat unfold 4 { s8( s) } |
          s1( |
          s1*2 |
          s8 s) s( s) s2 |
          s4 \repeat unfold 3 { s8( s) } |
          s1 |

          s1*3 |
          s2. s8( s) |
          s8( s) s4( s s8 s) |
          s8( s) s2. |
          s4 \repeat unfold 3 { s8( s) } |
          s1( |
          s1*3 |
          s8 s) \repeat unfold 3 { s( s) } |
          s4. s8( s4. s8) |
          s2 \repeat unfold 2 { s8( s) } |
          s4 \repeat unfold 3 { s8( s) } |
          s1( |
          s1*2 |
          s2 s) |
          s1*2 |

          s1*3 |
          s1 |
          s4 s8( s) s4( s) |
          s4 s8( s) s2 |

          s1*3 |
          s1 |
          s2 s4( s) |
          s4 s8( s) s2 |
          s2 s4( s) |
          s4 \repeat unfold 3 { s8( s) } |
          s2 s4( s) |
          s4 \repeat unfold 3 { s8( s) } |
          s4 s8( s) s4( s) |
          s1( |
          s1*2 |

          s4) s s s8( s) |
          s1 |
          s2. s8( s) |
          s1 |
          s2. s8( s) |
          \repeat unfold 2 { s8( s) } s4( s) |
          s4 s8( s) s4 s |
          s1( |
          s1 |
          s2 s4) s8( s) |
          \repeat unfold 2 { s8( s) } s4 s8( s) |
          s2 s8( s16 s) s8( s) |
          s4 \repeat unfold 3 { s8( s) } |
          s1( |
          s1 |
          s8 s) \repeat unfold 3 { s8( s) } |
          s8( s s) s s4 s8( s) |
        }
        {
          s2 |
          s1*15 |

          s1*3 |
          s1*3 |

          s1*4 |
          \appoggiatura f-sharp'8 s1 |
          s1*2 |
          s4 \breathe s2. |
          s1 \mf \> |
          s1 \< |
          s1 |
          s4 \! s s2 \> |
          s1 |
          s4 \! s2. |
          s1 \> |
          s2 \! s |
          s1 |
          s4\trill s2. |
          s4 \breathe s2. |
          s1*10 |

          s1*3 |
          s2 s4 \< \afterGrace s( { g'8) } |
          \appoggiatura { a'8 \> } s2 s \< |
          s1 \! |
          s1*2 |
          s4 \breathe s2. |
          s1 |
          s1 \> |
          s2 \! s |
          s2 s8 \breathe s4. |
          s1*4 |

          s1*3 |
          s2 s \< |
          s1*2 |
          s1 \> |
          s1 \< |
          s1*2 |
          s1 \> |
          s1 |
          s1 \! |
          \appoggiatura f-sharp'8 s1 |
          s1*5 |
          s2 s4.\trill s8 |
          s1 |

          s1*3 |
          s2. \appoggiatura b'8 s4 |
          s1*2 |

          s1*3 |
          s1*3 |
          s2. \grace a'8 s4 |
          \appoggiatura f-sharp'8 s1 |
          s1*2 |
          s4 \breathe s2. |
          s1 \mf \> |
          s1 \< |
          s1 |
          s4 \!
        }
      >>
    }
}

\bookpart {
  \paper {
    bookTitleMarkup = ##f
    scoreTitleMarkup = ##f
    evenHeaderMarkup = ##f
    oddHeaderMarkup = \evenHeaderMarkup
  }
  \colophon
}
