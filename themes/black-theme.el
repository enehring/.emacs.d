;; -*- lexical-binding: t; -*-

;;; black-theme.el --- Theme

;; Copyright (C) 2025 , Evan Nehring

;; Author: Evan Nehring
;; Version: 0.1
;; Package-Requires: ((emacs "24.1"))
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
;;; black theme created by Evan Nehring in 2025

;;; Code:

(deftheme black)
(let ((class '((class color) (min-colors 89)))
      (fg1 "#d4d4d4")
      (fg2 "#c3c3c3")
      (fg3 "#b2b2b2")
      (fg4 "#a1a1a1")
      (fg6 "#dedede")
      (bg1 "#000000")
      (bg2 "#141414")
      (bg3 "#292929")
      (bg4 "#3d3d3d")
      (builtin "#d4d4d4")
      (keyword "#d4d4d4")
      (const   "#d4d4d4")
      (comment "#808080")
      (func    "#d4d4d4")
      (str     "#22aa32")
      (type    "#d4d4d4")
      (var     "#d4d4d4")
      (selection "#000099")
      (warning   "#ff0000")
      (warning2  "#ff8800")
      (unspec   'unspecified))
  (custom-theme-set-faces
   'black
   `(default ((,class (:background ,bg1 :foreground ,fg1))))

   `(font-lock-builtin-face ((,class (:foreground ,builtin))))
   `(font-lock-comment-face ((,class (:foreground ,comment))))
   `(font-lock-negation-char-face ((,class (:foreground ,const))))
   `(font-lock-reference-face ((,class (:foreground ,const))))
   `(font-lock-constant-face ((,class (:foreground ,const))))
   `(font-lock-doc-face ((,class (:foreground ,comment))))
   `(font-lock-function-name-face ((,class (:foreground ,func ))))
   `(font-lock-keyword-face ((,class (:bold ,class :foreground ,keyword))))
   `(font-lock-string-face ((,class (:foreground ,str))))
   `(font-lock-type-face ((,class (:foreground ,type ))))
   `(font-lock-variable-name-face ((,class (:foreground ,var))))
   `(font-lock-warning-face ((,class (:foreground ,warning ))))
   `(font-lock-preprocessor-face ((,class (:bold t :foreground ,builtin))))
   `(font-lock-regexp-face ((,class (:inherit font-lock-string-face :underline t))))

   `(show-paren-match ((,class (:foreground ,bg1 :background ,str))))
   `(show-paren-mismatch ((,class (:foreground ,bg1 :background ,warning))))

   `(region ((,class (:background ,selection))))
   `(highlight ((,class (:foreground ,fg3 :background ,bg3))))
   `(hl-line ((,class (:background  ,bg2))))
   `(fringe ((,class (:background ,bg2 :foreground ,fg4))))
   `(cursor ((,class (:background ,fg4))))
   `(isearch ((,class (:bold t :foreground ,warning :background ,bg3))))

   `(line-number ((t (:inherit fringe))))
   `(line-number-current-line ((t (:inherit fringe :foreground ,fg6 :weight bold))))

   `(mode-line ((,class (:box (:line-width 1 :color nil) :bold t :foreground ,fg4 :background ,bg2))))
   `(mode-line-inactive ((,class (:box
				  (:line-width 1 :color nil :style pressed-button)
				  :foreground ,fg4 :background ,bg1 :weight normal))))
   `(mode-line-buffer-id ((,class (:bold t :foreground ,func :background ,unspec))))
   `(mode-line-highlight ((,class (:foreground ,keyword :box nil :weight bold))))
   `(mode-line-emphasis ((,class (:foreground ,fg1))))

   `(vertical-border ((,class (:foreground ,fg3))))
   `(minibuffer-prompt ((,class (:bold t :foreground ,keyword))))
   `(default-italic ((,class (:italic t))))
   `(link ((,class (:foreground ,const :underline t))))

   `(tab-line              ((,class (:background ,bg2 :foreground ,fg4))))
   `(tab-line-tab          ((,class (:inherit tab-line))))
   `(tab-line-tab-inactive ((,class (:background ,bg2 :foreground ,fg4))))
   `(tab-line-tab-current  ((,class (:background ,bg1 :foreground ,fg1))))
   `(tab-line-highlight    ((,class (:background ,bg1 :foreground ,fg2))))
   `(tab-line-tab-modified ((,class (:foreground ,warning2 :weight bold))))

   `(org-code ((,class (:foreground ,fg2))))
   `(org-hide ((,class (:foreground ,fg4))))
   `(org-level-1 ((,class (:bold t :foreground ,fg2 :height 1.1))))
   `(org-level-2 ((,class (:bold nil :foreground ,fg3))))
   `(org-level-3 ((,class (:bold t :foreground ,fg4))))
   `(org-level-4 ((,class (:bold nil :foreground ,bg4))))
   `(org-date ((,class (:underline t :foreground ,var) )))
   `(org-footnote  ((,class (:underline t :foreground ,fg4))))
   `(org-link ((,class (:underline t :foreground ,type ))))
   `(org-special-keyword ((,class (:foreground ,func))))
   `(org-block ((,class (:foreground ,fg3))))
   `(org-quote ((,class (:inherit org-block :slant italic))))
   `(org-verse ((,class (:inherit org-block :slant italic))))
   `(org-todo ((,class (:box (:line-width 1 :color ,fg3) :foreground ,keyword :bold t))))
   `(org-done ((,class (:box (:line-width 1 :color ,bg3) :bold t :foreground ,bg4))))
   `(org-warning ((,class (:underline t :foreground ,warning))))
   `(org-agenda-structure ((,class (:weight bold :foreground ,fg3 :box (:color ,fg4) :background ,bg3))))
   `(org-agenda-date ((,class (:foreground ,var :height 1.1 ))))
   `(org-agenda-date-weekend ((,class (:weight normal :foreground ,fg4))))
   `(org-agenda-date-today ((,class (:weight bold :foreground ,keyword :height 1.4))))
   `(org-agenda-done ((,class (:foreground ,bg4))))
   `(org-scheduled ((,class (:foreground ,type))))
   `(org-scheduled-today ((,class (:foreground ,func :weight bold :height 1.2))))
   `(org-ellipsis ((,class (:foreground ,builtin))))
   `(org-verbatim ((,class (:foreground ,fg4))))
   `(org-document-info-keyword ((,class (:foreground ,func))))
   `(org-sexp-date ((,class (:foreground ,fg4))))

   `(gnus-header-content ((,class (:foreground ,keyword))))
   `(gnus-header-from ((,class (:foreground ,var))))
   `(gnus-header-name ((,class (:foreground ,type))))
   `(gnus-header-subject ((,class (:foreground ,func :bold t))))

   `(ffap ((,class (:foreground ,fg4))))

   `(warning ((,class (:foreground ,warning))))
   `(ac-completion-face ((,class (:underline t :foreground ,keyword))))

   `(icompletep-determined ((,class :foreground ,builtin)))

   `(trailing-whitespace ((,class :foreground ,unspec :background ,warning)))

   `(magit-item-highlight ((,class :background ,bg3)))
   `(magit-section-heading        ((,class (:foreground ,keyword :weight bold))))
   `(magit-hunk-heading           ((,class (:background ,bg3))))
   `(magit-section-highlight      ((,class (:background ,bg2))))
   `(magit-hunk-heading-highlight ((,class (:background ,bg3))))
   `(magit-diff-context-highlight ((,class (:background ,bg3 :foreground ,fg3))))
   `(magit-diffstat-added   ((,class (:foreground ,type))))
   `(magit-diffstat-removed ((,class (:foreground ,var))))
   `(magit-process-ok ((,class (:foreground ,func :weight bold))))
   `(magit-process-ng ((,class (:foreground ,warning :weight bold))))
   `(magit-branch ((,class (:foreground ,const :weight bold))))
   `(magit-log-author ((,class (:foreground ,fg3))))
   `(magit-hash ((,class (:foreground ,fg2))))
   `(magit-diff-file-header ((,class (:foreground ,fg2 :background ,bg3))))

   `(lazy-highlight ((,class (:foreground ,fg2 :background ,bg3))))

   `(term ((,class (:foreground ,fg1 :background ,bg1))))
   `(term-color-black ((,class (:foreground ,bg3 :background ,bg3))))
   `(term-color-blue ((,class (:foreground ,func :background ,func))))
   `(term-color-red ((,class (:foreground ,keyword :background ,bg3))))
   `(term-color-green ((,class (:foreground ,type :background ,bg3))))
   `(term-color-yellow ((,class (:foreground ,var :background ,var))))
   `(term-color-magenta ((,class (:foreground ,builtin :background ,builtin))))
   `(term-color-cyan ((,class (:foreground ,str :background ,str))))
   `(term-color-white ((,class (:foreground ,fg2 :background ,fg2))))

   `(web-mode-html-attr-name-face ((,class (:foreground ,func))))
   `(web-mode-html-tag-face ((,class (:foreground ,builtin))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'black)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; black-theme.el ends here
