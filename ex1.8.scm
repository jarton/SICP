#lang sicp

(define (cube-itr guess oldguess x)
  (if (good-enough? guess oldguess)
      guess
      (cube-itr (improve guess x)
                 guess x)))

(define (good-enough? guess oldguess)
  (< (abs (- guess oldguess))
     (* guess 0.001)))

(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

(define (cubesqrt x)
  (cube-itr 1 0 x))