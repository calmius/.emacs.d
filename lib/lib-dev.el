(require 'lib-go)
(require 'lib-py)

(use-package flycheck)

(use-package magit)

(use-package lua-mode)

(use-package yaml-mode
  :mode
  ("\\.yaml\\'" "\\.yml\\'")
  :custom-face
  (font-lock-variable-name-face ((t (:foreground "#cba6f7"))))
  :config)

(use-package terraform-mode
  ;; if using straight
  ;; :straight t

  ;; if using package.el
  ;; :ensure t
  :custom (terraform-indent-level 4)
  :config
  (defun my-terraform-mode-init ()
    ;; if you want to use outline-minor-mode
    ;; (outline-minor-mode 1)
    )

  (add-hook 'terraform-mode-hook 'my-terraform-mode-init))

(provide 'lib-dev)
