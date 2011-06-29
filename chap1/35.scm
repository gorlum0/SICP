#|(c) gorlum0 [at] gmail.com|#
(load "../display-line.scm")
(load "fixed-point.scm")

; phi
(display-line
 (fixed-point (lambda (x) (+ 1 (/ 1 x)))
			  1.0))