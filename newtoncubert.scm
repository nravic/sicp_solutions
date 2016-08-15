(define (cubert x)
  (define (good-enough? guess)
    (< (abs (- (cube guess) x)) 0.001))
  (define (cube y)
    (* y y y))
  (define (square y)
    (* y y))
  (define (cubert-approx y)
    (/ (+ (/ x (square y)) (* 2 y)) 3))
  (define (improve guess)
    (cubert-approx guess))
  (define (cubert-iter guess)
    (if (good-enough? guess)
	guess
	(cubert-iter (improve guess)
		     )))
  (cubert-iter 1.0))

					; tests
(cubert 8)
(cubert 4)
(cubert 27)

