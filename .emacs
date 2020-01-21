;; -*- mode: emacs-lisp -*-

;;; Tidy up the screen
(setq inhibit-startup-message t)
(menu-bar-mode 0)
(toggle-scroll-bar 0)
(tool-bar-mode 0)
(global-linum-mode 1)
(transient-mark-mode t)

(custom-set-variables
 '(fill-column 110)
 '(blink-cursor-mode nil)
 '(custom-enabled-themes '(wheatgrass)))

;;; Set path, frequently-visited directory
(setq load-path (cons "~/" load-path))
(setq default-directory "C:/users/jbusch/courses/2019-2020/")

;;; Install LaTeX editing functions
(load "latex-helpers")
