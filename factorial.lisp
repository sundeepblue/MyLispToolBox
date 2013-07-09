;;; factorial

(defun factorial (n)
  (cond ((= n 0) 1)
  	(t (* n (factorial (1- n))))))
