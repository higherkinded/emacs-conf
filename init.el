(defconst init/START-TIME (current-time))

(setq-default network-security-level 'high)
(menu-bar-mode -1) (toggle-scroll-bar -1) (tool-bar-mode -1)

(defconst init/USERDIR "~/.emacs.d/")
(defun init/local-load (file) (load (format "%s%s.el" init/USERDIR file)))

(init/local-load 'msg) (msg/make init/msg "Init")
(init/local-load 'utils)
(defconst init/SAVEDIR (util/join-dirs init/USERDIR "saves/"))
(defconst init/LANGDIR (util/join-dirs init/USERDIR "lang/"))
(unless (file-directory-p init/LANGDIR) (make-directory init/LANGDIR))

(init/local-load 'package-list)
(init/local-load 'sorry-rms)
(init/local-load 'visual)
(init/local-load 'vars)
(init/local-load 'modes)
(init/local-load 'commands)
(init/local-load 'keybindings)

;; Language configurations
(util/load-all init/LANGDIR)

(defconst init/ELAPSED (time-subtract (current-time) init/START-TIME))
(init/msg "Done! (%dms)" (ceiling (* (time-to-seconds init/ELAPSED) 1000)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(vue-mode rjsx-mode react-mode typescript-tsx web-mode typescript-mode treemacs-evil slime treemacs rainbow-delimiters company lsp-ui company-mode lsp-mode evil-leader)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
