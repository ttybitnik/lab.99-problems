(defun tty/slice (list s e)
  (let ((slice))
    (setq slice (nthcdr (- s 1) list))
    (setq slice (nthcdr (- (length list) e) (nreverse slice)))
    (nreverse slice)))

(tty/slice '(a b c d e f g h i k) 3 7)
;; => (c d e f g)
