(use-package all-the-icons
  :if (display-graphic-p))
(use-package all-the-icons-dired
  :hook (dired-mode . all-the-icons-dired-mode))
(use-package all-the-icons-ibuffer
  :init
  (setq all-the-icons-ibuffer-color-icon nil)
  (setq all-the-icons-ibuffer-human-readable-size t)
  :hook (ibuffer-mode . all-the-icons-ibuffer-mode))

(provide 'lib-icons)
