(msg/make packages/msg "Packages")

(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)
(unless package-archive-contents (package-refresh-contents))

(defconst packages/list
  (list
   'company
   'dtrt-indent
   'evil
   'evil-leader
   'flycheck
   'kaolin-themes
   'lsp-mode
   'lsp-ui
   'rainbow-delimiters
   'rjsx-mode
   'slime
   'treemacs
   'treemacs-evil
   'typescript-mode
   'undo-tree
   'web-mode
    ))

(defun packages/ensure (pkg)
    (if (package-installed-p pkg)
	(progn
	  (packages/msg "Found package \"%s\"" pkg))
      (progn
	(packages/msg "Installing package \"%s\"" pkg)
	(package-install pkg))))

(mapc 'packages/ensure packages/list)
