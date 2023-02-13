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

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(doom-tomorrow-night))
 '(custom-safe-themes
   '("7e377879cbd60c66b88e51fad480b3ab18d60847f31c435f15f5df18bdb18184" "60ada0ff6b91687f1a04cc17ad04119e59a7542644c7c59fc135909499400ab8" "49acd691c89118c0768c4fb9a333af33e3d2dca48e6f79787478757071d64e68" "5d82f1ce0401d4fdf25e86f0d163a3db65026a38e1449bfb8f6c3f583dc2f8d9" "ce4234c32262924c1d2f43e6b61312634938777071f1129c7cde3ebd4a3028da" "e3daa8f18440301f3e54f2093fe15f4fe951986a8628e98dcd781efbec7a46f2" "a589c43f8dd8761075a2d6b8d069fc985660e731ae26f6eddef7068fece8a414" default))
 '(org-agenda-files
   '("~/Docs/self/agenda/agenda.org" "/home/ethan/Docs/self/agenda/college.org"))
 '(package-selected-packages
   '(ssh flycheck lsp-mode auctex recompile-on-save smart-compile openwith org-pdftools doom-modeline doom-themes doct org-super-agenda sudo-edit org-bullets darktooth-theme nlinum pretty-mode dashboard rainbow-delimiters rainbow-mode ido-vertical-mode which-key xah-fly-keys))
 '(warning-suppress-log-types '((use-package)))
 '(warning-suppress-types '((use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit (default default default) :extend nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 150 :width normal :foundry "UKWN" :family "Iosevka Fixed SS01"))))
 '(doom-modeline-bar ((t (:background "#E74633"))))
 '(doom-modeline-boon-off-state ((t (:inherit doom-modeline-buffer-file :foreground "black"))))
 '(doom-modeline-buffer-major-mode ((t (:foreground "#E74633" :weight bold))))
 '(doom-modeline-buffer-path ((t (:inherit bold :foreground "#EBDBB2"))))
 '(mode-line ((t (:family "Iosevka Fixed SS01" :height 0.85))))
 '(mode-line-active ((t (:family "Iosevka Fixed SS01" :height 0.85))))
 '(mode-line-inactive ((t (:family "Iosevka Fixed SS01" :height 0.96)))))

;; (set-face-background hl-line-face "#313131")

(server-start)
