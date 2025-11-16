;; 
(require 'use-package)

(setq package-archive-priorities '(("gnu" . 10)
                                   ("melpa" . 5))
      package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://stable.melpa.org/packages/")
                         ("melpa-devel" . "https://melpa.org/packages/")))

(package-initialize)
(setq use-package-always-ensure t)

;; ;; Extra packages which don't require lots of configuration
;; (use-package rainbow-mode)
;; (use-package olivetti :custom (olivetti-body-width 80))
;; (use-package lua-mode)
(use-package rainbow-delimiters :init (rainbow-delimiters-mode 1))
(use-package sudo-edit :bind ("s-e" . sudo-edit))
(use-package which-key :init (which-key-mode 1))
(use-package magit)
;; Programming
(use-package flycheck)

;; Load module settings
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "lib" user-emacs-directory))

;; View
(require 'lib-modeline)
(require 'lib-theme)
;; Controls
(require 'lib-xah)
;; Org
(require 'lib-gtd)
(require 'lib-org)
;; Programming
(require 'lib-company)
(require 'lib-hugo)
(require 'lib-lsp)
(require 'lib-go)
(require 'lib-py)
;; Emacs
(require 'lib-compile)
(require 'lib-dired)
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
