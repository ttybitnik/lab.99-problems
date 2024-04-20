(defun tty/insert-at (elt list k)
  (let* ((ins list)
	 (ptr (nthcdr (- k 2) ins))
         (tail (cons elt (cdr ptr))))
    (cond ((= k 1)
	   (push elt ins))
	  ((and (> k 0)
		(<= k (+ (length ins) 1)))
	   (setcdr ptr tail)
	   ins)
	  (t
	   nil))))

(tty/insert-at "alfa" '(a b c d) 2)
;; => (a "alfa" b c d)