;;; remove the first occurrence of an element from a list

;;; A ==> (a b c c d)
;;; (remu A 'a) ==> (b c c d)
;;; (remu A 'c) ==> (a b c d)

(defun remu1 (lis elem)
 (if (null lis)
  (nil)
  (if (equal (first lis) elem) 
   (rest lis)
   (cons (first lis) (remu1 (rest lis) elem)))))

;;; The above code has a concise form as follows:

(defun remu2 (lis elem)
  (cond ((null lis) nil)
 	((equal (first lis) elem) (rest lis))
		(t (cons (first lis) (remu2 (rest lis) elem)))))
