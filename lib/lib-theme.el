;; Faces
(set-face-attribute 'default nil
		    :family "Iosevka Comfy"
		    :height 180)

(set-frame-parameter nil 'internal-border-width 5)
(set-frame-parameter nil 'alpha-background 90)
(set-fringe-mode 0)
;; Column indicator
(add-hook 'prog-mode 'display-fill-column-indicator-mode)
(add-hook 'go-mode 'display-fill-column-indicator-mode)

(set-fringe-mode 0)
(define-globalized-minor-mode olivetti-global-mode olivetti-mode
  (lambda () (unless (minibufferp)
	       (olivetti-mode 1))))
(olivetti-global-mode)

(provide 'lib-theme)
