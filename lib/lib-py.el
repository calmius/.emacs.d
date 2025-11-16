(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))

;; autopep8
(use-package py-autopep8)

(setenv "PIP_DIR"  "/home/max/.local/bin")
(setq pip-bin-dir (getenv "PIP_DIR"))
(setenv "PATH" (concat (getenv "PATH") ":" pip-bin-dir))
(setq exec-path (append exec-path '(pip-bin-dir)))



(add-hook 'python-mode-hook 'flycheck-mode)

;; set location of flake8 executable
(setq flycheck-python-flake8-executable
      (expand-file-name "flake8" pip-bin-dir))

(with-eval-after-load 'flycheck
  (lambda ()
    (if (derived-mode-p 'python-mode)
	(
	 ;; setup ~/.flake8 config file
	 (setq-default flycheck-flake8rc
		       (expand-file-name ".flake8" (getenv "HOME")))
	 ;; disable python-mypy and python-pylint and
	 ;; only keep python-flake8
	 (setq-default flycheck-disabled-checkers
		       '(python-mypy python-pylint))
	 ;; select python-flake8 checker
	 (flycheck-select-checker 'python-flake8))
      )
    )
  )

;; optionally, set a keyboard shortcut to show list of errors
(global-set-key (kbd "C-c f l") 'flycheck-list-errors)
'py-autopep8-buffer

(add-hook 'python-mode-hook
          (lambda ()
	    (local-set-key (kbd "C-c w") 'py-autopep8-buffer)))

(provide 'lib-py)
