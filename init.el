;; for personal use only

(setq use-package-always-ensure t)
(setq use-package-always-defer t)

(use-package modus-themes)

(use-package magit)

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

(customize-set-variable 'custom-enabled-themes '(modus-operandi-tinted))
(customize-set-variable 'menu-bar-mode nil)
(customize-set-variable 'tool-bar-mode nil)
(customize-set-variable 'scroll-bar-mode nil)
(customize-set-variable 'column-number-mode t)
(customize-set-variable 'global-display-line-number-mode t)
(customize-set-variable 'display-line-numbers 'relative)
(customize-set-variable 'global-hl-line-mode t)
(customize-set-variable 'inhibit-splash-screen t)

;; TODO maybe save these to .emacs.d/ instead?
(customize-set-variable 'make-backup-files nil)
(customize-set-variable 'auto-save-default nil)

(add-to-list 'default-frame-alist
	     '(font . "Jetbrains Mono-10"))
