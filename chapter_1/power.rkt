#lang racket
  

(define (power num exp)
  (define (power-iter num total count)
    (cond ((> count exp) total)
          (else (power-iter num (* total num) (+ count 1)))))
  (power-iter num 1 1))


    
