(define (sum-of-squares a b) (+ (* a a) (* b b)))

(define (f a b c) 
    (cond ((and (>= a c) (>= b c)) (sum-of-squares a b))
          ((and (>= a b) (>= c b)) (sum-of-squares a c))
          ((and (>= b a) (>= c a)) (sum-of-squares b c))
    )
)
