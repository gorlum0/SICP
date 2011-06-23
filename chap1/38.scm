#|(c) gorlum0 [at] gmail.com|#
(load "../display-line.scm")
(load "cont-frac.scm")

(define (euler k)
  (define (d i)
    (if (= (remainder i 3) 2)
        (/ (+ i 1) 1.5)
        1))
  (cont-frac (lambda (i) 1) d k))

;====

(display-line (+ 2.0 (euler 20)))
