;;; given an expression in prefix representation, evaluate its value

;;; (evalu '(* (+ 2 3) (- 4 1))) ==> -15
;;; (evalu '(+ (- 8 5) (* 2 (+ 4 2)))) ==> 15

(defun evalu (expr)
  (cond ((null expr) nil)
  	(t (cond ((numberp expr) expr)
		 ((equal (first expr) '*) 
		  (* (evalu (second expr)) (evalu (third expr))))
		 ((equal (first expr) '+)
		  (+ (evalu (second expr)) (evalu (third expr))))
		 ((equal (first expr) '-)
		  (- (evalu (second expr)) (evalu (third expr))))))))

