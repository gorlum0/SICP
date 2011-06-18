#|(c) gorlum0 [at] gmail.com|#
(load "../display-line.scm")

(define (sum term a next b)
  (define (iter a result)
	(if (> a b)
		result
		(iter (next a) (+ (term a) result))))
  (iter a 0))

;=====

(display-line (sum (lambda (x) x)
				   0
				   (lambda (x) (+ x 1))
				   5))