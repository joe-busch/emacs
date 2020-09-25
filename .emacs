;; -*- mode: emacs-lisp -*-

;;; Tidy up the screen
(setq inhibit-startup-message t)
(menu-bar-mode 0)
(toggle-scroll-bar 0)
(tool-bar-mode 0)
(global-linum-mode 1)
(transient-mark-mode t)
(toggle-frame-maximized)

(custom-set-variables
 '(fill-column 110)
 '(blink-cursor-mode nil)
 '(custom-enabled-themes '(wheatgrass)))

(add-to-list 'default-frame-alist '(width . 120))
(add-to-list 'default-frame-alist '(height . 32))

;;; Set path, frequently-visited directory
(setq load-path (cons "~/" load-path))
(setq default-directory "C:/Users/jbusch/OneDrive - Westridge School For Girls/courses/2020-2021/")

;;; Install LaTeX editing functions
(load "latex-helpers")
