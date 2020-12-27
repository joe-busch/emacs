;; -*- mode: emacs-lisp -*-

;;; Tidy up the screen
(setq inhibit-startup-message t)
(menu-bar-mode 0)
(toggle-scroll-bar 0)
(tool-bar-mode 0)
(global-linum-mode 1)
(transient-mark-mode t)

(custom-set-variables
 '(blink-cursor-mode nil)
 '(custom-enabled-themes (quote (wheatgrass)))
 '(fill-column 80)
 '(package-selected-packages
   (quote
    (paredit yasnippet-snippets find-file-in-project elpy slime))))

(add-to-list 'default-frame-alist '(width . 120))
(add-to-list 'default-frame-alist '(height . 32))

;;; Set path, frequently-visited directory
(setq load-path (cons "~/" load-path))
(setq default-directory "C:/Users/jbusch/OneDrive - Westridge School For Girls/courses/2020-2021/")

;;; Install LaTeX editing functions
(load "latex-helpers")

(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

;;; Load elpy for Python development
(elpy-enable)

(setq inferior-lisp-program "/usr/bin/sbcl")
