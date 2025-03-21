; for personal use only

(use-package magit
  :ensure t
  :defer t)

(use-package ef-themes
  :ensure t
  :defer t)

(setq custom-file "./custom.el")

(column-number-mode)
(global-display-line-numbers-mode)
(menu-bar--display-line-numbers-mode-relative)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(load-theme 'ef-melissa-light :no-confirm)

; TODO maybe save these to .emacs.d/ instead?
(setq make-backup-files nil)
(setq auto-save-default nil)

(setq inhibit-startup-screen 1)
(global-hl-line-mode)

(add-to-list 'default-frame-alist
	     '(font . "Jetbrains Mono-10"))
