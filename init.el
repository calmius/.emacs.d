(require 'use-package)

(setq package-archive-priorities '(("gnu" . 10)
                                   ("melpa" . 5))
      package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

(package-initialize)
(setq use-package-always-ensure t)

;; PATH
(add-to-list 'exec-path "~/.local/bin/")

;; Load module settings
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "lib" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "themes" user-emacs-directory))

;; View
(require 'lib-dashboard)
(require 'lib-icons)
(require 'lib-modeline)
(require 'lib-theme)
;; Controls
(require 'lib-xah)
;; Org
(require 'lib-org)
(require 'lib-gtd)
(require 'lib-roam)
;; Programming
(require 'lib-dev)
;; Other
(require 'lib-latex)
(require 'lib-recall)
(require 'lib-completion)
(require 'lib-consult)
(require 'lib-compile)
(require 'lib-dired)

;; Extra packages which don't require lots of configuration
(use-package rainbow-mode)
(use-package rainbow-delimiters :init (rainbow-delimiters-mode 1))
(use-package sudo-edit :bind ("s-e" . sudo-edit))
(use-package which-key :init (which-key-mode 1))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(doom-tomorrow-night))
 '(custom-safe-themes
   '("7771c8496c10162220af0ca7b7e61459cb42d18c35ce272a63461c0fc1336015" default))
 '(org-agenda-files nil)
 '(package-selected-packages
   '(go-mode modus-themes which-key sudo-edit rainbow-delimiters rainbow-mode smart-compile recompile-on-save consult marginalia orderless vertico recall auctex indent-bars dtrt-indent terraform-mode ansible-doc ansible yaml-mode nginx-mode dockerfile-mode lua-mode magit flycheck org-roam-ui pyvenv python-black poet-theme org-roam org-modern olivetti nerd-icons-ibuffer nerd-icons-dired nerd-icons-completion eldoc-box doom-themes doom-modeline dashboard company-box autothemer)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-document-title ((t (:height 1.3))))
 '(org-level-1 ((t (:height 1.2))))
 '(org-level-2 ((t (:height 1.15))))
 '(org-level-3 ((t (:height 1.1))))
 '(org-level-4 ((t (:height 1.05)))))
