(define (c n k)
    (cond ((> k n) 0)
          ((= k 0) 1)
          ((= n k) 1)
          (else (+ (C (- n 1) k) (C (- n 1) (- k 1))))
    )
)
