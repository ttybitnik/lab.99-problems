(defun tty/slice (list x y)
  (let ((slice))
    (setq slice (nthcdr (- x 1) list))
    (setq slice (nthcdr (- (length list) y) (nreverse slice)))
    (nreverse slice)))

(tty/slice '(a b c d e f g h i k) 3 7)
;; => (c d e f g)
