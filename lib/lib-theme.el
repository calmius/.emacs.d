;; (set-face-attribute 'default nil
;; 		    :family "Myna"
;; 		    :height 150)

(set-frame-parameter nil 'internal-border-width 5)
(set-frame-parameter nil 'alpha-background 89)
;; Hide title bar in DE
(set-frame-parameter nil 'undecorated t)
(set-fringe-mode 0)
(blink-cursor-mode 0)
;; Column indicator
(add-hook 'prog-mode 'display-fill-column-indicator-mode)
(add-hook 'go-mode 'display-fill-column-indicator-mode)

(use-package poet-theme)
(set-face-attribute 'default nil :family "Myna" :height 170)
(set-face-attribute 'fixed-pitch nil :family "Myna")
(set-face-attribute 'variable-pitch nil :family "Myna")

(custom-set-faces
 '(org-level-1 ((t (:height 1.2))))
 '(org-level-2 ((t (:height 1.15))))
 '(org-level-3 ((t (:height 1.1))))
 '(org-level-4 ((t (:height 1.05))))
 '(org-document-title ((t (:height 1.3)))))

(provide 'lib-theme)
