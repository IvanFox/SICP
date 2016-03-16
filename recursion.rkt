#lang racket
(define (sqrt-iter guess x)
  (if (good-enough? guess x) guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average a b)
  (/ (+ a b) 2))

(define (good-enough? guess x)
  (< (abs (- (* guess guess) x)) 0.00001))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (abs x)
  (if (> x 0) x (- x)))
