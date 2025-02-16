Chez Scheme Version 10.1.0
Copyright 1984-2024 Cisco Systems, Inc.

> '(a (b c) (()) (d))
(a (b c) (()) (d))
> (length '(a (b c) (()) (d)))
4
> (cons 3 4)
(3 . 4)
> (length (cons 3 4))

Exception in length: (3 . 4) is not a proper list
Type (debug) to enter the debugger.
> (length (cons 3 (cons 4 '())))
2
> (cons 3 (cons 4 '()))
(3 4)
> '(a (b c) (()) (d))
(a (b c) (()) (d))
> '(a (b c) (()) (d . ()))
(a (b c) (()) (d))
> '(a (b c) (() . ()) (d . ()))
(a (b c) (()) (d))
> '(a (b . (c)) (() . ()) (d . ()))
(a (b c) (()) (d))
> '(a (b . (c . ())) (() . ()) (d . ()))
(a (b c) (()) (d))
> '(a . ((b . (c . ())) (() . ()) (d . ())))
(a (b c) (()) (d))
> '(a . ((b . (c . ())) . ((() . ()) (d . ()))))
(a (b c) (()) (d))
> '(a . ((b . (c . ())) . ((() . ()) . ((d . ())))))
(a (b c) (()) (d))
> '(a . ((b . (c . ())) . ((() . ()) . ((d . ()) . ()))))
(a (b c) (()) (d))
> '(a . ((b . (c . ())) . ((() . ()) . ((d . ()) . ()))))
(a (b c) (()) (d))
> (cons 'a '((b . (c . ())) . ((() . ()) . ((d . ()) . ()))))
(a (b c) (()) (d))
> (cons 'a
        (cons '(b . (c . ())) '((() . ()) . ((d . ()) . ()))))
(a (b c) (()) (d))
> (cons 'a
        (cons (cons 'b '(c . ())) '((() . ()) . ((d . ()) . ()))))
(a (b c) (()) (d))
> (cons 'a
        (cons (cons 'b (cons 'c '())) '((() . ()) . ((d . ()) . ()))))
(a (b c) (()) (d))
> (cons 'a
        (cons
          (cons 'b (cons 'c '()))
          (cons '(() . ()) '((d . ()) . ()))))
(a (b c) (()) (d))
> (cons 'a
        (cons
          (cons 'b (cons 'c '()))
          (cons (cons '() '()) '((d . ()) . ()))))
(a (b c) (()) (d))
> (cons 'a
        (cons
          (cons 'b (cons 'c '()))
          (cons
            (cons '() '())
            (cons '(d . ()) '()))))
(a (b c) (()) (d))
> (cons 'a
        (cons
          (cons 'b (cons 'c '()))
          (cons
            (cons '() '())
            (cons (cons 'd '()) '()))))
(a (b c) (()) (d))
> '(a (b c) (()) (d))
(a (b c) (()) (d))
> (let ((e1 'a)
        (e2 '(b c))
        (e3 '(()))
        (e4 '(d)))
    (list e1 e2 e3 e4))
(a (b c) (()) (d))
> (let ((e1 'a)
        (e2 '(b c))
        (e3 '(()))
        (e4 '(d)))
    (cons e1 (cons e2 (cons e3 (cons e4 '())))))
(a (b c) (()) (d))
> (let ((e1 'a)
        (e2 (cons 'b (cons 'c '())))
        (e3 '(()))
        (e4 '(d)))
    (cons e1 (cons e2 (cons e3 (cons e4 '())))))
(a (b c) (()) (d))
> (let ((e1 'a)
        (e2 (cons 'b (cons 'c '())))
        (e3 (cons '() '()))
        (e4 '(d)))
    (cons e1 (cons e2 (cons e3 (cons e4 '())))))
(a (b c) (()) (d))
> (let ((e1 'a)
        (e2 (cons 'b (cons 'c '())))
        (e3 (cons '() '()))
        (e4 (cons 'd '())))
    (cons e1 (cons e2 (cons e3 (cons e4 '())))))
(a (b c) (()) (d))
> (let (
        (e2 (cons 'b (cons 'c '())))
        (e3 (cons '() '()))
        (e4 (cons 'd '())))
    (cons 'a (cons e2 (cons e3 (cons e4 '())))))
(a (b c) (()) (d))
> (let ((e3 (cons '() '()))
        (e4 (cons 'd '())))
    (cons 'a (cons (cons 'b (cons 'c '())) (cons e3 (cons e4 '())))))
(a (b c) (()) (d))
> (let ((e4 (cons 'd '())))
    (cons 'a (cons (cons 'b (cons 'c '())) (cons (cons '() '()) (cons e4 '())))))
(a (b c) (()) (d))
> (cons 'a (cons (cons 'b (cons 'c '())) (cons (cons '() '()) (cons (cons 'd '()) '()))))
(a (b c) (()) (d))
> (cdr (car (car (cons 'a (cons (cons 'b (cons 'c '())) (cons (cons '() '()) (cons (cons 'd '()) '())))))))

Exception in car: a is not a pair
Type (debug) to enter the debugger.
> (car (car (cdr (cons 'a (cons (cons 'b (cons 'c '())) (cons (cons '() '()) (cons (cons 'd '()) '())))))))
b
> (caadr (cons 'a (cons (cons 'b (cons 'c '())) (cons (cons '() '()) (cons (cons 'd '()) '())))))
b
> (car (cdr (car (cdr (cons 'a (cons (cons 'b (cons 'c '())) (cons (cons '() '()) (cons (cons 'd '()) '()))))))))
c
> (cadadr (cons 'a (cons (cons 'b (cons 'c '())) (cons (cons '() '()) (cons (cons 'd '()) '())))))
c
> (define t (cons 'a (cons (cons 'b (cons 'c '())) (cons (cons '() '()) (cons (cons 'd '()) '())))))
> t
(a (b c) (()) (d))
> (cdr t)
((b c) (()) (d))
> (car (cdr t))
(b c)
> (cdr (car (cdr t)))
(c)
> (car (cdr (car (cdr t))))
c
> 