\version "2.24.0"

flute-one = \relative {
  \language "english"

  R1*4

  g'8( \p \< b-flat4 e-flat8) f8( g4 a8) |
  b-flat16( \< c d e-flat) c-flat( b-flat) a b-flat a-flat( \> g-flat) f g-flat f-flat( e-flat) d e-flat |
  b-flat16 \< e-flat g! b-flat e-flat b-flat b-flat e-flat e( \> c-sharp) a e a( e) c-sharp a |

  % Without this, LilyPond produces a spurious warning; see
  % https://gitlab.com/lilypond/lilypond/-/issues/3729#note_339793873
  \override TrillPitchAccidental.avoid-slur = #'inside

  e-flat'!16( \< f e-flat f \tuplet 6/4 { e-flat f e-flat f e-flat f) } \afterGrace { \pitchedTrill { e-flat2\startTrillSpan( \> } f-flat } { f-flat16 e-flat d e-flat } |

  b-flat'8-.)\stopTrillSpan \! r
  \override Script.avoid-slur = #'inside
  \tuplet 3/2 { g-_( \< a-flat-_ b-flat-_ } b-_) \!
  \revert Script.avoid-slur
  d-sharp,( e f-sharp) |

  g8( \tuplet 3/2 { f!16 g f } e-flat!8) 8~( 8 4-. 8-.) |
  <<
    \repeat unfold 2 {
      f-sharp8 d-sharp c-sharp4~( 8 b \tuplet 3/2 { c-sharp-. d-sharp-. e-sharp-.) } |
    }
    {
      s1 #(make-music 'CrescendoEvent 'span-direction START 'span-type 'text 'span-text "poco cresc.") |
      % 1
      s1 \! |
    }
  >>

  f-sharp8 \< g b4~( \! 8 g-sharp e c-sharp) |
  b8( c-sharp b c-sharp b g-sharp f-sharp g-sharp) |
  f-sharp8( g! f-sharp e d-sharp e d-sharp c-sharp) |
  b'1( \> |
  b-flat!8) \! \breathe e-flat4( e8~8 f-sharp-- g-- a-- |
  b-flat8) e-flat,!4( #(make-dynamic-script (markup #:normal-text (#:italic "più") #:dynamic "f")) e8~8 f-sharp-- g-- a--) |
  b-flat16( c d e-flat) c-flat( b-flat) a b-flat a-flat( g-flat) f g-flat f-flat( e-flat) d e-flat |
  b-flat16 e-flat g b-flat e-flat b-flat b-flat e-flat e( c-sharp) a e a( e) c-sharp a |
  e-flat'!16( \< f e-flat f \tuplet 6/4 { e-flat f e-flat f e-flat f) } \afterGrace { \pitchedTrill { e-flat2\startTrillSpan( \> } f-flat } { f-flat16 e-flat d } |
  e-flat4\stopTrillSpan) \! r r2 |
  R1

  % 2
  R1
  R1

  f,4( \tweak X-offset #0 #(make-dynamic-script (markup #:dynamic "p" #:normal-text (#:italic "dolce cantando"))) g-flat4~8 b-flat d-flat e-flat) |
  e4 f-_~8 \< g-flat4-_ a-flat8-_ |
  a-flat4->( \! g-flat~8 \> d-flat c-flat b-flat |
  a-flat4 \! g-flat~ \cresc 8) f( g-flat a-flat |
  d-flat2~ \! 8 b-flat c-flat d-flat |
  d8 \< e-flat4 f8~8 g-flat8 a-flat8 b-flatflat8 |
  a-flat8) \! f( e-flat d-flat! a-flat4 g-flat |

  % 3
  f2~8) d-flat'8( c b-flat |
  a-flat8 b-flat a-flat b-flat a-flat b-flat a-flat g-flat |
  f4.) \< g8( a b-flat c d-flat |
  e-flat4 f~4 g-flat!8 a-flat!) |
  b-flat8( \! a-flat g-flat f~8 g-flat a-flat g-flat |
  f8 \> e-flat d-flat c b-flat2) |
  r8 \! e-flat( d-flat c b c d-flat d |
  e-flat8 \< d-flat! c b-flat!~8 c d-flat d) |
  e-flat8( \! d-flat!8 c d-flat~8 e-flat e f~ |
  f2) r |
  R1

  % 4
  g,8( \p \< b-flat4 e-flat8) f8( g4 a8) |
  b-flat16( \< c d e-flat) c-flat( b-flat) a b-flat a-flat( \> g-flat) f g-flat f-flat( e-flat) d e-flat |
  b-flat16 \< e-flat g! b-flat e-flat b-flat b-flat e-flat e( \> c-sharp) a e a( e) c-sharp a |
  e-flat'!16( \< f e-flat f \tuplet 6/4 { e-flat \! f e-flat f e-flat f) } \afterGrace { \pitchedTrill { e-flat2\startTrillSpan( \> } f-flat } { f-flat16 e-flat d } |
  e-flat2\stopTrillSpan) \! r |

  R1*3
}
