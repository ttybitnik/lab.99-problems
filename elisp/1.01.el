(defun tty_find_last (list)
  (if (null list)
      (message "List is empty.")
    (nth (- (length list) 1) list)))

(tty_find_last '(a b c d))
;; => d
