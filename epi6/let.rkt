#lang r5rs

(define n1 6)
(define n3 3)
(display n1)
(newline)
(display n3)
(newline)

(display
  (let ((n1 (* n1 2)))
    (let ((n1 (+ n1 1))
          (n2 (+ 3 5)))
      (* n3 n1 n2 n1))))
(newline)

(display n1)
(newline)