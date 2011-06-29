#|(c) gorlum0 [at] gmail.com|#
(load "../display-line.scm")
(load "fixed-point.scm")

(define (deriv g)
  (lambda (x)
	(/ (- (g (+ x dx)) (g x))
	   dx)))
(define dx 0.00001)

(define (newton-transform g)
  (lambda (x)	
	(- x (/ (g x) ((deriv g) x)))))
(define (newtons-method g guess)
  (fixed-point (newton-transform g) guess))

(define (cube x) (* x x x))
(define (cubic a b c)
  (lambda (x)
	(+ (cube x)
	   (* a (square x))
	   (* b x)
	   c)))

;====

(display-line
 (newtons-method (cubic 2 3 4) 1))
