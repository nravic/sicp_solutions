(define
  (square x)
  (* x x))

(define
  (sum_of_largertwo x y z)
  (cond ((and (> z y) (> y x)) (+ (square z) (square y)))
	((and (> z x) (> x y)) (+ (square z) (square x)))
	((and (> y z) (> z x)) (+ (square y) (square z)))
	((and (> y x) (> x z)) (+ (square y) (square x)))
	((and (> x y) (> y z)) (+ (square x) (square y)))
	((and (> x z) (> z y)) (+ (square x) (square z)))))

					;tests
(sum_of_largertwo 1 2 3)
