#lang racket // if statement only works with one condition
(define (abs x)
  (if (< x 0) (- x) x))

(define (>= x y)
  (or (> x y) (= x y)))


(define (>= x y)
  (not (< x y)))