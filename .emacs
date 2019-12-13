(setq inhibit-startup-message t)
(menu-bar-mode 0)
(toggle-scroll-bar 0)
(tool-bar-mode 0)
(global-linum-mode 1)

(custom-set-variables
 '(fill-column 90)
 '(blink-cursor-mode nil)
 '(custom-enabled-themes '(wheatgrass)))

;; Install LaTeX editing functions
(load "~/latex-helpers.el")
(global-set-key (kbd "C-c f") 'insert-beamer-frame)
(global-set-key (kbd "C-c i") 'number-of-items)
(global-set-key (kbd "C-c p") 'total-points)

(setq default-directory "C:/users/jbusch/courses/2019-2020/")
