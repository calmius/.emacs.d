(use-package mood-line
  ;; Enable mood-line
  :config
  (mood-line-mode))

(setq mood-line-glyph-alist mood-line-glyphs-unicode)
(setq mood-line-format
      (mood-line-defformat
       :left
       (((mood-line-segment-buffer-status) . "  ")
        ((mood-line-segment-buffer-name)   . "  ")
	((mood-line-segment-scroll)             . " ")
        ((mood-line-segment-cursor-position)    . "  "))
       :right
       (((mood-line-segment-major-mode) . " ")
        ((when (mood-line-segment-checker) "|") . "  ")
        ((mood-line-segment-checker)            . "  "))))

(provide 'lib-modeline)
