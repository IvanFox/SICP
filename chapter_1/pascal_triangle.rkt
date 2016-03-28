#lang racket
(define (pascal-triangle row col)
  (cond ((> col row) 0)
        ((or (= row 1) (= col 1) (= col row)) 1)
        (else (+ (pascal-triangle (- row 1) (- col 1)) (pascal-triangle (- row 1) col)))))

(define (f n)
  (cond ((> 3 n) n)
        (else (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3)))))))


             