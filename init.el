;; for personal use only

;; not saving any screen real estate by hiding the menu bar on mac
(unless (and (eq system-type 'darwin) (display-graphic-p))
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
 '(package-selected-packages '(magit modus-themes web-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(unless (file-exists-p package-user-dir)
  (package-refresh-contents)
  (package-install-selected-packages))

(if (display-graphic-p)
    (load-theme 'modus-operandi-tinted :no-confirm))

;; config from web-mode.org
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))


