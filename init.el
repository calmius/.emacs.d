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
 '(custom-enabled-themes '(doom-flatwhite))
 '(custom-safe-themes
   '("a9eeab09d61fef94084a95f82557e147d9630fbbb82a837f971f83e66e21e5ad"
     "7771c8496c10162220af0ca7b7e61459cb42d18c35ce272a63461c0fc1336015"
     "aec7b55f2a13307a55517fdf08438863d694550565dee23181d2ebd973ebd6b8"
     "38b43b865e2be4fe80a53d945218318d0075c5e01ddf102e9bec6e90d57e2134"
     "1f292969fc19ba45fbc6542ed54e58ab5ad3dbe41b70d8cb2d1f85c22d07e518"
     "7ec8fd456c0c117c99e3a3b16aaf09ed3fb91879f6601b1ea0eeaee9c6def5d9"
     "e1df746a4fa8ab920aafb96c39cd0ab0f1bac558eff34532f453bd32c687b9d6"
     "afde6368be6868e8e3dd53fad1ac51223d5484f9e6836496e7987802c9a9663d"
     default))
 '(org-agenda-files
   '("/home/max/Documents/org/managment/inbox.org"
     "/home/max/Documents/org/managment/agenda.org"
     "/home/max/Documents/org/managment/projects.org"
     "/home/max/Documents/org/managment/someday.org"))
 '(package-selected-packages
   '(all-the-icons ansible ansible-doc auctex auto-themer autothemer
		   company-box consult dashboard docker-mode
		   dockerfile-mode doom-modeline doom-themes eldoc-box
		   flycheck gitlab-ci-mode gitlab-ci-mode-flycheck
		   lua-mode magit marginalia mood-line
		   nerd-icons-completion nerd-icons-dired
		   nerd-icons-ibuffer nginx-mode olivetti orderless
		   org-modern org-roam-ui ox-hugo poet-theme pydoc
		   python-black pyvenv rainbow-delimiters rainbow-mode
		   recall recompile-on-save smart-compile sudo-edit
		   terraform-mode vertico yaml-mode)))
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
