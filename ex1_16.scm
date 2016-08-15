(define (fast-expt-iter b n a)
  (define (even? n)
    (= (remainder n 2) 0))
  (cond ((= n 0) a)
	((even? n) (fast-expt-iter (square b) (/ n 2) a ))
	(else (fast-expt-iter b (- n 1) (* b a)))))


