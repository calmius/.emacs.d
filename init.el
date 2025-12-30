(require 'use-package)

(setq package-archive-priorities '(("gnu" . 10)
                                   ("melpa" . 5))
      package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://stable.melpa.org/packages/")
                         ("melpa-devel" . "https://melpa.org/packages/")))

(package-initialize)
(setq use-package-always-ensure t)

;; PATH
(add-to-list 'exec-path "~/.local/bin/")

;; Load module settings
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "lib" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "themes" user-emacs-directory))

;; View
(require 'lib-modeline)
(require 'lib-theme)
;; Controls
(require 'lib-xah)
;; Org
(require 'lib-gtd)
(require 'lib-org)
(require 'lib-roam)
;; Programming
(require 'lib-company)
(require 'lib-hugo)
(require 'lib-eglot)
;; (require 'lib-go)
;; (require 'lib-py)
;; Emacs
(require 'lib-compile)
(require 'lib-dired)

;; Extra packages which don't require lots of configuration
;; (use-package rainbow-mode)
;; (use-package lua-mode)
(use-package rainbow-delimiters :init (rainbow-delimiters-mode 1))
(use-package sudo-edit :bind ("s-e" . sudo-edit))
(use-package which-key :init (which-key-mode 1))
(use-package magit)
(use-package yaml-mode
  :mode
  ("\\.yaml\\'" "\\.yml\\'")
  :custom-face
  (font-lock-variable-name-face ((t (:foreground "#cba6f7"))))
  :config)

;; Programming
(use-package flycheck)

;; (setq python-shell-interpreter "/home/max/.local/bin/ipython")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(poet-dark))
 '(custom-safe-themes
   '("afde6368be6868e8e3dd53fad1ac51223d5484f9e6836496e7987802c9a9663d"
     default))
 '(package-selected-packages
   '(autothemer company-box dockerfile-mode doom-themes ef-themes
		eldoc-box elpy f flycheck fontaine go-mode ht lv magit
		markdown-mode mood-line olivetti org-modern
		org-roam-ui ox-hugo poet-theme py-autopep8 pydoc
		python-black rainbow-delimiters recompile-on-save
		smart-compile spinner sudo-edit yaml-mode yaml-pro)))
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
