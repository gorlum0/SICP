#|(c) gorlum0 [at] gmail.com|#
(load "../basic.scm")
(load "cont-frac.scm")

; closure?
(define (tan-cf x k)
  (define (n i)
    (if (= i 1)
        x
        (- (* x x))))
  (define (d i)
    (- (* 2 i) 1))
  (cont-frac n d k))

;====

(display-line (tan-cf 2.0 20))
