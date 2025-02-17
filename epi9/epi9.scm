Chez Scheme Version 10.1.0
Copyright 1984-2024 Cisco Systems, Inc.

> (+ 3 4)
7
> '(+ 3 4)
(+ 3 4)
> (length '(+ 3 4))
3
> (list '+ 3 4)
(+ 3 4)
> (list '+ '3 '4)
(+ 3 4)
> (list '+ 3 4)
(+ 3 4)
> (cons '+ (cons 3 (cons 4 '())))
(+ 3 4)
> (car (cons '+ (cons 3 (cons 4 '()))))
+
> (symbol? (car (cons '+ (cons 3 (cons 4 '())))))
#t
> (procedure? (car (cons '+ (cons 3 (cons 4 '())))))
#f
> +
#<procedure +>
> '+
+
> (quote +)
+
> (symbol? (quote +))
#t
> eval
#<procedure eval>
> (eval '+)
#<procedure +>
> ;; REPL = read eval print loop
(eval '(+ 3 4))
7
> '(+ 3 4)
(+ 3 4)
> (+ 3 4)
7
> '(+ 3 4)
(+ 3 4)
> (define my-list '(+ 3 4))
> my-list
(+ 3 4)
> (car my-list)
+
> (symbol? (car my-list))
#t
> my-list
(+ 3 4)
> (eval my-list)
7
> (+ 3 4)
7
> '(+ 3 4)
(+ 3 4)
> (/ 5 0)

Exception in /: undefined for 0
Type (debug) to enter the debugger.
> '(/ 5 0)
(/ 5 0)
> '(/ 5 0)
(/ 5 0)
> (define l '(/ 5 0))
> (define l (cons '/ (cons 5 (cons 0 '()))))
> l
(/ 5 0)
> (length l)
3
> (list? l)
#t
> (pair? l)
#t
> (car l)
/
> (cdr l)
(5 0)
> (cons '* (cdr l))
(* 5 0)
> (eval (cons '* (cdr l)))
0
> (cons 'cons (cdr l))
(cons 5 0)
> (eval (cons 'cons (cdr l)))
(5 . 0)
> l
(/ 5 0)
> (/ 5 0)

Exception in /: undefined for 0
Type (debug) to enter the debugger.
> '(/ 5 0)
(/ 5 0)
> `(/ 5 0)
(/ 5 0)
> (quote cat)
cat
> 'cat
cat
> `(/ 5 0)
(/ 5 0)
> '(/ 5 0)
(/ 5 0)
> (quote (/ 5 0))
(/ 5 0)
> (quasiquote (/ 5 0))
(/ 5 0)
> `(/ 5 0)
(/ 5 0)
> `cat
cat
> `5
5
> '(Mary had a little lamb)
(Mary had a little lamb)
> (let ((size 'little))
    `(Mary had a ,size lamb))
(Mary had a little lamb)
> (let ((size 'little))
    `(Mary had a (unquote size) lamb))
(Mary had a little lamb)
> (let ((size 'little))
    (quasiquote (Mary had a (unquote size) lamb)))
(Mary had a little lamb)
> (let ((size 'little))
    `(Mary had a ,size lamb))
(Mary had a little lamb)
> (let ((size 'little))
    (list 'Mary 'had 'a size 'lamb))
(Mary had a little lamb)
> (let ((number 3))
    `(Mary had ,number lambs))
(Mary had 3 lambs)
> (let ((number 3))
    `(Mary had ,(+ number 4) lambs))
(Mary had 7 lambs)
> (let ((number 3))
    (list 'Mary 'had (+ number 4) 'lambs))
(Mary had 7 lambs)
> (let ((who 'Will)
        (number 3))
    `(,who had ,(+ number 4) lambs))
(Will had 7 lambs)
> (lambda (x) (+ x 3))
#<procedure>
> ((lambda (x) (+ x 3)) 5)
8
> (let ((body '(+ x 3)))
    `(lambda (x) ,body))
(lambda (x) (+ x 3))
> (let ((formal 'x)
        (body '(+ x 3)))
    `(lambda (,formal) ,body))
(lambda (x) (+ x 3))
> (let ((x 'y)
        (e '(+ y 3)))
    `(lambda (,x) ,e))
(lambda (y) (+ y 3))
> (let ((x 'y)
        (e '(+ y 3)))
    `(lambda (,x) ,e))
(lambda (y) (+ y 3))
> `'`'cat
'`'cat
> `,(+ 3 4)
7
> (let ((number 3))
    `(Mary had ,number lambs))
(Mary had 3 lambs)
> (let ((size 'little))
    `(Mary had a ,size lamb))
(Mary had a little lamb)
> (let ((animals '(cows fish cats)))
    `(Mary had ,animals))
(Mary had (cows fish cats))
> (let ((animals '(cows fish cats)))
    `(Mary had ,animals and her lamb))
(Mary had (cows fish cats) and her lamb)
> (let ((animals '(cows fish cats)))
    `(Mary had ,@animals and her lamb))
(Mary had cows fish cats and her lamb)
> (let ((animals '(cows fish cats)))
    `(Mary had (unquote-splicing animals) and her lamb))
(Mary had cows fish cats and her lamb)
> (let ((animals '(cows fish cats)))
    `(Mary had ,@animals and her lamb))
(Mary had cows fish cats and her lamb)
> (let ((animals '(cows fish cats)))
    `(Mary had ,@animals))
(Mary had cows fish cats)
> (let ((animals '(cows fish cats)))
    `(Mary had ,animals))
(Mary had (cows fish cats))
> (let ((animals '(cows fish cats)))
    `(Mary had . ,animals))
(Mary had cows fish cats)
> (let ((animals '(cows fish cats)))
    `(Mary . (had . ,animals)))
(Mary had cows fish cats)
> (let ((animals '(cows fish cats)))
    (cons 'Mary (cons 'had animals)))
(Mary had cows fish cats)
> 