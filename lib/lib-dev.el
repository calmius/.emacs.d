;; (require 'lib-go)
(require 'lib-py)
(require 'lib-eglot)

(use-package flycheck)

(use-package magit)

(use-package lua-mode)

(use-package dockerfile-mode)

(use-package yaml-mode
  :mode
  ("\\.yaml\\'" "\\.yml\\'")
  ;; :custom-face
  ;; (font-lock-variable-name-face ((t (:foreground "#"))))
  :config)

(use-package terraform-mode
  :custom (terraform-indent-level 4)
  :config
  (defun my-terraform-mode-init ()
    ;; if you want to use outline-minor-mode
    ;; (outline-minor-mode 1)
    )

  (add-hook 'terraform-mode-hook 'my-terraform-mode-init))

(provide 'lib-dev)
