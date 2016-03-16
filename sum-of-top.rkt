#lang racket

(define (square x)
  (* x x))

(define (find_largest x y)
  (if (> x y) x y))

(define (sum-of-squares-of-top-two x y z)
  (if (= (find_largest x y) x)
      (if (= (find_largest y z) y)
          (+ (square x) (square y))
          (+ (square x) (square z)))
      (if (= (find_largest x z) z)
          (+ (square z) (square y))
          (+ (square x) (square y)))))


(define (sum-of-squares a b)
  (+ (* a a) (* b b)))

(define (sum-of-squares-of-top-two? a b c)
  (cond ((and (< a b) (< a c)) (sum-of-squares b c))
        ((and (< b a) (< b c)) (sum-of-squares a c))
        (else (sum-of-squares a b))))