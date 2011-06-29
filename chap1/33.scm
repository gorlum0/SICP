#|(c) gorlum0 [at] gmail.com|#
(load "../basic.scm")
(load "smallest-divisor.scm")

(define (filtered-accumulate combiner null-value term a next b filter)
  (define (iter a result)
    (cond ((> a b) result)
          ((filter a)
           (iter (next a) (combiner result (term a))))
          (else
           (iter (next a) result))))
  (iter a null-value))

(define (id x) x)
(define (inc x) (+ x 1))

(define (sum term a next b)
  (filtered-accumulate + 0 term a next b id))

(define (sum-prime-squares a b)
  (filtered-accumulate + 0 square a inc b prime?))

(define (prod-rel-primes n)
  (define (pred k)
    (= (gcd k n) 1))
  (filtered-accumulate * 1 id 1 inc n pred))

;=====

(display-line (sum id 1 inc 10))
(display-line (sum-prime-squares 1 100))
(display-line (prod-rel-primes 30))
