(defun tty_is_palindrome (list)
  (equal list (reverse list)))

(tty_is_palindrome '(x a m a x))
;; => t
