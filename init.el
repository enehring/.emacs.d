;; for personal use only

;; not saving any screen real estate by hiding the menu bar on mac
(unless (eq system-type 'darwin)
  (customize-set-variable 'menu-bar-mode nil))
(customize-set-variable 'tool-bar-mode nil)
(customize-set-variable 'scroll-bar-mode nil)
(customize-set-variable 'column-number-mode t)
(customize-set-variable 'display-line-numbers 'relative)
(customize-set-variable 'global-hl-line-mode t)
(customize-set-variable 'global-word-wrap-whitespace-mode t)
(customize-set-variable 'inhibit-splash-screen t)

;; TODO maybe save these to .emacs.d/ instead?
(customize-set-variable 'make-backup-files nil)
(customize-set-variable 'auto-save-default nil)

(add-to-list 'default-frame-alist
	     '(font . "Jetbrains Mono-10"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(modus-themes magit)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(unless (file-exists-p package-user-dir)
  (package-refresh-contents)
  (package-install-selected-packages))

(load-theme 'modus-operandi-tinted :no-confirm)

