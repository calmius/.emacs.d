(setq dired-listing-switches "-alhv")  ; -a to include hidden files, -l for long format, -h for human-readable sizes

;; Sort
(defun xah-dired-sort ()
  (interactive)
  (let (xsortBy xarg)
    (setq xsortBy (completing-read "Sort by: " '( "date" "size" "name" )))
    (cond
     ((equal xsortBy "name") (setq xarg "-Alhv "))
     ((equal xsortBy "date") (setq xarg "-Alh -t"))
     ((equal xsortBy "size") (setq xarg "-Alh -S"))
     ((equal xsortBy "dir") (setq xarg "-Al --group-directories-first"))
     (t (error "logic error 09535" )))
    (dired-sort-other xarg )))
(require 'dired)
(define-key dired-mode-map (kbd "s") 'xah-dired-sort)

;; Use the same buffer for viewing dirs
(when (>= emacs-major-version 28)
  (setq dired-kill-when-opening-new-dired-buffer t))

(when (< emacs-major-version 28)
  (progn
    (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file) ; was dired-advertised-find-file
    (define-key dired-mode-map (kbd "^") (lambda () (interactive) (find-alternate-file ".."))) ; was dired-up-directory
    ))

(provide 'lib-dired)
