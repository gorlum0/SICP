#|(c) gorlum0 [at] gmail.com|#
(load "../display-line.scm")
(load "cont-frac.scm")

;====

; 1/phi
(display-line
 (cont-frac (lambda (i) 1.0)
			(lambda (i) 1.0)
			11)) ; 11 is ok for 4 places