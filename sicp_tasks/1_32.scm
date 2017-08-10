(define (accumulate combiner null-value term a next b) ; foldr
  (if (> a b)
      null-value
      (combiner (term a) (accumulate combiner null-value term (next a) next b))
  )
)

(define (iter-accumulate combiner null-value term a next b) ; foldl
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (combiner result (term a)))
    )
  )
  (iter a null-value)
)

(define (inc n) (+ n 1))
(define (id x) x)

(define (sum-1 a b) (accumulate + 0 id a inc b))
(define (sum-2 a b) (iter-accumulate + 0 id a inc b))
