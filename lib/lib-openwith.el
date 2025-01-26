(use-package openwith
  :config
  (openwith-mode t)
  (setq openwith-associations
        '(("\\.pdf\\'" "zathura" (file)))))

(provide 'lib-openwith)
