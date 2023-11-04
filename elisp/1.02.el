(defun tty_find_penultimate (list)
  (cond ((null list)
	 (message "List is empty."))
	((= (length list) 1)
	 (message "List has just one element."))
	((nth (- (length list) 2) list))))

(tty_find_penultimate '(a b c d))
;; => c
