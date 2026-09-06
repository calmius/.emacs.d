(use-package go-mode
  :hook ((go-mode . company-mode))
  :bind (:map go-mode-map
              ("C-c d" . godoc-at-point))
  :config
  (setq gofmt-command "goimports")


  ;; :bind (:map go-mode-map
  ;;             ("<f5>" . gofmt))
  :config
  ;; (require 'lsp-go)
  ;; GOPATH/bin
  ;; (add-to-list 'exec-path "~/.local/bin")
  ;; add imports
  (setq gofmt-command "goimports"))

;; ;; Format(fmt) file on save
;; (add-hook 'go-mode-hook
;;           (lambda ()
;;             (add-hook 'before-save-hook 'gofmt-before-save nil t)))

(provide 'lib-go)
