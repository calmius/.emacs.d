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
  (package-refresh-contents)
  (package-install 'use-package))

;;; This is the actual config file. It is omitted if it doesn't exist so emacs won't refuse to launch.
(when (file-readable-p "~/.emacs.d/config.org")
  (org-babel-load-file (expand-file-name "~/.emacs.d/config.org")))

(server-start)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(dorsey))
 '(custom-safe-themes
   '("b3406250e07be8929eab0c220a566f8b3fd5939ddd2a24c94e0d11e09c8f3c1b" "2fbee42afd6aba2cd40d876732a92f9659f4e6aadbcb4cb66422ef10d8a03e67" "90782f08a83d2ea7f18df1560d62f8f71fc66ae777e9928653ce897cfa920e5f" "31a685fb6526bec211c4eeee7875efcabfb68d7ff856d2676f444f15fb6edb79" "64b47ccd55587f89eced5e55c1b9d2b5878f986286ee24824d12a9403187bcc0" "73ab4336b69205ba30ab2cdbe7b7ed6e626763db340c17bd1d32f6ff7c2ed2ce" "a20493c5f24ed6ea8044469dd3945be5d0dbe635793ffd6b30ef68c5a75bea95" "1d83bc0d234be1674701e5bd7bf18b447fe727ecdabf634053c69e2a1c7baf15" "b858104528533d8cc0e6a74c669f21055bab2cc93bfbfcccce162de7e8e42323" "28e2979093b9f28d6899b93edc1b03a7e3d6cc1c49df1bbee6fa48933890eeeb" default))
 '(default
    ((t
      (:inherit nil :extend nil :stipple nil :background "#212121" :foreground "#FFFFFF" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "ADBO" :family "Iosevka Curly"))))
 '(display-fill-column-indicator nil)
 '(display-fill-column-indicator-mode-hook '(display-fill-column-indicator-mode-set-explicitly))
 '(global-display-fill-column-indicator-mode t)
 '(package-selected-packages
   '(sublime-themes company xah-fly-keys which-key use-package tablist sudo-edit ssh smart-compile recompile-on-save rainbow-mode rainbow-delimiters pretty-mode org-superstar org-super-agenda org-noter org-bullets openwith mindre-theme magit lsp-mode log4e ido-vertical-mode helpful go-mode gntp font-utils flycheck doom-themes doom-modeline doct diminish dashboard darktooth-theme color-theme-sanityinc-tomorrow auctex)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :background "#212121" :foreground "#FFFFFF" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "UKWN" :family "Iosevka Curly"))))
 '(doom-modeline-bar ((t (:background "gainsboro"))))
 '(doom-modeline-bar-inactive ((t (:background "#585858"))))
 '(hl-line ((t (:extend t :background "#282828"))))
 '(mode-line ((t (:background "#252525" :foreground "gainsboro" :height 0.9 :family "Iosevka Curly"))))
 '(mode-line-active ((t (:family "Iosevka Curly" :height 0.85))))
 '(mode-line-emphasis ((t (:weight normal))))
 '(mode-line-highlight ((t (:box (:line-width (2 . 2) :color "grey40" :style released-button)))))
 '(mode-line-inactive ((t (:background "#222" :foreground "dim gray" :height 0.937 :width normal :family "Iosevka Curly"))))
 '(warning ((t (:foreground "navajo white" :weight bold)))))
