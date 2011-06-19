#|(c) gorlum0 [at] gmail.com|#
(load "../display-line.scm")

; foldl
(define (accumulate combiner null-value term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a)
              (combiner result (term a)))))
  (iter a null-value))

(define (sum term a next b)
  (accumulate + 0 term a next b))
(define (product term a next b)
  (accumulate * 1 term a next b))

(define (id x) x)
(define (inc x) (+ x 1))

;=====

(display-line (sum id 1 inc 10))
(display-line (product id 1 inc 10))
  