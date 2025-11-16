;; 
(require 'use-package)

;; (setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ;; ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(setq package-archives
      '(("melpa" . "https://raw.githubusercontent.com/d12frosted/elpa-mirror/master/melpa/")
        ("org"   . "https://raw.githubusercontent.com/d12frosted/elpa-mirror/master/org/")
        ("gnu"   . "https://raw.githubusercontent.com/d12frosted/elpa-mirror/master/gnu/")))

(package-initialize)
(setq use-package-always-ensure t)

;; Extra packages which don't require lots of configuration
(use-package rainbow-delimiters :init (rainbow-delimiters-mode 1))
;; (use-package olivetti :custom (olivetti-body-width 80))
(use-package sudo-edit :bind ("s-e" . sudo-edit))
(use-package which-key :init (which-key-mode 1))
(use-package rainbow-mode)
(use-package lua-mode)
(use-package magit)
(use-package olivetti)
(use-package doom-themes)
;; Programming
(use-package flycheck)

;; Load module settings
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "lib" user-emacs-directory))

(require 'lib-modeline)
(require 'lib-openwith)
(require 'lib-company)
(require 'lib-compile)
(require 'lib-dired)
(require 'gptel)
;; (require 'lib-icons)
(require 'lib-theme)
(require 'lib-hugo)
(require 'lib-xah)
(require 'lib-lsp)
(require 'lib-web)
(require 'lib-sql)
(require 'lib-gtd)
(require 'lib-org)
(require 'lib-go)
(require 'lib-py)

(setq org-startup-with-inline-images t)

(org-babel-do-load-languages
    'org-babel-load-languages
        '(
            (shell . t)
            ;; Other languages...
        )
    )

(add-to-list 'exec-path "/.local/bin/")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(doom-gruvbox))
 '(custom-safe-themes
   '("f1e8339b04aef8f145dd4782d03499d9d716fdc0361319411ac2efc603249326"
     "4594d6b9753691142f02e67b8eb0fda7d12f6cc9f1299a49b819312d6addad1d"
     "7771c8496c10162220af0ca7b7e61459cb42d18c35ce272a63461c0fc1336015"
     "02d422e5b99f54bd4516d4157060b874d14552fe613ea7047c4a5cfa1288cf4f"
     default))
 '(org-agenda-files
   '("/sudo:root@localhost:/home/max/Documents/org/current.org"
     "/home/max/Documents/org/gtd/inbox.org"
     "/home/max/Documents/org/gtd/agenda.org"
     "/home/max/Documents/org/gtd/projects.org"
     "/home/max/Documents/org/gtd/someday.org"))
 '(package-selected-packages
   '(all-the-icons-dired all-the-icons-ibuffer ansible company
			 doom-themes flycheck go-mode gptel lsp-ui
			 lua-mode magit mood-line olivetti openwith
			 org-modern ox-hugo py-autopep8
			 rainbow-delimiters rainbow-mode recall
			 recompile-on-save smart-compile sudo-edit
			 yaml yaml-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
