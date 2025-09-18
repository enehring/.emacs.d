;; for personal use only

;;; Base Emacs configuration (does not depend on any packages or OS)

;; Prefer the use of customize-set-variable for setting defaults to make
;; changes visible to Custom. Note that setting variables/modes`directly is
;; still done when changing settings in hooks, etc.
(customize-set-variable 'menu-bar-mode nil)
(customize-set-variable 'tool-bar-mode nil)
(customize-set-variable 'scroll-bar-mode nil)
(customize-set-variable 'column-number-mode t)
(customize-set-variable 'global-hl-line-mode t)
(customize-set-variable 'global-word-wrap-whitespace-mode t)
(customize-set-variable 'inhibit-splash-screen t)
(customize-set-variable 'save-place-mode t)
(customize-set-variable 'global-auto-revert-non-file-buffers t)
(customize-set-variable 'auto-save-file-name-transforms
			'(("*", temporary-file-directory t)))
(customize-set-variable 'backup-directory-alist
			'(("." . (concat user-emacs-directory "backup/"))))
(customize-set-variable 'c-default-style
			'((c-mode . "linux")
			  (java-mode . "java")
			  (awk-mode . "awk")
			  (other . "gnu")))
(customize-set-variable 'custom-theme-directory
			(concat user-emacs-directory "themes/"))
(customize-set-variable 'recentf-mode t)
(customize-set-variable 'global-auto-revert-mode t)

;;; Font
(add-to-list 'default-frame-alist
	     '(font . "Jetbrains Mono-10"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(go-mode magit web-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; install selected packages automatically.
(unless (file-exists-p package-user-dir)
  (package-refresh-contents)
  (package-install-selected-packages))

;;; Package configuration

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

;;; c-mode
(add-hook 'c-mode-hook
	  '(lambda ()
	     (electric-pair-local-mode 1)))

;;; csharp-mode
(add-hook 'csharp-mode-hook
	  '(lambda ()
	     (setq indent-tabs-mode nil)
	     (electric-pair-local-mode 1)))

;;; eshell
(add-hook 'eshell-mode-hook
	  '(lambda ()
	     ;; keybinding to clear the screen
	     (local-set-key (kbd "C-c c")
			    '(lambda ()
			       (interactive)
			       (eshell/clear 1)
			       (eshell-emit-prompt)))))

;;; OS-specific settings

(cond
 ((string-equal system-type "windows-nt")
  (load-theme 'edn :no-confirm))
 ((string-equal system-type "darwin")
  ;; Mac config
  (if (not (display-graphic-p))
      (progn
	(load-theme 'white :no-confirm))
    
    ;; not saving any space on Mac by hiding the menu bar
    (customize-set-variable 'menu-bar-mode t)
    (load-theme 'edn :no-confirm)
    (global-set-key (kbd "<S-s-up>") 'toggle-frame-maximized)))
 
 ((string-equal system-type "gnu/linux")
  (if (display-graphic-p)
      (load-theme 'edn :noconfirm)
    (load-theme 'black :noconfirm))))
