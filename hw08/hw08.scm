(define (ascending? s) 'YOUR-CODE-HERE
    (if (null? s)
        #t
        (if (null? (cdr s))
            #t
            (if (> (car s) (car (cdr s)))
                #f
                (ascending? (cdr s))))))

(define (my-filter pred s) 'YOUR-CODE-HERE
    (if (null? s)
        nil
        (if (pred (car s))
            (cons (car s) (my-filter pred (cdr s)))
            (my-filter pred (cdr s)))))

(define (interleave lst1 lst2) 'YOUR-CODE-HERE
    (if (null? lst1)
        lst2
        (if (null? lst2)
            lst1
            (append (list (car lst1) (car lst2)) (interleave (cdr lst1) (cdr lst2))))))

(define (no-repeats s) 'YOUR-CODE-HERE
    (if (null? s)
        nil
        (cons (car s) (no-repeats (filter (lambda (a) (not (= (car s) a))) (cdr s))))
    )
)
