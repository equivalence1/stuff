(define (product a b next f)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* result (f a)))
    )
  )
  (iter a 1)
)

(define (inc n) (+ n 1))
(define (id x) x)

(define (factorial n) (product 1 n inc id))
