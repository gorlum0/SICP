
(load "../display-line.scm")
(load "fermat-test.scm")

(define (test-congruent n)
  (define (iter a)
    (if (>= a n)
        true
        (and (= (expmod a n n) a) (iter (+ a 1)))))
  (display-line (iter 1)))

(map test-congruent
     (list 561 1105 1729 2465 2821 6601))