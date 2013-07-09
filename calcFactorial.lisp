;;; calculate factorial

;;; (factorial 4) ==> 24

(defun factorial (n)
  (cond ((= n 0) 1)
  	(t (* n (factorial (1- n))))))
