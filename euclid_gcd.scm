;;Euclid's GCD Algorithm

(define (euclid_gcd a b)
  (if (= b 0)
      a
      (euclid_gcd (remainder a b))))
