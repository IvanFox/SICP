#lang racket
(define (fac x)
  (if (= 1 x) 1
      (* x (fac (- x 1)))))

(define (factorial x)
  (factorial-iter 1 x 1))

(define (factorial-iter result x counter)
  (if (= x counter) (* x result)
      (factorial-iter (* result counter) x (+ 1 counter)))) 

