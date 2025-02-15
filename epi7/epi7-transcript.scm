Chez Scheme Version 10.1.0
Copyright 1984-2024 Cisco Systems, Inc.

> 5
5
> 392847897589324759873429857
392847897589324759873429857
> 5
5
> (+ 3 4)
7
> (/ 4 0)

Exception in /: undefined for 0
Type (debug) to enter the debugger.
> (/ 3 4)
3/4
> (/ 3 4.0)
0.75
> (/ 3 0)

Exception in /: undefined for 0
Type (debug) to enter the debugger.
> (/ 0 0)

Exception in /: undefined for 0
Type (debug) to enter the debugger.
> (/ 786487634876 438763436)
196621908719/109690859
> (/ 2 4)
1/2
> (exact->inexact (/ 2 4))
0.5
> (* (/ 2 4) 1.0)
0.5
> (inexact->exact 0.5)
1/2
> (inexact->exact (ceiling 0.5))
1
> (inexact->exact (round 0.5))
0
> (inexact->exact (round 0.7))
1
> (inexact->exact (floor 0.7))
0
> (inexact->exact (floor 0.51))
0
> (inexact->exact (round 0.51))
1
> (inexact->exact (round 0.50))
0
> (inexact->exact (round 0.5001))
1
> #f
#f
> #t
#t
> 5
5
> (void)
> (list (void))
(#<void>)
> +
#<procedure +>
> (list 5)
(5)
> (list)
()
> (list 4 5 6)
(4 5 6)
> (list 4 #f 6 #t)
(4 #f 6 #t)
> (list 4 #f (list 6 7) #t)
(4 #f (6 7) #t)
> (quote cat)
cat
> "cat"
"cat"
> #/c

Exception in read: invalid sharp-sign prefix #/
Type (debug) to enter the debugger.
> 
Exception: variable c is not bound
Type (debug) to enter the debugger.
> #\c
#\c
> #\a
#\a
> #\t
#\t
> (quote rook)
rook
> "Sugie"
"Sugie"
> (quote cat)
cat
> 'cat
cat
> (number? 5)
#t
> number?
#<procedure number?>
> (number? 5)
#t
> (number? 'cat)
#f
> (number? (quote cat))
#f
> 3 + 4
3
> #<procedure +>
> 4
> (+ 3 4)
7
> (symbol? (quote cat))
#t
> (symbol? (+ 3 4))
#f
> (number? (+ 3 4))
#t
> (exact? (+ 3 4))
#t
> (integer? (+ 3 4))
#t
> (positive? (+ 3 4))
#t
> (boolean? (+ 3 4))
#f
> (boolean? #f)
#t
> (symbol? #f)
#f
> (quote dog)
dog
> (quote 5)
5
> '5
5
> '#t
#t
> '#f
#f
> (quote (quote 5))
'5
> ;; (quote <datum>) => <datum>


5
5
> (quote ())
()
> (null? (quote ()))
#t
> (null? '())
#t
> (null? 5)
#f
> (list 6 7 8)
(6 7 8)
> (list)
()
> (null? (list))
#t
> (cons 3 4)
(3 . 4)
> (list? (list))
#t
> (list? (list 8 3 2))
#t
> (list? '())
#t
> (pair? '())
#f
> (pair? (cons 3 4))
#t
> (cons 3 4)
(3 . 4)
> (cons 3 '())
(3)
> (list? (cons 3 '()))
#t
> (list? (cons 3 4))
#f
> (list? (cons 3 '()))
#t
> (pair? (cons 3 '()))
#t
> (car (cons 3 4))
3
> (cdr (cons 3 4))
4
> (cons 3 4)
(3 . 4)
> (cons 3 '())
(3)
> (car (cons 3 '()))
3
> (cdr (cons 3 '()))
()
> '(3 . 4)
(3 . 4)
> (quote (3 . 4))
(3 . 4)
> (quote (3 . ()))
(3)
> '(3 . ())
(3)
> (cons 3 (cons 4 (cons 5 '())))
(3 4 5)
> (list? (cons 3 (cons 4 (cons 5 '()))))
#t
> (list? '(3 4 5))
#t
> (list? '())
#t
> (list? (cons 3 '()))
#t
> (list? (cons 3 (cons 4 '())))
#t
> (list? (cons 3 (cons 4 '())))
#t
> (list? (cons 3 (cons 4 5)))
#f
> (cons 3 (cons 4 5))
(3 4 . 5)
> (cons 3 (cons 4 (cons 5 '())))
(3 4 5)
> '(3 4 5)
(3 4 5)
> (quote (3 4 5))
(3 4 5)
> (list 3 4 5)
(3 4 5)
> '(3 . (4 . (5. ())))
(3 4 5.0 ())
> '(3 . (4 . (5 . ())))
(3 4 5)
> (cons 3 (cons 4 (cons 5 '())))
(3 4 5)
> (cons 3 (cons 4 (cons 5 6)))
(3 4 5 . 6)
> '(3 . (4 . (5 . 6)))
(3 4 5 . 6)
> 














5
5












> (cons 3 (cons 4 (cons 5 '())))
(3 4 5)
> '(3 . (4 . (5 . ())))
(3 4 5)
> (car (cons 3 (cons 4 (cons 5 '()))))
3
> (cdr (cons 3 (cons 4 (cons 5 '()))))
(4 5)
> (car (cdr (cons 3 (cons 4 (cons 5 '())))))
4
> (cdr (cdr (cons 3 (cons 4 (cons 5 '())))))
(5)
> (cdr (cdr (cdr (cons 3 (cons 4 (cons 5 '()))))))
()
> (car (cdr (cdr (cons 3 (cons 4 (cons 5 '()))))))
5
> (cadr (cons 3 (cons 4 (cons 5 '()))))
4
> (cddr (cons 3 (cons 4 (cons 5 '()))))
(5)
> (cdar (cons 3 (cons 4 (cons 5 '()))))

Exception in cdar: incorrect list structure (3 4 5)
Type (debug) to enter the debugger.
> (cdr 3)

Exception in cdr: 3 is not a pair
Type (debug) to enter the debugger.
> (car '())

Exception in car: () is not a pair
Type (debug) to enter the debugger.
> '(3 . (4 . (5 . ())))
(3 4 5)
> (cons 3 (cons 4 (cons 5 '())))
(3 4 5)
> '(3 4 5)
(3 4 5)
> (list 3 4 5)
(3 4 5)
> (cons
    (cons 'cat (cons 'dog (cons 'mouse '())))
    (cons 4 (cons 5 '())))
((cat dog mouse) 4 5)
> '((cat . (dog . (mouse . ())))
    . (4 . (5 . ())))
((cat dog mouse) 4 5)
> '((cat dog mouse) 4 5)
((cat dog mouse) 4 5)
> (list (list cat dog mouse) 4 5)

Exception: variable mouse is not bound
Type (debug) to enter the debugger.
> (list (list 'cat 'dog 'mouse) 4 5)
((cat dog mouse) 4 5)
> (list (list 'cat 'dog 'mouse) '4 5)
((cat dog mouse) 4 5)
> (list (list 'cat 'dog 'mouse) '4 '5)
((cat dog mouse) 4 5)
> (list (list 'cat 'dog 'mouse) ''4 '5)
((cat dog mouse) '4 5)
> (list (list 'cat 'dog 'mouse) '4 '5)
((cat dog mouse) 4 5)
> ()

Exception: invalid syntax ()
Type (debug) to enter the debugger.
> '()
()
> '(3 4 5 ())
(3 4 5 ())
> '(a (b ((c d) e) (f)))
(a (b ((c d) e) (f)))
> (list 'a '(b ((c d) e) (f)))
(a (b ((c d) e) (f)))
> (list 'a '(list 'b ((c d) e) (f)))
(a (list 'b ((c d) e) (f)))
> (list 'a '(list 'b '((c d) e) '(f)))
(a (list 'b '((c d) e) '(f)))
> (list 'a (list 'b '((c d) e) '(f)))
(a (b ((c d) e) (f)))
> (list 'a (list 'b (list '(c d) 'e) '(f)))
(a (b ((c d) e) (f)))
> (list 'a (list 'b (list (list 'c 'd) 'e) '(f)))
(a (b ((c d) e) (f)))
> (list 'a (list 'b (list (list 'c 'd) 'e) (list 'f)))
(a (b ((c d) e) (f)))
> (list 'a (list 'b (list (cons 'c (cons 'd '())) 'e) (list 'f)))
(a (b ((c d) e) (f)))
> (list 'a
        (list
          'b
          (list (cons 'c (cons 'd '())) 'e)
          (list 'f)))
(a (b ((c d) e) (f)))
> (list 'a
        (list
          'b
          (cons (cons 'c (cons 'd '())) (cons 'e '()))
          (list 'f)))
(a (b ((c d) e) (f)))
> (list 'a
        (list
          'b
          (cons (cons 'c (cons 'd '())) (cons 'e '()))
          (cons 'f '())))
(a (b ((c d) e) (f)))
> (list 'a
        (cons
          'b
          (cons
            (cons (cons 'c (cons 'd '())) (cons 'e '()))
            (cons
              (cons 'f '())
              '()))))
(a (b ((c d) e) (f)))
> (cons 'a
        (cons
          (cons
          'b
          (cons
            (cons (cons 'c (cons 'd '())) (cons 'e '()))
            (cons
              (cons 'f '())
              '())))
          '()))
(a (b ((c d) e) (f)))
> '(a (b ((c d) e) (f)))
(a (b ((c d) e) (f)))
> (cdr '(a (b ((c d) e) (f))))
((b ((c d) e) (f)))
> (car (cdr '(a (b ((c d) e) (f)))))
(b ((c d) e) (f))
> (cadr (car (cdr '(a (b ((c d) e) (f))))))
((c d) e)
> (car (cadr (car (cdr '(a (b ((c d) e) (f)))))))
(c d)
> (car (car (cadr (car (cdr '(a (b ((c d) e) (f))))))))
c
> (caar (cadr (car (cdr '(a (b ((c d) e) (f)))))))
c
> (caar (cadr (cadr '(a (b ((c d) e) (f))))))
c
> (caar (cadadr '(a (b ((c d) e) (f)))))
c
> (car (caadadr '(a (b ((c d) e) (f)))))

Exception: variable caadadr is not bound
Type (debug) to enter the debugger.
> (caar (cadadr '(a (b ((c d) e) (f)))))
c
> 