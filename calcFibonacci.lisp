;;; calculate the Fibonacci number

;;; (fib 4) ==> 5
;;; (fib 7) ==> 21

(defun fib (n)
  (cond ((or (= n 0) (= n 1)) 1)
  	    (t (+ (fib (- n 1)) (fib (- n 2))))))
