(require 'package)
(setq package-enable-at-startup nil)

;;; remove SC if you are not using sunrise commander and org if you like outdated packages
(setq package-archives '(("ELPA"  . "http://tromey.com/elpa/")
			 ("gnu"   . "http://elpa.gnu.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")
			 ("org"   . "https://orgmode.org/elpa/")))
(package-initialize)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Bootstrapping use-package
(unless (package-installed-p 'use-package)
  (package-esh-contents)
  (package-install 'use-package))

;;; This is the actual config file. It is omitted if it doesn't exist so emacs won't refuse to launch.
(when (file-readable-p "~/.emacs.d/config.org")
  (org-babel-load-file (expand-file-name "~/.emacs.d/config.org")))

(setq fill-column 70)
(auto-fill-mode 1)

(server-start)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(rose-pine))
 '(default
   ((t
     (:inherit nil :extend nil :stipple nil :background "#212121" :foreground "#FFFFFF" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "ADBO" :family "Iosevka Curly"))))
 '(display-fill-column-indicator nil)
 '(display-fill-column-indicator-mode-hook '(display-fill-column-indicator-mode-set-explicitly))
 '(global-display-fill-column-indicator-mode t)
 '(lsp-modeline-code-actions-enable nil)
 '(package-selected-packages
   '(typescript-mode lua-mode sublime-themes company xah-fly-keys which-key use-package tablist sudo-edit ssh smart-compile recompile-on-save rainbow-mode rainbow-delimiters pretty-mode org-superstar org-super-agenda org-noter org-bullets openwith mindre-theme magit lsp-mode log4e ido-vertical-mode helpful go-mode gntp font-utils flycheck doom-themes doom-modeline diminish dashboard darktooth-theme color-theme-sanityinc-tomorrow auctex)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :foreground "#c5c8c6" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight regular :height 120 :width normal :foundry "PfEd" :family "Iosevka Curly"))))
 '(doom-modeline-bar ((t (:background "gainsboro"))))
 '(doom-modeline-bar-inactive ((t (:background "#585858"))))
 '(hl-line ((t (:extend t :background "gainsboro"))))
 '(warning ((t (:foreground "navajo white" :weight bold)))))

(put 'narrow-to-page 'disabled nil)
