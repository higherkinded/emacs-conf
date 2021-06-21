(require 'treemacs)
(require 'treemacs-evil)

;; Evil
(require 'evil)
(require 'evil-leader)
(require 'undo-tree)
(evil-set-undo-system 'undo-tree)
(global-undo-tree-mode t)
(evil-mode t)
(global-evil-leader-mode t)

;; Completion-related
(global-company-mode t)
(electric-pair-mode t)

;; Flycheck
(with-eval-after-load 'flycheck
  (setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc)))
(util/def-hook 'prog-mode-hook (flycheck-mode t))
