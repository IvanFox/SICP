#lang racket

(define (A x y)
 (cond ((= x 0) (* 2 y))
       ((= y 0) 0)
       ((= y 1) 2)
       (else (A (- x 1) (A x (- y 1))))))