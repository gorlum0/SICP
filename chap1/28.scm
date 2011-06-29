
(load "../basic.scm")
(load "miller-rabin.scm")

; carmichael
(display-line (prime? 561))
(display-line (prime? 6601))
; just not prime
(display-line (prime? 560))
(display-line (prime? 987901))

; prime
(display-line (prime? 5003))
(display-line (prime? 10007))
