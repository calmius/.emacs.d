(setq org-directory "~/Documents/org/gtd")
(setq org-agenda-files (list "inbox.org" "agenda.org" "projects.org" "someday.org"))
(define-key global-map (kbd "C-c c") 'org-capture)
(define-key global-map (kbd "C-c a") 'org-agenda)

;; Capture templates
(setq org-capture-templates
      `(("i" "Inbox" entry  (file "inbox.org")
         ,(concat "* TODO %?\n"
                  "/Entered on/ %U"))
        ("m" "Meeting" entry  (file+headline "agenda.org" "Future")
         ,(concat "* %?\n"
                  "<%<%Y-%m-%d %a %H:00>>"))))

;; Capture "Inbox" entry right way "C-c i"
(defun org-capture-inbox ()
  (interactive)
  (call-interactively 'org-store-link)
  (org-capture nil "i"))
(define-key global-map (kbd "C-c i") 'org-capture-inbox)

;; Refile from inbox to projects
(setq org-refile-targets
      '(("projects.org" :regexp . "\\(?:\\(?:Note\\|Task\\)s\\)")
        ("agenda.org" :regexp . "\\(?:Future\\)")))
;; (setq org-refile-targets '((org-agenda-files :maxlevel . 2)))


(setq org-refile-use-outline-path 'file)
(setq org-outline-path-complete-in-steps nil)

;; Add key words
(setq org-todo-keywords
      '((sequence "TODO(t)" "SOMEDAY" "NEXT(n)" "HOLD(h)" "|" "DONE(d)")))
(setq org-todo-keyword-faces
      '(("NEXT" :background "#5C999B" :weight bold)
        ("HOLD" :background "#c59031" :weight bold)
        ("SOMEDAY" :background "#05485f" :weight bold)))

;; Add timestamp when changed to NEXT
(defun log-todo-next-creation-date (&rest ignore)
  "Log NEXT creation time in the property drawer under the key 'ACTIVATED'"
  (when (and (string= (org-get-todo-state) "NEXT")
             (not (org-entry-get nil "ACTIVATED")))
    (org-entry-put nil "ACTIVATED" (format-time-string "[%Y-%m-%d]"))))
(add-hook 'org-after-todo-state-change-hook #'log-todo-next-creation-date)

;; Estimate time to complete a task
(setq org-log-done 'time)

;; Save the corresponding buffers
(defun gtd-save-org-buffers ()
  "Save `org-agenda-files' buffers without user confirmation.
See also `org-save-all-org-buffers'"
  (interactive)
  (message "Saving org-agenda-files buffers...")
  (save-some-buffers t (lambda ()
                         (when (member (buffer-file-name) org-agenda-files)
                           t)))
  (message "Saving org-agenda-files buffers... done"))
;; Add it after refile
(advice-add 'org-refile :after
            (lambda (&rest _)
              (gtd-save-org-buffers)))

;; Change from TODO to DONE when all children are done.
(defun org-summary-todo (n-done n-not-done)
  (let (org-log-done org-todo-log-states)   ; turn off logging
    (org-todo (if (= n-not-done 0) "DONE" "TODO"))))
(add-hook 'org-after-todo-statistics-hook #'org-summary-todo)

;; Olivetti-mode
(add-hook 'org-mode-hook 'olivetti-mode)
(add-hook 'org-agenda-mode-hook 'olivetti-mode)
;; Use the whole window
(add-hook 'org-capture-mode-hook 'delete-other-windows)
(add-hook 'org-agenda-mode-hook 'delete-other-windows)


;; Agenda view
;; Hide tag and filename in aganda view
(setq org-agenda-hide-tags-regexp ".")
(setq org-agenda-prefix-format
      '((agenda . " %i %-12:c%?-12t% s")
        (todo   . " ")
        (tags   . " %i %-12:c")
        (search . " %i %-12:c")))

;; Customi agenda view
(setq org-agenda-custom-commands
      '(("g" "Get Things Done (GTD)"
         ;; ((agenda ""
         ;; ((org-agenda-skip-function
         ;; '(org-agenda-skip-entry-if 'deadline))
         ;; (org-deadline-warning-days 0)))
         ((agenda ""
                  ((org-agenda-skip-function
                    '(org-agenda-skip-entry-if 'deadline))
                   (org-deadline-warning-days 0)
                   (org-agenda-time-grid '((daily today require-timed)
                                           (800 1200 1600 2000 2400)
                                           "......" "----------------"))))
          ;; All NEXT tasks
          (todo "NEXT"
                ((org-agenda-skip-function
                  '(org-agenda-skip-entry-if 'deadline))
                 (org-agenda-prefix-format "  %i %-12:c [%e] ")
                 (org-agenda-overriding-header "\nTasks\n")))
          ;; All NEXT tasks with deadlines
          (agenda nil
                  ((org-agenda-entry-types '(:deadline))
                   (org-agenda-format-date "")
                   (org-deadline-warning-days 7)
                   (org-agenda-skip-function
                    '(org-agenda-skip-entry-if 'notregexp "\\* NEXT"))
                   (org-agenda-overriding-header "\nDeadlines")))
          ;; All scheduled 
          (tags "SCHEDULED>=\"<today>\"&SCHEDULED<=\"<+7d>\""
                ((org-agenda-overriding-header "Scheduled for the Upcoming Week")))
          ;; All from inbox
          (tags-todo "inbox"
                     ((org-agenda-prefix-format "  %?-12t% s")
                      (org-agenda-overriding-header "\nInbox\n")))
          (tags "CLOSED>=\"<today>\""
                ((org-agenda-overriding-header "\nCompleted today\n")))))))

(provide 'lib-gtd)
