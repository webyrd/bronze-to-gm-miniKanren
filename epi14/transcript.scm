Chez Scheme Version 10.1.0
Copyright 1984-2024 Cisco Systems, Inc.

> #t
#t
> #f
#f
> '#t
#t
> '#f
#f
> ''#t
'#t
> (quote (quote #t))
'#t = (quote #t)
> ; (quote <datum>) => <datum>
(quote (quote #t))
'#t
> (car (quote (quote #t)))
quote
> (symbol? (car (quote (quote #t))))
#t
> (number? (car (quote (quote #t))))
#f
> ;; Boolean constants
5
5
> (cons 'cat (cons 'dog (cons 'mouse '())))
(cat dog mouse)
> ;; conditional expressions
;; `if` expression & `cond` expression
;; Turing tar pit
;; |||||||||||||| + ||||| V 5 (1 0 1)
;; unary numerals
;; 10^{100}
;; Church-Turing Thesis
;; computable functions

(if (symbol? 'cat)
    'miaow
    'woof)
miaow
> 
if (x == 0) {
  x++;
} else {
  x = y * 3;
}

Exception: invalid syntax if
Type (debug) to enter the debugger.
> 
Exception: variable == is not bound
Type (debug) to enter the debugger.
> 
Exception: variable \x7B; is not bound
Type (debug) to enter the debugger.
> 
Exception: variable x++ is not bound
Type (debug) to enter the debugger.
> 
Exception: variable \x7D; is not bound
Type (debug) to enter the debugger.
> 
Exception: misplaced aux keyword else
Type (debug) to enter the debugger.
> 
Exception: variable \x7B; is not bound
Type (debug) to enter the debugger.
> 
Exception: variable x is not bound
Type (debug) to enter the debugger.
> #<procedure =>
> 
Exception: variable y is not bound
Type (debug) to enter the debugger.
> #<procedure *>
> 3
> 
Exception: variable \x7D; is not bound
Type (debug) to enter the debugger.
> > 5
#<procedure >>
> 5
> 5
5
> 6
















5
5
> > (if (number? (+ 3 4))
        (* 3 4)
        (- 3 4))
#<procedure >>
> 12
> > (if (number? (+ 3 4))
        (* 3 4)
        (- 3 4))
#<procedure >>
> 12
> (if (number? (+ 3 4))
        (* 3 4)
        (- 3 4))
12
> >
#<procedure >>
> 6
6
> (+ 3 4)
7
> > > > 6
#<procedure >>
> #<procedure >>
> #<procedure >>
> 6
> (> 4 5)
#f
> (> 5 4)
#t
> 5 6 7 8
5
> 6
> 7
> 8
> >
#<procedure >>
> +
#<procedure +>
> <
#<procedure <>
> (if (number? (+ 3 4))
      (* 3 4)
      (- 3 4))
12
> (if (number? (+ 3 4))
      (* 3 4)
      (- 3 4))
12
> (if (number? (+ 3 4))
      (* 3 4)
      (- 3 4))
12
> 
(if <e1> <e2> <e3>)
(if <e1> <e2>)

(if <e> <e> <e>)
(if <e> <e>)

(if <expr> <expr> <expr>)
(if <expr> <expr>)

(if <test>
    <consequent>
    <alternate>)
(if <test>
    <consequent>)

(if <t> <c> <a>)
(if <t> <c>)

Exception: variable <e1> is not bound
Type (debug) to enter the debugger.
> 
Exception: variable <e1> is not bound
Type (debug) to enter the debugger.
> 
Exception: variable <e> is not bound
Type (debug) to enter the debugger.
> 
Exception: variable <e> is not bound
Type (debug) to enter the debugger.
> 
Exception: variable <expr> is not bound
Type (debug) to enter the debugger.
> 
Exception: variable <expr> is not bound
Type (debug) to enter the debugger.
> 
Exception: variable <test> is not bound
Type (debug) to enter the debugger.
> 
Exception: variable <test> is not bound
Type (debug) to enter the debugger.
> 
Exception: variable <t> is not bound
Type (debug) to enter the debugger.
> 
Exception: variable <t> is not bound
Type (debug) to enter the debugger.
> (if #t 3 4)
3
> (if (null? (quote ())) ;; test
      (+ 3 4) ;; consequent
      (cons 'cat 'dog) ;; alternate
      )
7
> (if (null? (quote (fish))) ;; test
      (+ 3 4) ;; consequent
      (cons 'cat 'dog) ;; alternate
      )
(cat . dog)
> (if (null? (quote ())) ;; test
      (+ 3 4) ;; consequent
      (cons 'cat 'dog) ;; alternate
      )
7
> (if (null? (quote ())) ;; test
      (+ 3 4) ;; consequent      
      )
7
> (if (null? (quote (fish))) ;; test
      (+ 3 4) ;; consequent      
      )
> (list
    (if (null? (quote ())) ;; test
      (+ 3 4) ;; consequent      
      ))
(7)
> (list
    (if (null? (quote (fish))) ;; test
      (+ 3 4) ;; consequent      
      ))
(#<void>)
> (void)
> (list (void))
(#<void>)
> (list
    (if (null? (quote (fish))) ;; test
        (+ 3 4) ;; consequent      
        ))
(#<void>)
> 