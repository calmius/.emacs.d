(use-package eglot
  :init
  :hook
  ((python-mode . eglot-ensure)
   (go-mode . eglot-ensure))
  :config
  (add-to-list 'eglot-server-programs
               `(python-mode
                 . ,(eglot-alternatives '(;;("pyright-langserver" "--stdio")
                                          "jedi-language-server"
                                          "pylsp")))))

(use-package eldoc-box
  :hook ((prog-mode . eldoc-box-hover-mode)
         (prog-mode . eldoc-box-hover-at-point-mode)))

  (provide 'lib-eglot)
