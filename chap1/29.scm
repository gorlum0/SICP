#|(c) gorlum0 [at] gmail.com|#
(load "../basic.scm")

(define (cube x) (* x x x))

(define (sum term a next b)
  (if (> a b)
	  0
	  (+ (term a)
		 (sum term (next a) next b))))

(define (integral f a b dx)
  (define (add-dx x) (+ x dx))
  (* (sum f (+ a (/ dx 2.0)) add-dx b)
	 dx))

(define (inc n) (+ n 1))

; n assumed to be even
(define (simpson f a b n)
  (let ((h (/ (- b a) n 1.0)))
	(define (f2 k)
	  (let* ((x (+ a (* k h)))
			 (y (f x)))
		(cond ((or (= k 0) (= k n))
			   y)
			  ((even? k) (* 2 y))
			  (else (* 4 y)))))
	(* (sum f2 0 inc n)
	   (/ h 3))))

;=====

(display-line (integral cube 0 1 0.01))
(display-line (integral cube 0 1 0.001))

(display-line (simpson cube 0 1 100))
(display-line (simpson cube 0 1 1000))
