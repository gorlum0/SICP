
(define (fast-expt b n)
  (cond ((= n 0) 1)
		((even? n) (square (fast-expt b (/ n 2))))
		(else (* b (fast-expt b (- n 1))))))

(define (even? n)
  (= (remainder n 2) 0))

;=====

(define (fast-expt b n)
  (define (iter b n a)
	(cond ((= n 0) a)
		  ((even? n) (iter (* b b) (/ n 2) a))
		  (else (iter b (- n 1) (* a b)))))
  (iter b n 1))