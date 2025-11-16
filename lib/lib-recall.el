(use-package recall
;; :bind
;; Note: This binding overrides default binding for `find-file-read-only'
;; ("C-x C-r" . recall-list)
;; Or if minibuffer completion is your preferable interface
;; ("C-x C-r" . recall-rerun)
:custom
;; Consult completion based interface
;; (recall-completing-read-fn #'recall-consult-completing-read)
;; Enable process surveillance
(recall-mode +1))
