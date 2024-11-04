;; -*- coding: utf-8; lexical-binding: t; -*-

;; file name: xahemacs_org_mode_keys.el
;; Created: 2024-04-23
;; Version: 2024-08-18
;; URL: http://xahlee.info/emacs/misc/xah-fly-keys_org_mode.html

;; save this file
;; and in your emacs init file, put
;; (load "path to xahemacs_org_mode_keys")

(defvar xah-major-leader-key nil "Global leader key for major modes.
Value is a string, in the same format as printed by `describe-key'.
e.g. \"TAB\" \"<f9>\" \"C-c\".")

(when (not xah-major-leader-key)
  (setq xah-major-leader-key "TAB"))

(defvar xah-org-leader-map nil "A keymap for all `org-mode' keybinding.")

(eval-when-compile
  (defun xah-set-org-mode-keys ()
    "Config `org-mode'.
Created: 2024-03-03
Version: 2024-04-30"
    (interactive)

    ;; 2024-03-03 originally, the keys are mostly same as org-mode's default, by simply replacing C-c with TAB, as much as possible. e.g. 【C-c C-‹key›】 is now 【leader ‹key›】
    ;; but is gradually improved by changing them, so they no longer corresponding to ord-mode's original keys

    ;; 2024-04-30 xtodo
    ;; these keys needs to be improved. i need some heavy org mode user to help.
    ;; if you make a lot improvement, post to github, let me know.

    ;; • make most frequently used command have easy keys. e.g. shorter, and or easier key.

    ;; • just simply list the top 20 most used commands from your head and give them easy key.

    ;; • a simple key is shorter key count, and or most used letter in english. here's the top most used letter

    ;;     ["e", 12.7],
    ;;     ["t", 9.06],
    ;;     ["a", 8.17],
    ;;     ["o", 7.51],
    ;;     ["i", 6.97],
    ;;     ["n", 6.75],
    ;;     ["s", 6.33],
    ;;     ["h", 6.09],
    ;;     ["r", 5.99],
    ;;     ["d", 4.25],
    ;;     ["l", 4.03],

    ;; we use letter frequency not qwerty layout because we need to consider there are people using dvork colemak, and also spanish french german
    ;; see
    ;; Ergonomic Keyboard Layouts
    ;; http://xahlee.info/kbd/dvorak_and_all_keyboard_layouts.html

    ;; so for example, a top most command xxx should have a key 【TAB e】

    ;; once you bind a new key, you need to move the existing command with that key to some other key

    ;; after the first 20 most used command is done, then that's enough. (because it covers ~95% of command calls)
    ;; the rest org commands's key choice does not matter that much, but if you want, they can have keys by association of command name and key letter, or grouping commands together nearby keys.

    ;; • go thru all commands, those that make sense to hold to repeat, need a chord key, or setup emacs repeat last key feature (if you don't know how to do this, just mark them, i'll try it)

    ;; • rebind all those that uses a shift key. e.g. ! @ # $

    (progn
      (define-prefix-command 'xah-org-leader-map)

      (define-key xah-org-leader-map (kbd "TAB") #'org-cycle)

      (define-key xah-org-leader-map (kbd "SPC RET") #'org-ctrl-c-ret)
      (define-key xah-org-leader-map (kbd "SPC TAB") #'org-ctrl-c-tab)
      ;; (define-key xah-org-leader-map (kbd "<tab>") #'org-cycle-force-archived)

      (define-key xah-org-leader-map (kbd "!") #'org-time-stamp-inactive)
      (define-key xah-org-leader-map (kbd "#") #'org-update-statistics-cookies)
      (define-key xah-org-leader-map (kbd "$") #'org-archive-subtree)
      (define-key xah-org-leader-map (kbd "%") #'org-mark-ring-push)
      (define-key xah-org-leader-map (kbd "&") #'org-mark-ring-goto)
      (define-key xah-org-leader-map (kbd "'") #'org-edit-special)
      (define-key xah-org-leader-map (kbd "*") #'org-list-make-subtree)
      (define-key xah-org-leader-map (kbd "+") #'org-table-sum)
      (define-key xah-org-leader-map (kbd ",") #'org-priority)
      (define-key xah-org-leader-map (kbd "-") #'org-ctrl-c-minus)
      (define-key xah-org-leader-map (kbd ".") #'org-time-stamp)
      (define-key xah-org-leader-map (kbd "/") #'org-sparse-tree)
      (define-key xah-org-leader-map (kbd ":") #'org-toggle-fixed-width)
      (define-key xah-org-leader-map (kbd ";") #'org-toggle-comment)
      (define-key xah-org-leader-map (kbd "<") #'outline-promote)
      (define-key xah-org-leader-map (kbd "=") #'org-table-eval-formula)
      (define-key xah-org-leader-map (kbd ">") #'outline-demote)
      (define-key xah-org-leader-map (kbd "?") #'org-table-field-info)
      (define-key xah-org-leader-map (kbd "@") #'org-mark-subtree)
      (define-key xah-org-leader-map (kbd "[") #'org-agenda-file-to-front)
      (define-key xah-org-leader-map (kbd "\\") #'org-match-sparse-tree)
      (define-key xah-org-leader-map (kbd "]") #'org-remove-file)
      (define-key xah-org-leader-map (kbd "^") #'org-up-element)
      (define-key xah-org-leader-map (kbd "_") #'org-down-element)
      (define-key xah-org-leader-map (kbd "`") #'org-table-edit-field)
      (define-key xah-org-leader-map (kbd "{") #'org-table-toggle-formula-debugger)
      (define-key xah-org-leader-map (kbd "|") #'org-table-create-or-convert-from-region)
      (define-key xah-org-leader-map (kbd "}") #'org-table-toggle-coordinate-overlays)
      (define-key xah-org-leader-map (kbd "~") #'org-table-create-with-table.el)

      (define-key xah-org-leader-map (kbd "a") #'org-attach)
      (define-key xah-org-leader-map (kbd "b") #'org-backward-heading-same-level)
      (define-key xah-org-leader-map (kbd "c") #'org-ctrl-c-ctrl-c)
      (define-key xah-org-leader-map (kbd "d") #'org-deadline)
      (define-key xah-org-leader-map (kbd "e") #'org-export-dispatch)
      (define-key xah-org-leader-map (kbd "f") #'org-forward-heading-same-level)

      (define-key xah-org-leader-map (kbd "g ,") #'org-date-from-calendar)
      (define-key xah-org-leader-map (kbd "g t") #'org-insert-structure-template)
      (define-key xah-org-leader-map (kbd "g .") #'org-goto-calendar)
      (define-key xah-org-leader-map (kbd "g 6") #'org-sort)
      (define-key xah-org-leader-map (kbd "g a") #'orgtbl-ascii-plot)
      (define-key xah-org-leader-map (kbd "g g") #'org-plot/gnuplot)
      (define-key xah-org-leader-map (kbd "g m b") #'org-previous-block)
      (define-key xah-org-leader-map (kbd "g m f") #'org-next-block)
      (define-key xah-org-leader-map (kbd "g m l") #'org-insert-last-stored-link)
      (define-key xah-org-leader-map (kbd "g m w") #'org-refile-copy)
      (define-key xah-org-leader-map (kbd "g s") #'org-ctrl-c-star)

      ;; h i

      (define-key xah-org-leader-map (kbd "j") #'org-goto)
      (define-key xah-org-leader-map (kbd "k") #'org-kill-note-or-show-branches)
      (define-key xah-org-leader-map (kbd "l") #'org-insert-link)

      (define-key xah-org-leader-map (kbd "m l") #'org-insert-all-links)
      (define-key xah-org-leader-map (kbd "m w") #'org-refile-reverse)

      (define-key xah-org-leader-map (kbd "n") #'outline-next-visible-heading)
      (define-key xah-org-leader-map (kbd "o") #'org-open-at-point)
      (define-key xah-org-leader-map (kbd "p") #'outline-previous-visible-heading)
      (define-key xah-org-leader-map (kbd "q") #'org-set-tags-command)
      (define-key xah-org-leader-map (kbd "r") #'org-fold-reveal)
      (define-key xah-org-leader-map (kbd "s") #'org-schedule)
      (define-key xah-org-leader-map (kbd "t") #'org-todo)
      (define-key xah-org-leader-map (kbd "u") #'outline-up-heading)
      (define-key xah-org-leader-map (kbd "v C-M-h") #'org-babel-mark-block)
      (define-key xah-org-leader-map (kbd "v I") #'org-babel-view-src-block-info)
      (define-key xah-org-leader-map (kbd "v TAB") #'org-babel-view-src-block-info)
      (define-key xah-org-leader-map (kbd "v a") #'org-babel-sha1-hash)
      (define-key xah-org-leader-map (kbd "v b") #'org-babel-execute-buffer)
      (define-key xah-org-leader-map (kbd "v c") #'org-babel-check-src-block)
      (define-key xah-org-leader-map (kbd "v d") #'org-babel-demarcate-block)
      (define-key xah-org-leader-map (kbd "v e") #'org-babel-execute-maybe)
      (define-key xah-org-leader-map (kbd "v f") #'org-babel-tangle-file)
      (define-key xah-org-leader-map (kbd "v g") #'org-babel-goto-named-src-block)
      (define-key xah-org-leader-map (kbd "v h") #'org-babel-describe-bindings)
      (define-key xah-org-leader-map (kbd "v i") #'org-babel-lob-ingest)
      (define-key xah-org-leader-map (kbd "v j") #'org-babel-insert-header-arg)
      (define-key xah-org-leader-map (kbd "v k") #'org-babel-remove-result-one-or-many)
      (define-key xah-org-leader-map (kbd "v l") #'org-babel-load-in-session)
      (define-key xah-org-leader-map (kbd "v n") #'org-babel-next-src-block)
      (define-key xah-org-leader-map (kbd "v o") #'org-babel-open-src-block-result)
      (define-key xah-org-leader-map (kbd "v p") #'org-babel-previous-src-block)
      (define-key xah-org-leader-map (kbd "v r") #'org-babel-goto-named-result)
      (define-key xah-org-leader-map (kbd "v s") #'org-babel-execute-subtree)
      (define-key xah-org-leader-map (kbd "v t") #'org-babel-tangle)
      (define-key xah-org-leader-map (kbd "v u") #'org-babel-goto-src-block-head)
      (define-key xah-org-leader-map (kbd "v v") #'org-babel-expand-src-block)
      (define-key xah-org-leader-map (kbd "v x") #'org-babel-do-key-sequence-in-edit-buffer)
      (define-key xah-org-leader-map (kbd "v z") #'org-babel-switch-to-session-with-code)
      (define-key xah-org-leader-map (kbd "w") #'org-refile)
      (define-key xah-org-leader-map (kbd "x !") #'org-reload)
      (define-key xah-org-leader-map (kbd "x ,") #'org-timer-pause-or-continue)
      (define-key xah-org-leader-map (kbd "x -") #'org-timer-item)
      (define-key xah-org-leader-map (kbd "x .") #'org-timer)
      (define-key xah-org-leader-map (kbd "x 0") #'org-timer-start)
      (define-key xah-org-leader-map (kbd "x ;") #'org-timer-set-timer)
      (define-key xah-org-leader-map (kbd "x <") #'org-agenda-set-restriction-lock)
      ;; (define-key xah-org-leader-map (kbd "x >") #'org-agenda-remove-restriction-lock)
      (define-key xah-org-leader-map (kbd "x @") #'org-cite-insert)
      (define-key xah-org-leader-map (kbd "x A") #'org-archive-to-archive-sibling)
      (define-key xah-org-leader-map (kbd "x C-M-v") #'org-redisplay-inline-images)
      (define-key xah-org-leader-map (kbd "x E") #'org-inc-effort)
      (define-key xah-org-leader-map (kbd "x G") #'org-feed-goto-inbox)
      (define-key xah-org-leader-map (kbd "x I") #'org-info-find-node)
      (define-key xah-org-leader-map (kbd "x M-w") #'org-copy-special)
      (define-key xah-org-leader-map (kbd "x P") #'org-set-property-and-value)
      (define-key xah-org-leader-map (kbd "x TAB") #'org-clock-in)
      (define-key xah-org-leader-map (kbd "x [") #'org-reftex-citation)
      (define-key xah-org-leader-map (kbd "x \\") #'org-toggle-pretty-entities)
      (define-key xah-org-leader-map (kbd "x _") #'org-timer-stop)
      (define-key xah-org-leader-map (kbd "x a") #'org-toggle-archive-tag)
      (define-key xah-org-leader-map (kbd "x b") #'org-tree-to-indirect-buffer)
      (define-key xah-org-leader-map (kbd "x c") #'org-clone-subtree-with-time-shift)
      (define-key xah-org-leader-map (kbd "x d") #'org-insert-drawer)
      (define-key xah-org-leader-map (kbd "x e") #'org-set-effort)
      (define-key xah-org-leader-map (kbd "x f") #'org-footnote-action)
      (define-key xah-org-leader-map (kbd "x g") #'org-feed-update-all)
      (define-key xah-org-leader-map (kbd "x o") #'org-toggle-ordered-property)
      (define-key xah-org-leader-map (kbd "x p") #'org-set-property)
      (define-key xah-org-leader-map (kbd "x q") #'org-toggle-tags-groups)
      (define-key xah-org-leader-map (kbd "x t a") #'org-archive-subtree-default)
      (define-key xah-org-leader-map (kbd "x t b") #'org-toggle-checkbox)
      (define-key xah-org-leader-map (kbd "x t c") #'org-columns)
      (define-key xah-org-leader-map (kbd "x t d") #'org-clock-display)
      (define-key xah-org-leader-map (kbd "x t f") #'org-emphasize)
      (define-key xah-org-leader-map (kbd "x t j") #'org-clock-goto)
      (define-key xah-org-leader-map (kbd "x t l") #'org-latex-preview)
      (define-key xah-org-leader-map (kbd "x t n") #'org-next-link)
      (define-key xah-org-leader-map (kbd "x t o") #'org-clock-out)
      (define-key xah-org-leader-map (kbd "x t p") #'org-previous-link)
      (define-key xah-org-leader-map (kbd "x t q") #'org-clock-cancel)
      (define-key xah-org-leader-map (kbd "x t r") #'org-toggle-radio-button)
      (define-key xah-org-leader-map (kbd "x t s") #'org-archive-subtree)
      (define-key xah-org-leader-map (kbd "x t t") #'org-toggle-time-stamp-overlays)
      (define-key xah-org-leader-map (kbd "x t u") #'org-dblock-update)
      (define-key xah-org-leader-map (kbd "x t v") #'org-toggle-inline-images)
      (define-key xah-org-leader-map (kbd "x t w") #'org-cut-special)
      (define-key xah-org-leader-map (kbd "x t x") #'org-clock-in-last)
      (define-key xah-org-leader-map (kbd "x t y") #'org-paste-special)
      (define-key xah-org-leader-map (kbd "x t z") #'org-resolve-clocks)
      (define-key xah-org-leader-map (kbd "x v") #'org-copy-visible)
      (define-key xah-org-leader-map (kbd "x x") #'org-dynamic-block-insert-dblock)
      (define-key xah-org-leader-map (kbd "y") #'org-evaluate-time-range)
      (define-key xah-org-leader-map (kbd "z") #'org-add-note)
      (define-key xah-org-leader-map (kbd "i") #'org-edit-special)

      ;;
      )

    (define-key org-mode-map (kbd xah-major-leader-key) xah-org-leader-map)

    ;;
    ))

  (add-hook 'org-mode-hook 'xah-set-org-mode-keys)

(provide 'xah-fly-keys-org)

;;; xah-fly-keys.el ends here
