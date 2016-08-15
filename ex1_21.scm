;;Smallest divisor procedure to find smallest divisor of 199, 1999 and 19999.

(define (smallest_divisor n)
  (find_divisor n 2))
(define (find_divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
	((divides? test-divisor n) test-divisor)
	(else (find_divisor n (+ test-divisor 1)))))
(define (divides? a b)
  (= (remainder b a) 0))
(define (square x)
  (* x x))

;;tests
;(smallest_divisor 199)
;(smallest_divisor 1999)
;(smallest_divisor 19999)
		    
