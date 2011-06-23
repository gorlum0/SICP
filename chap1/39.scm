#|(c) gorlum0 [at] gmail.com|#
(load "../display-line.scm")

; closure?
(define (tan-cf x k)
  (cont-frac (lambda (i)
               (if (= i 1)
                   x
                   (- (* x x))))
             (lambda (i)
               (- (* 2 i) 1))
             k))

;====

(display-line (tan-cf 2.0 20))
