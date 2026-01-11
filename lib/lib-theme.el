(set-frame-parameter nil 'internal-border-width 5)
(set-frame-parameter nil 'alpha-background 85)
;; Hide title bar in DE
(set-frame-parameter nil 'undecorated t)
(set-fringe-mode 0)
(blink-cursor-mode 0)
;; Column indicator
(add-hook 'prog-mode 'display-fill-column-indicator-mode)
(add-hook 'go-mode 'display-fill-column-indicator-mode)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

;; Themes
(use-package doom-themes)
(use-package poet-theme)
(set-face-attribute 'default nil :family "Myna" :height 150)
(set-face-attribute 'fixed-pitch nil :family "Myna")
(set-face-attribute 'variable-pitch nil :family "Myna")

;; Olivetti mode
(use-package olivetti :custom (olivetti-body-width 120))
(define-globalized-minor-mode olivetti-global-mode olivetti-mode
  (lambda () (unless (minibufferp)
	       (olivetti-mode 1))))
(olivetti-global-mode)


;; Org mode settings
(custom-set-faces
 '(org-level-1 ((t (:height 1.2))))
 '(org-level-2 ((t (:height 1.15))))
 '(org-level-3 ((t (:height 1.1))))
 '(org-level-4 ((t (:height 1.05))))
 '(org-document-title ((t (:height 1.3)))))

(provide 'lib-theme)

