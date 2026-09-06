(use-package eglot
  :init
  :hook
  ((python-mode . eglot-ensure)
   (go-mode . eglot-ensure)
   (nginx-mode . eglot-ensure)
   (ansible-mode . eglot-ensure))

  :config

  ;; Python
  (add-to-list 'eglot-server-programs
               `(python-mode
                 . ,(eglot-alternatives '(;;("pyright-langserver" "--stdio")
                                          "jedi-language-server"
                                          "pylsp"))))

  ;; Other
  (add-to-list 'eglot-server-programs `(nginx-mode . ("nginx-language-server")))
  (add-to-list 'eglot-server-programs `(yaml-mode . ("ansible-language-server", "--stdio"))))



;; Golang
(setq-default eglot-workspace-configuration
	      '((:gopls .
			((staticcheck . t)
			 (matcher . "CaseSensitive")))))


(defun eglot-format-buffer-before-save ()
  (add-hook 'before-save-hook #'eglot-format-buffer -10 t))
(add-hook 'go-mode-hook #'eglot-format-buffer-before-save)

(use-package eldoc-box
  :hook ((prog-mode . eldoc-box-hover-mode)
         (prog-mode . eldoc-box-hover-at-point-mode)))

(provide 'lib-eglot)
