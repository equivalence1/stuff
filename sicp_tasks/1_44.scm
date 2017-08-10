(define (inc n) (+ n 1))
(define (square x) (* x x))

(define (repeated f n)
    (define (repeat x n)
      (if (= n 0)
        x
        (repeat (f x) (- n 1))
      )
     )
     (lambda (x) (repeat x n))
)

(define dx 0.00001)

(define (smooth f)
    (define (average a b c) (/ (+ a b c) 3))
    (lambda (x) (average (f (- x dx)) x (f (+ x dx))))
)

(define (smooth-n f n)
  (repeated (smooth f) n)
)
