#|(c) gorlum0 [at] gmail.com|#
(load "../display-line.scm")

(define (tan-cf x k)
  (define (rec i)
    (cond ((= 1 i)
           (/ x
              (- 1 (rec (+ i 1)))))
          ((> i k) 0)
          (else
           (/ (* x x)
              (- (* 2 i) 1 (rec (+ i 1)))))))
  (rec 1))

;====

(display-line (tan-cf 2.0 20))
