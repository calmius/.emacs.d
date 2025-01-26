(use-package shr
  :ensure nil
  :defer t
  :config
  (setq shr-use-colors nil)             ; t is bad for accessibility
  (setq shr-use-fonts nil)              ; t is not for me
  (setq shr-max-image-proportion 0.6)
  (setq shr-image-animate nil)          ; No GIFs, thank you!
  ;; (setq shr-width fill-column)          ; check `prot-eww-readable'
  ;; (setq shr-max-width fill-column)
  (setq shr-discard-aria-hidden t)
  (setq shr-fill-text nil)              ; Emacs 31
  (setq shr-cookie-policy nil))

(use-package eww
  :ensure nil
  :commands (eww)
  :hook (eww-mode . olivetti-mode)
  :config
  ;; (setq eww-restore-desktop t)
  (setq eww-desktop-remove-duplicates t)
  (setq eww-header-line-format nil)
  (setq eww-search-prefix "https://duckduckgo.com/html/?q=")
  (setq eww-download-directory (expand-file-name "~/Documents/eww-downloads"))
  (setq eww-suggest-uris
        '(eww-links-at-point
          thing-at-point-url-at-point))
  (setq eww-bookmarks-directory (locate-user-emacs-file "eww-bookmarks/"))
  (setq eww-history-limit 150)
  (setq eww-use-external-browser-for-content-type
        "\\`\\(video/\\|audio\\)") ; On GNU/Linux check your mimeapps.list
  (setq eww-browse-url-new-window-is-tab nil)
  (setq eww-form-checkbox-selected-symbol "[X]")
  (setq eww-form-checkbox-symbol "[ ]")
  (setq eww-retrieve-command nil))

;; Prot extensions
(provide 'prot-eww)
(setq prot-eww-save-history-file
      (locate-user-emacs-file "prot-eww-visited-history"))
(setq prot-eww-save-visited-history t)
(setq prot-eww-bookmark-link nil)

(add-hook 'prot-eww-history-mode-hook #'hl-line-mode)

(provide 'lib-web)
