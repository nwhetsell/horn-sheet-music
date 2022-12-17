\version "2.24.0"

\relative {
  \language "english"

  \transposition f

  \tempo "Moderato" 4.=76

  \key b \major
  \time 9/8

  b'8 \p \< d-sharp f-sharp e \> d-sharp c-sharp b a-sharp \! c-sharp |
  b4.( \> f-sharp2.) \breathe |
  b8 \< d-sharp f-sharp e \> d-sharp c-sharp b a-sharp \! c-sharp |
  b2. r8 d-sharp8 \< e |
  f-sharp4( \sf \tweak minimum-length #5 \> c-sharp8) \! r e d-sharp c-sharp b d-sharp |
  c-sharp4.( f-sharp,) r8 d-sharp' \< e |
  f-sharp4( \sf \tweak minimum-length #5 \> c-sharp8) \! r e d-sharp c-sharp b d-sharp |
  c-sharp2. r4. |

  d-sharp8 8 c-sharp8 4( b8) d-sharp f-sharp d-sharp |
  c-sharp4( b8) d-sharp \< c-sharp b a g a |
  <<
    { b8 \> 8 c-sharp b2. \breathe  }
    { s2. s4 s8 \! }
  >> |

  b,4 \f d-sharp8-. f-sharp4 b8-. d-sharp4 b8-. |
  \stemDown e4 d-sharp8-. c-sharp4 b8-. a-sharp!4 c-sharp8-. \stemNeutral |
  f-sharp,2.~8 a-sharp c-sharp |
  f-sharp,4.~8 g-sharp f-sharp e d-sharp c-sharp |
  d-sharp8 8 f-sharp b,2. \breathe |
  b4 \p d-sharp8 f-sharp4 b8 d-sharp4 b8 |
  \stemDown e4 d-sharp8 c-sharp4 b8 a-sharp4 c-sharp8 \stemNeutral |
  f-sharp,2.~8 a-sharp c-sharp |
  f-sharp,4.~8 g-sharp f-sharp e d-sharp c-sharp |
  d-sharp8 8 f-sharp b2. \breathe |

  d-sharp8 \mf 8 c-sharp8 4( b8) d-sharp f-sharp d-sharp |
  c-sharp4( b8) d-sharp \< c-sharp b a g a |
  b8 \> 8 c-sharp b4. \! r |

  b8 \p \< d-sharp f-sharp e \> d-sharp c-sharp b a-sharp! \! c-sharp |
  b4.( \> f-sharp2.) \breathe |
  b8 \< d-sharp f-sharp e \> d-sharp c-sharp b a-sharp \! c-sharp |
  b2. r4. |

  b,4-> \f d-sharp8-. f-sharp4-> b8-. d-sharp4-> f-sharp8-. |
  \stemDown e4-> d-sharp8-. c-sharp4-> b8-. a-sharp4-> c-sharp8-. \stemNeutral |
  b2.->~8 d-sharp f-sharp |
  b,4. \breathe 8 d-sharp b f-sharp' d-sharp b |
  f-sharp8 d-sharp f-sharp b,2. | \bar "|."
}
