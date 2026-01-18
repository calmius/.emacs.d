(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1))

;; Format used to display combined line/column numbers in the mode line. See `mode-line-position-column-line-format'.
(setq doom-modeline-modal nil)

;; (use-package mood-line
;;   ;; Enable mood-line
;;   :config
;;   (mood-line-mode))

;; (setq mood-line-glyph-alist mood-line-glyphs-unicode)

;; (setq mood-line-format
;;       (mood-line-defformat
;;        :left
;;        (((mood-line-segment-buffer-status) . "  ")
;;         ((mood-line-segment-buffer-name)   . "  ")
;; 	((mood-line-segment-scroll)             . " ")
;;         ((mood-line-segment-cursor-position)    . "  "))
;;        :right
;;        (((mood-line-segment-major-mode) . " ")
;;         ((when (mood-line-segment-checker) "|") . "  ")
;; 	((mood-line-segment-vc) . " ")
;;         ((mood-line-segment-checker)            . "  "))))

;; ;; Myna font on mood-line faces
;; (setq mood-line-glyph-alist mood-line-glyphs-fira-code)
;; (set-face-attribute 'mode-line nil :family "Myna")
;; (set-face-attribute 'mode-line-inactive nil :family "Myna")

(provide 'lib-modeline)
