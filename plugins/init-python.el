
;; init-python.el
;; ---------------------------

;; Autocomplete for Python
(use-package jedi
    :ensure t) 

(add-hook 'python-mode-hook 'auto-complete-mode)
(add-hook 'python-mode-hook 'jedi:ac-setup)

(provide 'init-python)
