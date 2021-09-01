\version "2.22.0"

#(begin

(define sf-accent-markup #{
  \markup {
    \concat {
      \dynamic "sf"
      \hspace #0.25
      \raise #0.5 \musicglyph #"scripts.sforzato"
    }
  }
#})

(append! default-script-alist
  (list
    `("sf-accent"
      . (
          (stencil . ,ly:text-interface::print)
          (text . ,sf-accent-markup)
          (avoid-slur . around)
          (padding . 0.3)
          (direction . ,DOWN)))))

(define sf-accent (make-articulation "sf-accent"))

)
