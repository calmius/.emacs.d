(use-package all-the-icons
(use-package all-the-icons
  :config
  ;; (setq all-the-icons-scale-factor 1.0)
  ;; (setq all-the-icons-default-adjust 0.0)
  ;; Alternatively, try different scaling factors
  (setq all-the-icons-scale-factor 1.2)
  (setq all-the-icons-default-adjust 0.2)
  :if (display-graphic-p))
(use-package all-the-icons-dired
  :hook (dired-mode . all-the-icons-dired-mode))
(use-package all-the-icons-ibuffer
  :init
  (setq all-the-icons-ibuffer-color-icon nil)
  (setq all-the-icons-ibuffer-human-readable-size t)
  :hook (ibuffer-mode . all-the-icons-ibuffer-mode))

(provide 'lib-icons)
