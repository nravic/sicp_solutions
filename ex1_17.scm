;;Logarithmic multiplication procedure

(define (halve n)
  (/ n 2))

(define (double n)
  (+ n n))

(define (even? n)
  (= (remainder n 2) 0))

(define (multiply a b)
  (cond ((= b 0) 0)
	((even? b) (double (multiply a (halve b))))
	(else (+ a (multiply a (- b 1))))))

;;tests
(multiply 12 12)
(mutliply 3 6)
(multiply 1 1)
