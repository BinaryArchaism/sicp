#lang racket
(define (f1 n)
  (if (= n 1)
      1
      (* n (f1 (- n 1)))))
(define (f2 n)
  (define (iter product counter)
    (if (> counter n)
        product
        (iter (* counter product)
              (+ counter 1))))
  (iter 1 1))