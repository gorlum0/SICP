#|(c) gorlum0 [at] gmail.com|#
(load "../basic.scm")
(load "fixed-point.scm")
(load "repeated.scm")

(define (average-damp f)
  (lambda (x) (average x (f x))))

(define (sqrt x)
  (fixed-point (average-damp (lambda (y) (/ x y)))
               1.0))
(define (cube-root x)
  (fixed-point (average-damp (lambda (y) (/ x (square y))))
               1.0))

(define (repeated-damp f n)
  ((repeated average-damp n) f))
(define (nroot x n)
  (fixed-point (repeated-damp (lambda (y) (/ x (pow y (- n 1))))
							  (floor (log2 n)))
			   1.0))

;=====

(display-line
 (sqrt 25))
(display-line
 (cube-root 100))
(display-line
 (nroot 100 100))
(display-line
 (nroot 32 5))
