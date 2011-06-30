
(define (display-line obj)
  (display obj)
  (newline))

;=====

(define (inc x) (+ x 1))
(define (cube x) (* x x x))

(define (average x y)
  (/ (+ x y)
	 2.0))

; n in Z
(define (pow a n)
  (define (iter a n b)
	(cond ((= n 0) b)
		  ((even? n) (iter (square a) (/ n 2) b))
		  (else (iter a (- n 1) (* b a)))))
  (iter a n 1))
;; (define (pow x n)
;;   (if (= n 0)
;; 	   1
;; 	   (* x (pow x (- n 1)))))

(define (log2 x)
  (/ (log x) (log 2)))

;=====

(define (even? x)
  (= (remainder x 2) 0))