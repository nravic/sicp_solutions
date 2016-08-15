;; Carmichael numbers fool the fermat test
(define (expmod base exp m)
  (cond ((= exp 0) 1)
	((even? exp)
	 (remainder (square (expmod base (/ exp 2) m))
		    m))
	(else
	 (remaider (* base (expmod base (- exp 1) m))
		   m))))
(define (fermat-test n a)
  (= (expmod a n n) a))

(define (prime-test n)
   (define (iter a)
     (cond ((= a 1) true)
           ((not (prime-test n a)) false)
           (else (iter (- a 1)))))
   (iter (- n 1)))
