(defun tty/runlength-compression-direct (list)
  (let ((direct))
    (while (consp list)
      (let* ((item (pop list))
	     (cntr 1))
        (while (equal item (car list))
          (pop list)
          (setq cntr (+ cntr 1)))
	(if (> cntr 1)
	    (push (list cntr item) direct)
	  (push item direct))))
    (nreverse direct)))

(tty/runlength-compression-direct '(a a a a b c c a a d e e e e))
;; => ((4 a) b (2 c) (2 a) d (4 e))
