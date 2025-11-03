(require 'tramp)
(use-package ssh
  :ensure t)
(add-hook 'ssh-mode-hook
          (lambda ()
            (setq ssh-directory-tracking-mode t)
            (shell-dirtrack-mode t)
            (setq dirtrackp nil)))

(setq tramp-default-method "plink")
(setq tramp-plink-options '("-ssh" "-batch" "-agent"))

(setq auth-source-cache-expiry 'nil)


;; (setq auth-sources '("~/.config/my-authinfo.gpg"))

;; (when (eq system-type 'windows-nt)

;; (setq tramp-persistency-file-name "~/.emacs.d/tramp")
;; (setq tramp-default-method "plink")

;; (setq auth-source-cache-expiry 3600)  ; Cache for 1 hour
;; (setq auth-source-do-cache t)



;; For plink with TRAMP
;; (setq tramp-default-method "plink")
;; Enable password caching
;; (setq auth-source-do-cache t)
;; (setq auth-source-cache-expiry 3600)

  ;; ;; Add the '-tt' flag to the login arguments for "ssh" ONLY
  ;; (push '("-tt")
  ;;       (cadr (assoc 'tramp-login-args
  ;;                    (assoc "ssh" tramp-methods)))))

(provide 'lib-ssh)
