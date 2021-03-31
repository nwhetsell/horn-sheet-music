\version "2.22.0"

#(begin

(define turn-with-accidentals (define-scheme-function
    (top-markup bottom-markup)
    ((markup? (markup #:null)) (markup? (markup #:null)))

  (cond
    ((equal? top-markup (markup #:flat))
      (set! top-markup (markup #:fontsize -4 #:flat)))
    ((equal? top-markup (markup #:natural))
      (set! top-markup (markup #:fontsize -4 #:natural)))
    ((equal? top-markup (markup #:sharp))
      (set! top-markup (markup #:fontsize -4 #:sharp))))

  (cond
    ((equal? bottom-markup (markup #:flat))
      (set! bottom-markup (markup #:fontsize -4 #:flat)))
    ((equal? bottom-markup (markup #:natural))
      (set! bottom-markup (markup #:fontsize -4 #:natural)))
    ((equal? bottom-markup (markup #:sharp))
      (set! bottom-markup (markup #:fontsize -4 #:sharp))))

  (cond
    ((equal? top-markup (markup #:null))
      (cond
        ((equal? bottom-markup (markup #:null))
          (markup #:line (#:musicglyph "scripts.turn")))
        (else
          (markup #:line
            (#:override '(baseline-skip . 1.5)
              (#:halign 0
                (#:center-column (
                  #:line (#:musicglyph "scripts.turn")
                  bottom-markup))))))))
    ((equal? bottom-markup (markup #:null))
      (markup #:line
        (#:override '(baseline-skip . 1.5)
          (#:halign 0
            (#:center-column (
              top-markup
              #:line (#:musicglyph "scripts.turn")))))))
    (else
      (markup #:line
        (#:override '(baseline-skip . 1.5)
          (#:halign 0
            (#:center-column (
              top-markup
              #:line (#:musicglyph "scripts.turn")
              bottom-markup)))))))))

(define turn-markup (turn-with-accidentals (markup #:null) (markup #:null)))

)
