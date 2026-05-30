;; Basic
;; (add-hook 'org-mode-hook 'org-indent-mode)
;; (setq org-startup-with-inline-images nil)
(setq org-src-window-setup 'current-window)
(setq org-hide-emphasis-markers t)
;; Disable subscript functionality
(setq org-use-sub-superscripts nil)

(use-package org-modern
  :config
  (setq org-modern-todo-faces
        '(("NEXT" :background "#5C999B" :weight bold :foreground "white")
          ("HOLD" :background "#c59031" :weight bold :foreground "white")
          ("SOMEDAY" :background "#05485f" :weight bold :foreground "white")
          ("PROJ" :background "#B190f0" :weight bold :foreground "white")))
  (add-hook 'org-mode-hook (lambda () (org-modern-mode 1)))
  :custom (org-modern-star '("◉" "○" "◈" "◇" "✳")))

;; Inverit tag from top level header
(setq org-use-tag-inheritance t)

(setq
 ;; Edit settings
 org-auto-align-tags nil
 org-tags-column 0
 org-catch-invisible-edits 'show-and-error
 org-special-ctrl-a/e t
 org-insert-heading-respect-content t

 ;; Org styling, hide markup etc.
 org-hide-emphasis-markers t
 org-pretty-entities t

 ;; Agenda styling
 org-agenda-tags-column 0
 org-agenda-block-separator ?─
 org-agenda-time-grid
 '((daily today require-timed)
   (800 1000 1200 1400 1600 1800 2000)
   " ┄┄┄┄┄ " "┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄")
 org-agenda-current-time-string
 "◀── now ─────────────────────────────────────────────────")

;; Ellipsis styling
(setq org-ellipsis "…")
(set-face-attribute 'org-ellipsis nil :inherit 'default :box nil)

(global-org-modern-mode)

;; Notification
;; Org agenda notifications
(require 'appt)
(require 'notifications)

(setq appt-message-warning-time 30) ;; notify 30 min before
(setq appt-display-interval 5)      ;; repeat every 5 min
(setq appt-display-mode-line t)

(defun my/org-agenda-refresh-appt ()
  "Refresh appointments from org agenda."
  (interactive)
  (setq appt-time-msg-list nil)
  (org-agenda-to-appt))

(defun my/appt-notification (min-to-app new-time msg)
  "Show desktop notification for appointments."
  (notifications-notify
   :title (format "Org reminder: in %s min" min-to-app)
   :body msg
   :urgency 'normal))

(setq appt-disp-window-function #'my/appt-notification)

(appt-activate 1)

;; Load org agenda tasks into appt on startup
(my/org-agenda-refresh-appt)

;; Refresh every 10 minutes
(run-at-time nil 600 #'my/org-agenda-refresh-appt)

(provide 'lib-org)
