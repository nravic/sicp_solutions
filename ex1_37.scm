;; write a procedure to evaluate an infinite continued fraction
(define (cont-frac n d k)
  (define (frac i)
    (if (< i k)
	(/ (n i) (+ (d i) (frac (+ i 1))))
	(/ (n i) (d i))))
  (frac 1))

;; cont-frac as an interative procedure
(define (cont-frac-iter n d k)
  (define (frac i result)
    (if (= i 0)
	result
	(frac (- i 1) (/ (n i) (+ (d i) result)))))
  (frac (- k 1) (/ (n k) (d k))))
;; tests
(cont-frac (lambda (i) 1.0)
	   (lambda (i) 1.0)
	   100)


	
