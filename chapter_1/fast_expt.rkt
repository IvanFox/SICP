#lang racket

(define (fast-expt a n)
  (cond ((= n 0) 1)
        ((even? n) (* a a (fast-expt a (/ n 2))))
        (else (* a (fast-expt a (- n 1))))))

(define (exponent a n)
  (define (fast-iter product counter)
    (cond ((= counter 0) product)
          ((even? n) (fast-iter (* product a a) (/ counter 2)))
          (else (fast-iter (* product a) (- counter 1)))))
  (fast-iter 1 n))
  
 