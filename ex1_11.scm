; recursive process
(define (f n)
  (cond ((< n 3) n)
	(else (+ (f (- n 1))
		 (* 2 (f (- n 2)))
		 (* 3 (f (- n 3)))))))
; iterative process
(define (f-iter n)
  (if (< n 3)
      n
      (+ (a n) (b n) (c n))))
(define (a n)
  (iterate (- n 1)))
(define (b n)
  (iterate (* 2 (- n 2))))
(define (c n)
  (iterate (* 3 (- n 3))))
(define (iterate n)
  (cond ((< n 3) n)
	(else (+ (- n 1)
		 (* 2 (- n 2))
		 (* 3 (- n 3))))))


					; tests
(f 3)
(f 1)
(f 4)
(f 5)
(f-iter 3)
(f-iter 1)
(f-iter 4)
(f-iter 5)
