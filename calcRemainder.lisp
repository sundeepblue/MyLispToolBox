;;; computer the reminder of two numbers

;;; (remainder 8 3) ==> 2
;;; (remainder 40 17) ==> 6

(defun remainder (n m)
  (cond ((< n m) n)
  	(t (reminder (- n m) m))))

