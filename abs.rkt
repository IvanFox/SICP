#lang racket
(define (abs x)
  (cond ((< x 0) (- x))
        ((> x -1) x)))