(use-package pydoc)
(use-package python-black
  :demand t
  :after python
  :hook (python-mode . python-black-on-save-mode-enable-dwim))

(use-package pyvenv
  :config
  (pyvenv-mode 1))

(provide 'lib-py)
