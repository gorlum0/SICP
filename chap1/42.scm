#|(c) gorlum0 [at] gmail.com|#
(load "../basic.scm")

(define (compose f g)
  (lambda (x)
	(f (g x))))

(define (inc x) (+ x 1))

;=====

(display-line
 ((compose square inc) 6))