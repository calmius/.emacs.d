(use-package lsp-mode
  :bind (:map lsp-mode-map
              ("C-c d" . lsp-describe-thing-at-point)
              ("C-c j" . lsp-find-definition))
  :config
  (lsp-enable-which-key-integration t))

(setq lsp-go-use-placeholders t)
(setq lsp-go-complete-unimported t)
(setq lsp-modeline-code-actions-enable nil)
(setq lsp-headerline-breadcrumb-enable nil)

(use-package lsp-ui
  :hook (lsp-mode . lsp-ui-mode)
  :config 
  (setq lsp-ui-doc-enable t
        lsp-ui-doc-show-with-cursor t
        lsp-ui-doc-position 'at-point))

(provide 'lib-lsp)

