#|(c) gorlum0 [at] gmail.com|#
(load "../display-line.scm")

(define (product term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* (term a) result))))
  (iter a 1))

(define (wallis n)
  (let ((m (* 2.0 n)))
    (* (/ m (- m 1))
       (/ m (+ m 1)))))

;=====

(display-line (product (lambda (x) x)
                       1
                       (lambda (x) (+ x 1))
                       10))

(display-line (* (product wallis
                          1
                          (lambda (x) (+ x 1))
                          100000)
                 2))
