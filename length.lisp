;;; get the length of a list, recursively

;;; (len '(1 2 4)) ==> 3

(defun len (lis)
  (cond ((null lis) 0)
  	    (t (+ 1 (len (rest lis))))))
