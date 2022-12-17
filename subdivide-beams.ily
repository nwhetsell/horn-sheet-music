\version "2.24.0"

#(define subdivide-beams (define-music-function (baseMoment beatStructure music) (rational? list? ly:music?)
#{
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment baseMoment)
  \set beatStructure = #beatStructure
  #music
  \unset beatStructure
  \unset baseMoment
  \unset subdivideBeams
#}))
