(defun tty/range-random-int (n r)
  (if (> n r)
      nil
    (let ((res)
	  (range))
      (dotimes (i (+ r 1))
	(unless (= i 0)
	  (push i range)))
      (dotimes (_ n res)
	(let* ((r (+ (random (length range)) 1))
	       (ptr (nthcdr (- r 2) range)))
	  (cond ((= r 1)
		 (push (pop range) res))
		((and (> r 0)
		      (<= r (length range)))
		 (push (car (cdr ptr)) res)
		 (setcdr ptr (cdr (cdr ptr))))
		(t
		 nil)))))))

(tty/range-random-int 6 49)
;; => (32 41 1 20 16 26)