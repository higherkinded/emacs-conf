;; Backups
(setq backup-by-copying t
      backup-directory-alist (list (cons "." "/tmp/.emacs-trash"))
      delete-old-versions t
      kept-new-versions 5
      kept-old-versions 2
      version-control t)

;; Company
(setq-default company-dabbrev-downcase 0
	      company-dabbrev-minimum-length 1
	      company-minimum-prefix-length 1
	      company-idle-delay 0.15)

;; Lisp
(setq-default inferior-lisp-program "sbcl")

;; Treemacs
(setq-default treemacs-no-png-images t)
