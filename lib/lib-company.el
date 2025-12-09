(use-package company
  :hook ((prog-mode . company-mode))
  :bind (:map company-active-map
              ("<return>" . nil)
              ("RET" . nil)
              ("C-<return>" . company-complete-selection)
              ([tab] . company-complete-selection)
              ("TAB" . company-complete-selection)))

(use-package company-box
  :hook (company-mode . company-box-mode))


(provide 'lib-company)


