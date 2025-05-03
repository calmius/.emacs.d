;; Faces
(set-face-attribute 'default nil
		    :family "Iosevka Comfy"
		    :height 150)

(set-frame-parameter nil 'internal-border-width 5)
(set-frame-parameter nil 'alpha-background 50)
(set-fringe-mode 0)
;; Column indicator
(add-hook 'prog-mode 'display-fill-column-indicator-mode)
(add-hook 'go-mode 'display-fill-column-indicator-mode)

;; (define-globalized-minor-mode olivetti-global-mode olivetti-mode
;;   (lambda () (unless (minibufferp)
;; 	       (olivetti-mode 1))))
;; (olivetti-global-mode)

(provide 'lib-theme)
