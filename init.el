;; -*- lexical-binding: t; -*-

;; for personal use only

;;; Base Emacs configuration (does not depend on any packages or OS)

;; Prefer the use of customize-set-variable for setting defaults to make
;; changes visible to Custom.
(customize-set-variable 'menu-bar-mode nil)
(customize-set-variable 'tool-bar-mode nil)
(customize-set-variable 'scroll-bar-mode nil)
(customize-set-variable 'column-number-mode t)
(customize-set-variable 'global-word-wrap-whitespace-mode t)
(customize-set-variable 'save-place-mode t)
(customize-set-variable 'global-auto-revert-non-file-buffers t)
(customize-set-variable 'auto-save-file-name-transforms
			'(("*", temporary-file-directory t)))
(customize-set-variable 'make-backup-files nil)
(customize-set-variable 'custom-theme-directory
			(concat user-emacs-directory "themes/"))
(customize-set-variable 'global-auto-revert-mode t)
(customize-set-variable 'recentf-mode t)
(customize-set-variable 'initial-buffer-choice 'recentf-open-files)
(customize-set-variable 'help-window-select t)
(customize-set-variable 'winner-mode t)
(customize-set-variable 'blink-cursor-blinks 0)

(put 'dired-find-alternate-file 'disabled nil)

;;; Font
(add-to-list 'default-frame-alist '(font . "Jetbrains Mono-10"))

;;; Built-in Mode Configuration

;;; c-mode
(c-add-style "edn" '("linux" (c-offset-alist (case-label . +))))
(add-to-list 'c-default-style '(c-mode . "edn"))
(add-hook 'c-mode-hook
	  (lambda ()
	    (setq whitespace-line-column 78)
	    (whitespace-mode 1)
	    (electric-pair-local-mode 1)))

;;; csharp-mode
(add-hook 'csharp-mode-hook
	  (lambda ()
	    (setq indent-tabs-mode nil)
	    (electric-pair-local-mode 1)))

;;; eshell
(add-hook 'eshell-mode-hook
	  (lambda ()
	    ;; keybinding to clear the screen
	    (local-set-key (kbd "C-c l")
			   (lambda ()
			     (interactive)
			     (eshell/clear 1)
			     (eshell-emit-prompt)))))

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

;;; Package Configuration

;;; magit
(customize-set-variable 'magit-log-section-commit-count 50)

;;; web-mode
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.cshtml\\'" . web-mode))
(customize-set-variable 'web-mode-engines-alist
			'(("razor" . "\\.cshtml\\'")))
(customize-set-variable 'web-mode-extra-keywords
			'(("razor" . ("model" "using"))))

;;; OS-specific Settings
(cond
 ((string-equal system-type "windows-nt")
  ;; Windows
  (load-theme 'scribe :no-confirm))
 ((string-equal system-type "darwin")
  ;; MacOS
  (if (not (display-graphic-p))
      (progn
	(load-theme 'white :no-confirm))

    ;; not saving any space on Mac by hiding the menu bar
    (customize-set-variable 'menu-bar-mode t)
    (customize-set-variable 'comint-process-echoes t)
    (load-theme 'scribe :no-confirm)
    (global-set-key (kbd "<S-s-up>") 'toggle-frame-maximized)))
 ((string-equal system-type "gnu/linux")
  ;; Linux
  (if (display-graphic-p)
      (load-theme 'scribe :noconfirm)
    (load-theme 'black :noconfirm))))
