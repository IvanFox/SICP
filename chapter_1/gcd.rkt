#lang racket
(define (gcd a b)
  (define (remainder a b)
    (cond ((< a b) a)
          (else (remainder (- a b) b))))
  (cond ((= 0 b) a)
        (else (gcd b (remainder a b)))))

