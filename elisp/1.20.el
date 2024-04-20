(defun tty/drop-kth (list k)
  (let ((drop)
	(tail (nthcdr k list)))
    (dotimes (_ (- k 1) (nconc (nreverse drop) tail))
      (push (car list) drop)
      (pop list))))

(tty/drop-kth '(a b c d) 2)
;; => (a c d)
