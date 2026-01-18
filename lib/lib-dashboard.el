  (use-package dashboard
    :ensure t
    :config
    (dashboard-setup-startup-hook)
    (setq dashboard-startup-banner "~/.emacs.d/dashboard/emacs.png")
    (setq dashboard-banner-logo-title nil)
    (setq dashboard-set-init-info nil)
    (setq dashboard-center-content t)
    (setq dashboard-footer-messages
          (with-temp-buffer
            (insert-file-contents "~/.emacs.d/dashboard/quotes")
            (split-string (buffer-string) "\n" t)))
    (setq dashboard-items '((recents  . 3))))

(provide 'lib-dashboard)
