(require 'lsp)

(defun lsp-enabled () (bound-and-true-p lsp-mode))

(defmacro lspdefcmd (name &rest expressions)
  `(defun ,name ()
    (interactive)
    (if (lsp-enabled) (progn ,@expressions) (message "LSP isn't active"))))

(lspdefcmd find-definition (lsp-find-definition))
(lspdefcmd find-refs (lsp-find-references))

(evil-leader/set-leader ";")
(evil-leader/set-key "w" 'evil-window-map)
(evil-leader/set-key "m" 'treemacs)
(evil-leader/set-key "q" 'evil-quit)
(evil-leader/set-key "SPC" 'toggle-truncate-lines)
(evil-leader/set-key "f" 'find-definition)
(evil-leader/set-key "u" 'find-refs)
