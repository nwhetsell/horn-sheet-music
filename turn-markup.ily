\version "2.22.0"

#(begin

(define ornament-with-accidentals (define-scheme-function
    (glyph-name dir top-markup bottom-markup)
    (string? real? (markup? (markup #:null)) (markup? (markup #:null)))

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
          (markup #:line (#:musicglyph glyph-name)))
        (else
          (markup #:line
            (#:override '(baseline-skip . 1.5)
              (#:halign dir
                (#:center-column (
                  #:line (#:musicglyph glyph-name)
                  bottom-markup))))))))
    ((equal? bottom-markup (markup #:null))
      (markup #:line
        (#:override '(baseline-skip . 1.5)
          (#:halign dir
            (#:center-column (
              top-markup
              #:line (#:musicglyph glyph-name)))))))
    (else
      (markup #:line
        (#:override '(baseline-skip . 1.5)
          (#:halign dir
            (#:center-column (
              top-markup
              #:line (#:musicglyph glyph-name)
              bottom-markup)))))))))

(define turn-with-accidentals (define-scheme-function
    (top-markup bottom-markup)
    ((markup? (markup #:null)) (markup? (markup #:null)))

  (ornament-with-accidentals "scripts.turn" 0 top-markup bottom-markup)))

(define turn-markup (turn-with-accidentals (markup #:null) (markup #:null)))

)
