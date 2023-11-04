(defun tty_find_nth (n list)
  (if (= n 0)
      nil
    (nth (- n 1) list)))

(tty_find_nth 3 '(a b c))
;; => c
