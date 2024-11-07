(define (square n) (* n n))

(define (pow base exp) 'YOUR-CODE-HERE
  (if (= exp 0)
    1
    (if (even? exp)
      (pow (square base) (quotient exp 2))
      (* (pow (square base) (quotient exp 2)) base))))

(define (repeatedly-cube n x)
  (if (zero? n)
      x
      (let (
          (y (repeatedly-cube (- n 1) x))
        )
        (* y y y))))

(define (cddr s) (cdr (cdr s)))

(define (cadr s) 'YOUR-CODE-HERE
  (car (cdr s)))

(define (caddr s) 'YOUR-CODE-HERE
  (car (cddr s)))
