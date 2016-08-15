;; Generic summation function
(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
	 (sum term (next a) next b))))
;; Simpson's rule
(define (simpson f a b n)
  (define h
    (/ (- b a) n))
  (define (term k)
    (* (cond ((odd? k) 4)
	     ((or (= k 0) (= k n)) 1)
	     ((even? k) 2))
       (y k)))
  (define (y k)
    (f (+ a (* k h))))
  (define (inc x)
    (+ x 1))
  (/ (* h (sum term 0 inc n) 3))

;; tests
(define (cube x)
  (* x x x))
(simpson cube 0 1 30)
