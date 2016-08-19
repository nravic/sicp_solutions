;; approximate euler's number (e-2) using cont-frac
(define (cont-frac n d k)
  (define (frac i)
    (if (< i k)
	(/ (n i) (+ (d i) (frac (+ i 1))))
	(/ (n i) (d i))))
  (frac i))

 (define (d i)
   (if (not (= (remainder (+ i 1) 3) 0))
       1
       (/ (* 2 (+ i 1)) 3)))

(cont-frac (lambda (i) 1.0)
 	   (d i)
 	   3.0)
