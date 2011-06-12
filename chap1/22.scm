
(load "display-line.scm")
(load "smallest-divisor.scm")

(define (timed-prime-test n)
  (start-prime-test n (runtime)))
(define (start-prime-test n start-time)
  (if (prime? n)
      (begin
        (display n)
        (report-prime (- (runtime) start-time)))
      0))
(define (report-prime elapsed-time)
  (display " *** ")
  (display-line elapsed-time)
  1)

; 3 smallest starting from odd n
(define (search-for-primes n k)
  (if (> k 0)
      (search-for-primes (+ n 2)
                         (- k (timed-prime-test n)))))

(search-for-primes 1001 3) (newline)
(search-for-primes 10001 3) (newline)
(search-for-primes 100001 3) (newline)
(search-for-primes 1000001 3) (newline)
(search-for-primes 10000001 3) (newline)
(search-for-primes 100000001 3) (newline)
(search-for-primes 1000000001 3) (newline)
(search-for-primes 10000000001 3) (newline)
