;;; Compute power recursively

(defun pow (x y)
     (cond ((= y 0) 1)
		 ((> y 0)
		  (* x (pow x (1- y))))
		 (t 
		  (/ 1 (* x (pow x (1- (- y))))))))
