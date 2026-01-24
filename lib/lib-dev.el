;; (require 'lib-go)
(require 'lib-py)
(require 'lib-eglot)
(require 'lib-company)

;; No config
(use-package flycheck)
(use-package magit)
(use-package lua-mode)
(use-package dockerfile-mode)

(use-package nginx-mode
  :mode
  ("\\.conf\\'" "\\.cfg\\'")
  :hook (nginx-mode . company-mode)  ;; Enable company-mode explicitly
)

(use-package yaml-mode
  :mode
  ("\\.yaml\\'" "\\.yml\\'")
  :hook (yaml-mode . company-mode)  ;; Enable company-mode explicitly
  ;; :custom-face
  ;; (font-lock-variable-name-face ((t (:foreground "#"))))
  )

(use-package ansible)
(add-hook 'yaml-mode-hook '(lambda () (ansible-mode 1)))
(use-package ansible-doc)
(add-hook 'yaml-mode-hook #'ansible-doc-mode)

(use-package terraform-mode
  :custom (terraform-indent-level 4)
  :config
  (defun my-terraform-mode-init ()
    ;; if you want to use outline-minor-mode
    ;; (outline-minor-mode 1)
    )
  (add-hook 'terraform-mode-hook 'my-terraform-mode-init))

(use-package dtrt-indent
  :ensure t
  :commands (dtrt-indent-global-mode
             dtrt-indent-mode
             dtrt-indent-adapt
             dtrt-indent-undo
             dtrt-indent-diagnosis
             dtrt-indent-highlight)
  :config
  (dtrt-indent-global-mode))

(use-package indent-bars
  :hook ((yaml-mode . indent-bars-mode)
         (yaml-ts-mode . indent-bars-mode)
         (python-mode . indent-bars-mode)
         (python-ts-mode . indent-bars-mode))
  :custom
  (indent-bars-prefer-character t))

(provide 'lib-dev)
