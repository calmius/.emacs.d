;; Faces
(set-face-attribute 'default nil
		    :family "Myna"
		    :height 130)

(set-frame-parameter nil 'internal-border-width 5)
(set-frame-parameter nil 'alpha-background 97)
(set-fringe-mode 0)
(blink-cursor-mode 0)

;; Column indicator
(add-hook 'prog-mode 'display-fill-column-indicator-mode)
(add-hook 'go-mode 'display-fill-column-indicator-mode)

(use-package ef-themes
  :ensure t
  :config
  ;; All customisations here.
  (setq modus-themes-mixed-fonts t)
  (setq modus-themes-italic-constructs t)
  (modus-themes-load-theme 'ef-dream))

(provide 'lib-theme)
