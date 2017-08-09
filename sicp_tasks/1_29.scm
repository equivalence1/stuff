(define (sum a b term next)
  (if (> a b)
      0
      (+ (term a)
         (sum (next a) b term next)
      )
  )
)

(define (inc n) (+ n 1))

(define (id x) x)

(define (cube x) (* x x x))

(define (integral f a b dx)
  (define (add-dx x) (+ x dx))
  (* (sum (+ a (/ dx 2)) b f add-dx) dx)
)

; Simpson's

(define (s-integral f a b n)
  (define h (/ (- b a) n))
  (define (next_1 a) (+ a h))
  (define (next_2 a) (+ a (* 2 h)))
  (define s (+ (sum a b f next_1) (* 3 (sum (next_1 a) b f next_2)) (sum (next_2 a) b f next_2)))
  (* (/ h 3) (- s (f b)))
)
