(defun tty/find-last (list)
  (if (null list)
      (message "List is empty.")
    (nth (- (length list) 1) list)))

(tty/find-last '(a b c d))
;; => d
