(use-package go-mode
  :hook ((go-mode . lsp-deferred)
         (go-mode . company-mode))
  :bind (:map go-mode-map
              ("<f5>" . gofmt))
  :config
  (require 'lsp-go)
  ;; GOPATH/bin
  (add-to-list 'exec-path "~/Programming/golang/bin")
  ;; add imports
  (setq gofmt-command "goimports"))

;; Format(fmt) file on save
(add-hook 'go-mode-hook
          (lambda ()
            (add-hook 'before-save-hook 'gofmt-before-save nil t)))

(provide 'lib-go)
