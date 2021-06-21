(defun util/join-dirs (base &rest dirs)
  (if dirs (apply 'util/join-dirs (expand-file-name (car dirs) base) (cdr dirs))
    base))

(defun util/load-all (dir)
  (let ((files (directory-files-recursively dir ""))
	(load-file (lambda (node)
		     (if (and
			  (> (length node) 3)
			  (string-equal (substr node -3) ".el"))
		       (load (concat dir node))))))
    (mapc 'load-file files)))

(defun util/auto-mode (pattern mode)
  (add-to-list 'auto-mode-alist (cons pattern mode)))

(defmacro util/def-hook (name &rest expressions)
  `(add-hook ,name (lambda () (progn ,@expressions))))
