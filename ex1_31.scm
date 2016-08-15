;; recursive product procedure
(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
	 (product term (next a) next b))))

;; iterative product procedure
(define (product term a next b)
  (define (iter a result)
    (if (> a b)
	result
	(iter (next a) (* (term a) result)))
    (iter a 1)))

;; factorial procedure in terms of product
(define (factorial b)
  (define (identity x) x)
  (define (inc x) (+ x 1))
  (product identity 1 inc b))

;; pi approximations (Wallis product)
(define (approx-pi-wallis n)
  (define (iter x)
    (+ x 1))
  (define (term-1 x)
    (cond ((> x n) 1)
	  (else
	   (/ (* 2.0 x) (- (* 2.0 x) 1.0)))))
  (define (term-2 x)
    (cond ((> x n) 1.0)
	  (else
	   (/ (* 2.0 x) (+ (* 2.0 x) 1.0)))))
  (* (product term-1 1.0 iter n) (product term-2 1.0 iter n))) 
(define (approx-pi n)
  (* 2 (approx-pi-wallis n)))



;;tests
(approx-pi 500)
