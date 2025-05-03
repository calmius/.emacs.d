;; 
(require 'use-package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("elpa" . "https://elpa.gnu.org/packages/")
			 ("org"   . "https://orgmode.org/elpa/")))
(package-initialize)
(setq use-package-always-ensure t)

;; Extra packages which don't require lots of configuration
(use-package rainbow-delimiters :init (rainbow-delimiters-mode 1))
;; (use-package olivetti :custom (olivetti-body-width 80))
(use-package sudo-edit :bind ("s-e" . sudo-edit))
(use-package which-key :init (which-key-mode 1))
(use-package rainbow-mode)
(use-package lua-mode)
(use-package flycheck)
(use-package magit)

;; Load module settings
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "lib" user-emacs-directory))

(require 'lib-modeline)
(require 'lib-openwith)
(require 'lib-company)
(require 'lib-compile)
(require 'lib-dired)
(require 'lib-icons)
(require 'lib-theme)
(require 'lib-hugo)
(require 'lib-xah)
(require 'lib-lsp)
(require 'lib-web)
(require 'lib-sql)
(require 'lib-gtd)
(require 'lib-org)
(require 'lib-go)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
