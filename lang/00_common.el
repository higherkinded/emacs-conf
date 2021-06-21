(require 'lsp)
(require 'lsp-ui)

(defun lang/lsp/get-lang-id ()
  (interactive)
  (->> lsp-language-id-configuration
    (-first (-lambda ((mode-or-pattern . language))
	      (cond ((and (buffer-file-name)
			  (stringp mode-or-pattern)
			  (s-matches? mode-or-pattern (buffer-file-name)))
		     language)
		    ((eq mode-or-pattern major-mode) language))))))

(util/def-hook 'prog-mode-hook
	       (dtrt-indent-mode t)
	       (if (lang/lsp/get-lang-id) (progn
			(lsp-ui-mode)
			(lsp))))
