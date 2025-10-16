;; -*- lexical-binding: t; -*-

;;; grey-theme.el --- Theme

;; Copyright (C) 2025 , Evan Nehring

;; Author: Evan Nehring
;; Version: 0.1
;; Package-Requires: ((emacs "30.2"))
;; Created with ThemeCreator, https://github.com/mswift42/themecreator.

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <http://www.gnu.org/licenses/>.

;; This file is not part of Emacs.

;;; Commentary:
;;; grey theme created by Evan Nehring in 2025

;;; Code:

(deftheme grey)
(let ((class '((class color) (min-colors 89)))
      (fg1 "#000000")
      (fg2 "#141414")
      (fg3 "#292929")
      (fg4 "#3d3d3d")
      (fg6 "#000000")
      (bg1 "#dedede")
      (bg2 "#cccccc")
      (bg3 "#bababa")
      (bg4 "#a9a9a9")
      (builtin "#000000")
      (keyword "#000000")
      (const   "#000000")
      (comment "#5c5c5c")
      (func    "#000000")
      (str     "#05670c")
      (type    "#000000")
      (var     "#000000")
      (selection "#9ec9fc")
      (unspec   'unspecified))
  (custom-theme-set-faces
   'grey
   `(default ((,class (:background ,bg1 :foreground ,fg1))))

   `(font-lock-builtin-face ((,class (:foreground ,builtin))))
   `(font-lock-comment-face ((,class (:foreground ,comment))))
   `(font-lock-negation-char-face ((,class (:foreground ,const))))
   `(font-lock-constant-face ((,class (:foreground ,const))))
   `(font-lock-doc-face ((,class (:foreground ,comment))))
   `(font-lock-function-name-face ((,class (:foreground ,func ))))
   `(font-lock-keyword-face ((,class (:bold t :foreground ,keyword))))
   `(font-lock-string-face ((,class (:foreground ,str))))
   `(font-lock-type-face ((,class (:foreground ,type ))))
   `(font-lock-variable-name-face ((,class (:foreground ,var))))
   `(font-lock-preprocessor-face ((,class (:bold t :foreground ,builtin))))
   `(font-lock-regexp-face ((,class (:foreground ,str :underline t))))

   `(link ((,class (:foreground ,const :underline t))))
   `(region ((,class (:background ,selection))))
   `(highlight ((,class (:foreground ,fg3 :background ,bg3))))
   `(hl-line ((,class (:background  ,bg2))))
   `(fringe ((,class (:background ,bg2 :foreground ,fg4))))
   `(cursor ((,class (:background ,fg4))))
   `(vertical-border ((,class (:foreground ,fg3))))
   `(minibuffer-prompt ((,class (:bold t :foreground ,keyword))))

   `(show-paren-match ((,class (:foreground ,bg1 :background ,fg4))))
   `(show-paren-mismatch ((,class (:inherit error))))

   `(isearch ((,class (:bold t :foreground ,keyword :background ,selection))))
   `(lazy-highlight ((,class (:foreground ,fg2 :background ,bg3))))

   `(line-number ((t (:inherit fringe))))
   `(line-number-current-line ((t (:inherit fringe :foreground ,fg6 :weight bold))))

   `(mode-line ((,class (:box (:line-width 1 :color ,fg1) :foreground ,fg1 :background ,bg2))))
   `(mode-line-inactive ((,class
			  (:box (:line-width 1 :color ,fg4)
				:foreground ,fg4
				:background ,bg1
				:weight normal))))
   `(mode-line-buffer-id ((,class (:bold t :foreground ,func :background ,unspec))))
   `(mode-line-highlight ((,class (:foreground ,keyword :weight bold))))
   `(mode-line-emphasis ((,class (:foreground ,fg1))))

   `(elisp-shorthand-font-lock-face ((,class (:inherit font-lock-keyword-face))))

   `(magit-section-heading        ((,class (:foreground ,keyword :weight bold))))
   `(magit-section-highlight      ((,class (:background ,bg3))))
   `(magit-diff-hunk-heading           ((,class (:background ,bg2))))
   `(magit-diff-hunk-heading-highlight ((,class (:background ,bg3))))
   `(magit-diff-context-highlight ((,class (:background ,bg3 :foreground ,fg3))))
   `(magit-diffstat-added   ((,class (:foreground ,type))))
   `(magit-diffstat-removed ((,class (:foreground ,var))))
   `(magit-process-ok ((,class (:inherit success))))
   `(magit-process-ng ((,class (:inherit error))))
   `(magit-log-author ((,class (:foreground ,fg3))))
   `(magit-hash ((,class (:foreground ,fg2))))
   `(magit-diff-file-header ((,class (:foreground ,fg2 :background ,bg3))))

   `(web-mode-html-attr-name-face ((,class (:foreground ,func))))
   `(web-mode-html-tag-face ((,class (:foreground ,builtin))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'edn)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; grey-theme.el ends here
