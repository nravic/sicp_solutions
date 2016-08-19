;; continued fraction representation of tangent function

(define (tan-cf x k)
  (define (frac i cont)
    (cond ((= i 0.0) (/ x (- cont (frac (+ i 1.0) (+ cont 2.0)))))
	  ((< i k) (/ (square x) (- cont (frac (+ i 1.0) (+ cont 2.0)))))
	  (else
	   (/ (square x) cont))))
  (define (square x)
    (* x x))
  (frac 0.0 1.0))

;; tests
(tan-cf 5.0 15.0)
	
