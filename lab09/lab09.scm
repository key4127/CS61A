(define (over-or-under num1 num2) 'YOUR-CODE-HERE
;    (if (< num1 num2)
;        -1
;        (if (= num1 num2)
;            0
;            1)
;        )
    (cond ((< num1 num2) -1)
          ((= num1 num2) 0)
          (else 1))
    )

(define (make-adder num) 'YOUR-CODE-HERE
;    (define (adder inc)
;        (+ num inc))
;    adder)
    (lambda (inc) (+ num inc)))

(define (composed f g) 'YOUR-CODE-HERE
    (define (composer x)
        (f (g x)))
    composer)

(define (repeat f n) 'YOUR-CODE-HERE
    (define (loop x)
        (if (= n 1)
            (f x)
            ((composed f (repeat f (- n 1))) x)))
    loop)

(define (max a b)
  (if (> a b)
      a
      b))

(define (min a b)
  (if (> a b)
      b
      a))

(define (gcd a b) 'YOUR-CODE-HERE
    (if (< a b)
        (gcd b a)
        (if (zero? (modulo a b))
            b
            (gcd b (modulo a b)))))
