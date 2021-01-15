(setq lexical-binding t)

(defun insert-beamer-frame (&optional align-top)
  "Creates a new frame in a LaTex beamer file"
  (interactive "P")
  (unless align-top
    (message "Add any prefix argument to align top."))
  (beginning-of-line)
  (insert "\\begin{frame}")
  (when align-top
    (insert "[t]"))
  (insert "\n\\frametitle{}\n\n\\end{frame}")
  (forward-line -2)
  (end-of-line)
  (backward-char))

(global-set-key (kbd "C-c f") 'insert-beamer-frame)


(defun number-of-items ()
  "Calculates the total number of \\item's in a document."
  (interactive)
  (defun count-items (acc)
    (if (re-search-forward "\\\\item" nil t)
	(count-items (1+ acc))
      acc))
  (save-excursion
    (goto-char (point-min))
    (let ((num-items (count-items 0)))
      (cond
       ((= num-items 0) (message "No \\item's."))
       ((= num-items 1) (message "1 \\item."))
       (t (message "%d \\item's." num-items))))))
	
(global-set-key (kbd "C-c i") 'number-of-items)


(defun total-points ()
  "Calculates the total number of points in an assessment."
  (interactive)
  (defun count-points (acc)
    (if (re-search-forward "\\([[:digit:]]+\\) points*)" nil t)
	(count-points (+ acc (string-to-int (match-string 1))))
      acc))
  (save-excursion 
    (goto-char (point-min))
    (let ((num-points (count-points 0)))
      (cond
       ((= num-points 0) (message "No points."))
       ((= num-points 1) (message "1 point."))
       (t (message "%d points." num-points))))))

(global-set-key (kbd "C-c p") 'total-points)
