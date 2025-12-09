(use-package eglot
  :init
  :hook
  ((python-mode . eglot-ensure)
         (go-mode . eglot-ensure))
  :config
  (add-to-list 'eglot-server-programs
               `(python-mode
                 . ,(eglot-alternatives '(("pyright-langserver" "--stdio")
                                          "jedi-language-server"
                                          "pylsp")))))

(use-package eldoc-box
  :config
  (setq eldoc-box-hover-mode t)
  (setq eldoc-box-hover-at-point-mode t))

(provide 'lib-eglot)
