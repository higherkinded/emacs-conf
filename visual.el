;; Colors, etc.
(require 'kaolin-themes)
(load-theme 'kaolin-bubblegum t)
(set-face-attribute 'default nil
		    :family "CatV 6x12 9"
		    :height 135
		    :width 'normal)

;; Numbers
(setq display-line-numbers 'relative)
(display-line-numbers-mode t)
(line-number-mode t)
(column-number-mode t)
