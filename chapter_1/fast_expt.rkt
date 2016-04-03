#lang racket

(define (fast-expt a n)
  (cond ((= n 0) 1)
        ((even? n) (* a a (fast-expt a (/ n 2))))
        (else (* a (fast-expt a (- n 1))))))


(define (power num exp)
  (define (power-iter counter product)
    (cond ((= counter 0) product)
          ((even? counter) (power-iter (- counter 2) (* num num product)))
          (else (power-iter (- counter 1) (* num product)))))
  (power-iter exp 1))

(define square (lambda (x) (* x x)))
  
 