(set-frame-parameter nil 'internal-border-width 5)
(set-frame-parameter nil 'alpha-background 93)
;; Hide title bar in DE
(add-to-list 'default-frame-alist '(undecorated . t))
(set-fringe-mode 0)
(blink-cursor-mode 0)
;; Column indicator
(add-hook 'prog-mode 'display-fill-column-indicator-mode)
(add-hook 'go-mode 'display-fill-column-indicator-mode)

;; Themes
(use-package autothemer)
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

(use-package modus-themes)
(use-package doom-themes)

(require 'cus-theme)

(with-eval-after-load "doom-flatwhite-theme"
  (custom-theme-set-faces
   'doom-flatwhite

   ;; purple / pink
   '(font-lock-keyword-face
     ((t (:foreground "#8a3f70"
          :background "#f4d7e8"))))

   ;; blue
   '(font-lock-variable-name-face
     ((t (:foreground "#3f668a"
          :background "#d9e5f0"))))

   ;; green
   '(font-lock-string-face
     ((t (:foreground "#56723f"
          :background "#e1ead8"))))))



(use-package poet-theme)

;; (set-face-attribute 'default nil :family "Ubuntu Mono" :height 150)
;; (set-face-attribute 'fixed-pitch nil :family "Ubuntu Mono")
;; (set-face-attribute 'variable-pitch nil :family "Ubuntu Mono")

(set-face-attribute 'default nil
                    :family "Comic Shanns Mono"
                    :height 150
                    :weight 'normal)

(set-face-attribute 'fixed-pitch nil
                    :family "Comic Shanns Mono"
                    :weight 'normal)

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
