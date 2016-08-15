;; filtered-accumulate function to combine only terms derived from values in a range that satisfy a specific condition.

(define (filtered-accumulate combiner null-value filter term a next b)
  (if (> a b)
      null-value
      (if (filter a)
	  (combiner (term a)
		    (filtered-accumulate combiner null-value filter term (next a) next b))
	  (filtered-accumulate combiner null-value filter term a next b))))

;; sum of squares of prime numbers in interval a to b
(define (sum-of-square-primes n)
  (define (square x) (* x x))
  (define (inc x) (+ 1 x))
  (accumulate + 0 prime? square 0 inc n))

;; product of all positive integers less than n relatively prime to n (all positive integers i < n such that GCD(i, n) =1).
(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))
(define (product-of-coprimes n)
  (define (identity x) x)
  (define (coprime? i)
    (= 1 (gcd i n)))
  (filtered-accumulate * 1 coprime? identity 1 inc (- n 1)))

