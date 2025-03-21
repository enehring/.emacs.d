;; for personal use only

(setq custom-file "./custom.el")
(load custom-file)

(use-package magit
  :ensure t
  :defer t)

(use-package ef-themes
  :ensure t
  :defer t)

(load-theme 'ef-melissa-light :no-confirm)

(column-number-mode)
(global-display-line-numbers-mode)
(menu-bar--display-line-numbers-mode-relative)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(global-hl-line-mode)

; TODO maybe save these to .emacs.d/ instead?
(setq make-backup-files nil)
(setq auto-save-default nil)

(setq inhibit-startup-screen 1)

(add-to-list 'default-frame-alist
	     '(font . "Jetbrains Mono-10"))
