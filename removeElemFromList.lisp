;;; Write a function that takes a list and an element, and returns the original list with the first occurrence of the element removed.

(defun remu (lis elem)
 (if (null lis)
  (nil)
  (if (equal (first lis) elem) 
   (rest lis)
   (cons (first lis) (remu (rest lis) elem)))))

