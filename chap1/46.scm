#|(c) gorlum0 [at] gmail.com|#
(load "../basic.scm")

(define (iterative-improve close-enough? improve)
  (define (try guess)
    (let ((next (improve guess)))
      (if (close-enough? guess next)		  
          next
          (try next))))
  try)

(define tolerance 0.00001)
(define (close-enough? v1 v2)
  (< (abs (- v1 v2)) tolerance))

(define (fixed-point f first-guess)
  ((iterative-improve close-enough? f) first-guess))

(define (average-damp f)
  (lambda (x) (average x (f x))))
(define (sqrt x)
  ((iterative-improve close-enough?					  
                      (average-damp (lambda (y) (/ x y))))
   1.0))

;=====

; x**x = 1000
(display-line
 (fixed-point (lambda (x)
                (average x (/ (log 1000)
                              (log x))))
              2.0))
(display-line
 (sqrt 225))
