#|(c) gorlum0 [at] gmail.com|#
(load "../display-line.scm")
(load "cont-frac.scm")

(define (e-euler k)
  (+ (cont-frac (lambda (i) 1)
                (lambda (i)
                  (if (= (remainder i 3) 2)
                      (/ (+ i 1) 1.5)
                      1))
                k)
     2.0))

;====

(display-line (e-euler 20))
