;; rewrite sum procedure to iterate
(define (sum term a next b)
  (define (iter a result)
    (if (> a b)
	result
	(iter (next a) (+ (next a) result)))
    (iter a 0)))
