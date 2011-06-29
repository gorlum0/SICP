#|(c) gorlum0 [at] gmail.com|#
(load "../basic.scm")
(load "repeated.scm")

(define (smooth f)
  (lambda (x)
	(/ (+ (f (+ x dx))
		  (f x)
		  (f (- x dx)))
	   3.0)))
(define dx 0.00001)

; f would be x in repeated
(define (repeated-smooth f n)
  ((repeated smooth n) f))

;=====

(display-line
 ((repeated-smooth square 2) 5))