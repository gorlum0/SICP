#|(c) gorlum0 [at] gmail.com|#
(load "../basic.scm")

(define (double f)
  (lambda (x)
	(f (f x))))

(define (inc x)
  (+ x 1))

;=====

; (2*2) * (2*2) = 16
(display-line
 (((double (double double)) inc) 5))
