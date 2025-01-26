(require 'ansi-color)
(defun colorize-compilation-buffer ()
  "Apply ANSI color codes in the *compilation* buffer."
  (let ((inhibit-read-only t))
    (ansi-color-apply-on-region (point-min) (point-max))))
(add-hook 'compilation-filter-hook 'colorize-compilation-buffer)

(use-package recompile-on-save )
(recompile-on-save-advice compile)
(use-package smart-compile
  :bind
  ("C-u" . smart-compile))

(provide 'lib-compile)
