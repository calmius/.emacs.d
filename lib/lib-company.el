(use-package company
  :config
  (company-tng-configure-default)
  (setq company-idle-delay 0.1
        company-minimum-prefix-lenght 1))

(provide 'lib-company)
