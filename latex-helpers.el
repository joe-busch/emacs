(defun insert-beamer-frame ()
  "Creates a new frame in a LaTex beamer file"
  (interactive)
  (beginning-of-line)
  (insert "\\begin{frame}\n\\frametitle{}\n\n\\end{frame}")
  (previous-line 2)
  (forward-char))

(defun number-of-items ()
  "Calculates the total number of \\item's in a document."
  (interactive)
  (defun count-items (acc) ;; tail recursively accumulate total \item's
    (if (re-search-forward "\\\\item" nil t)
	(count-items (1+ acc))
      acc))
  (save-excursion
    (goto-char (point-min))
    (let ((i (count-items 0)))
      (cond
       ((= i 0) (message "No items."))
       ((= i 1) (message "1 item."))
       (t (message "%s \\item's." i))))))
	
(defun total-points ()
  "Calculates the total number of points in an assessment."
  (interactive)
  (defun count-points (acc) ;; tail recursively accumulate total points
    (if (re-search-forward "\\([[:digit:]]+\\) points*)" nil t)
	(count-points (+ acc (string-to-int (match-string 1))))
      acc))
  (save-excursion 
    (goto-char (point-min))
    (let ((p (count-points 0)))
      (cond
       ((= p 0) (message "No points."))
       ((= p 1) (message "1 point."))
       (t (message "%s points." p))))))

(global-set-key (kbd "C-c f") 'insert-beamer-frame)
(global-set-key (kbd "C-c i") 'number-of-items)
(global-set-key (kbd "C-c p") 'total-points)
