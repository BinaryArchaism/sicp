#lang racket
(define (better-good-enough? guess prev-guess) 
  (< (abs (/ (- guess prev-guess) prev-guess)) 0.001))
(define (better-sqrt-iter guess prev-guess x) 
  (if (better-good-enough? guess prev-guess) 
      guess 
      (better-sqrt-iter (improve guess x) 
                        guess 
                        x)))
(define (better-sqrt x) 
  (better-sqrt-iter 1.0 0.5 x))
(define (improve guess x)
	(average guess(/ x guess)))
(define (average x y)
	(/ (+ x y) 2))
(define (square x)
	(* x x))
(define (abs x)
	(if (< x 0) (- x) x))