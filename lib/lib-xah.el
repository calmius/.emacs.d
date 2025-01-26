(require 'xah-fly-keys-org)
(require 'xah-fly-keys)
(xah-fly-keys-set-layout "colemak-dh")
(setq xah-fly-use-meta-key nil)
(xah-fly-keys 1)

;;; Custom settingt

(define-key xah-fly-leader-key-map (kbd "y r") 'async-shell-command)
(define-key xah-fly-leader-key-map (kbd "y s") 'shell-command)
(define-key xah-fly-leader-key-map (kbd "y w") 'kmacro-start-macro)
(define-key xah-fly-leader-key-map (kbd "y f") 'call-last-kbd-macro)
(define-key xah-fly-leader-key-map (kbd "y p") 'kmacro-end-macro)
(define-key xah-fly-leader-key-map (kbd "u g") 'rgrep)
(define-key xah-fly-leader-key-map (kbd "i s") 'magit)
(define-key xah-fly-leader-key-map (kbd "y a") 'compile)
;; Disable functions
(define-key xah-fly-leader-key-map (kbd "i l") 'nil)

;;; Escape key

(progn
  (defun xah-fly-keys-escape ()
    (interactive)
    (when (region-active-p)
      (deactivate-mark))
    (when (active-minibuffer-window)
      (abort-recursive-edit)))

  (define-key xah-fly-command-map (kbd "<escape>") 'xah-fly-keys-escape))

(progn
  (defvar xah-fly-keys-fast-keyseq-timeout 200)

  (defun xah-fly-keys-tty-ESC-filter (map)
    (if (and (equal (this-single-command-keys) [?\e])
             (sit-for (/ xah-fly-keys-fast-keyseq-timeout 1000.0)))
        [escape] map))

  (defun xah-fly-keys-lookup-key (map key)
    (catch 'found
      (map-keymap (lambda (k b) (if (equal key k) (throw 'found b))) map)))

  (defun xah-fly-keys-catch-tty-ESC ()
    "Setup key mappings of current terminal to turn a tty's ESC into
`escape'."
    (when (memq (terminal-live-p (frame-terminal)) '(t pc))
      (let ((esc-binding (xah-fly-keys-lookup-key input-decode-map ?\e)))
        (define-key input-decode-map
          [?\e] `(menu-item "" ,esc-binding :filter xah-fly-keys-tty-ESC-filter)))))

  (xah-fly-keys-catch-tty-ESC)
  (define-key key-translation-map (kbd "ESC") (kbd "<escape>")))

(provide 'lib-xah)
