;; for personal use only

;;; Base Emacs configuration (does not depend on any packages or OS)

(customize-set-variable 'menu-bar-mode nil)
(customize-set-variable 'tool-bar-mode nil)
(customize-set-variable 'scroll-bar-mode nil)
(customize-set-variable 'column-number-mode t)
(customize-set-variable 'global-hl-line-mode t)
(customize-set-variable 'global-word-wrap-whitespace-mode t)
(customize-set-variable 'inhibit-splash-screen t)
(customize-set-variable 'save-place-mode t)
(customize-set-variable 'global-auto-revert-non-file-buffers t)
;; TODO maybe save these to .emacs.d/ instead?
(customize-set-variable 'make-backup-files nil)
(customize-set-variable 'auto-save-default nil)
(customize-set-variable 'c-default-style
			'((c-mode . "linux")
			  (java-mode . "java")
			  (awk-mode . "awk")
			  (other . "gnu")))

;;; Font
(add-to-list 'default-frame-alist
	     '(font . "Jetbrains Mono-10"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(go-mode magit modus-themes web-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(unless (file-exists-p package-user-dir)
  (package-refresh-contents)
  (package-install-selected-packages))

;;; Package configuration

;;; modus-themes
(customize-set-variable
 'modus-themes-to-toggle
 '(modus-operandi-tinted modus-vivendi-tinted))

;;; web-mode
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.cshtml\\'" . web-mode))
(setq web-mode-engines-alist
      '(("razor" . "\\.cshtml\\'")))

;;; csharp-mode
(add-hook 'csharp-mode-hook
	  '(lambda ()
	     (setq indent-tabs-mode nil)
	     (electric-pair-local-mode 1)))

;;; eshell
;; clear the eshell screen
(add-hook 'eshell-mode-hook
	  '(lambda ()
	     (local-set-key (kbd "C-c c")
			    '(lambda ()
			       (interactive)
			       (eshell/clear 1)
			       (eshell-emit-prompt)))))

;;; OS-specific config

(cond
 ((string-equal system-type "windows-nt"))
 ((string-equal system-type "darwin")
  ;; Mac config
  (if (not (display-graphic-p))
      (progn
	(load-theme 'white :no-confirm))
    
    ;; not saving any space on Mac by hiding the menu bar
    (customize-set-variable 'menu-bar-mode t)
    (load-theme 'edn :no-confirm)
    (global-set-key (kbd "<S-s-up>") 'toggle-frame-maximized)))
 
 ((string-equal system-type "gnu/linux")))
