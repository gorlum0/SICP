#|(c) gorlum0 [at] gmail.com|#
(load "../display-line.scm")
(load "cont-frac.scm")

(define (divides? a b)
  (= (remainder b a) 0))

;====

(define (d i)
  (let ((j (+ i 1)))
    (if (divides? 3 j)
        (* 2 (/ j 3))
        1)))

; e-2
(display-line
 (cont-frac (lambda (i) 1.0)
            d
            20))
