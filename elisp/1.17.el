(defun tty/split-intotwo (list n)
  (let ((l1)
	(l2))
    (setq l1 (nthcdr (- (length list) n) (reverse list)))
    (setq l2 (nthcdr n list))
    (list (nreverse l1) l2)))

(tty/split-intotwo '(a b c d e f g h i k) 3)
;; => ((a b c) (d e f g h i k))
