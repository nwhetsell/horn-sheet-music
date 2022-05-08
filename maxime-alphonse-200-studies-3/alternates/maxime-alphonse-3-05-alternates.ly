\version "2.22.0"

\relative {
  \language "english"

  \key d \major
  \time 12/8

  % \override Score.NonMusicalPaperColumn.line-break-permission = ##f

  \bar "" \mark \default
  d'8->( f-sharp) a-! g->( f-sharp) e-! f-sharp->( d) a'-! g->( f-sharp) e-! | | \bar "||"

  \mark \default
  d8-! f-sharp( a) g-! f-sharp( e) f-sharp-! d( a') g-! f-sharp( e) | \bar "||"

  \mark \default
  d8-> f-sharp a g f-sharp e-> f-sharp d a' g-> f-sharp e\laissezVibrer | \bar "||"

  \mark \default
  d8->( f-sharp a) g-. f-sharp-. e-. f-sharp->( d a') g-. f-sharp-. e-. | \bar "||"

  \mark \default
  d8-> f-sharp( a g->) f-sharp-! e( f-sharp-> d) a'-! g->( f-sharp e) | \bar "||" \break \noPageBreak

  \mark \default
  d8->( f-sharp a g) f-sharp-. e-. f-sharp->( d a' g) f-sharp-. e-. | \bar "||"

  \mark \default
  d8->( f-sharp) a( g->) f-sharp( e) f-sharp->( d) a'( g->) f-sharp( e) | \bar "||"

  \mark \default
  d8->( f-sharp) a->( g) f-sharp->( e) f-sharp->( d) a'->( g) f-sharp->( e) \bar "||"

  \mark \default
  d8-> f-sharp( a g f-sharp e) f-sharp-> d( a' g f-sharp e) | \bar "||"

  \mark \default
  d8-^ f-sharp( a g f-sharp) e-. f-sharp-^ d( a' g f-sharp) e-. | \bar "||" \break \noPageBreak

  \mark \default
  d8-> f-sharp( a g f-sharp e f-sharp) \shape #'((0 . 0) (0 . 0) (0 . 0) (1 . -0.25)) Slur d( a' g f-sharp e) | \bar "||"

  \mark \default
  d8.-> f-sharp16 a8 g8.-> f-sharp16 e8 f-sharp8.-> d16 a'8 g8.-> f-sharp16 e8 \bar "||"

  \mark \default
  d8.-> f-sharp16 a8 g f-sharp e f-sharp8.-> d16 a'8 g f-sharp e | \bar "||"

  \mark \default
  d8-> f-sharp a g-> f-sharp8.-^ e16 f-sharp8 d a' g-> f-sharp8.-^ e16 | \bar "||"

  \mark \default
  d16-. f-sharp16->~8. a16-. g-. f-sharp16->~8. e16-. f-sharp-. d16->~8. a'16-. g-. f-sharp16->~8. e16-. | \bar "||"

  \revert Score.NonMusicalPaperColumn.line-break-permission
}
