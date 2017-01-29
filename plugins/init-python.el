
;; init-python.el
;; ---------------------------

;; Autocomplete for Python
;; sudo pip install virtualenv
;; sudo pip install jedy

(use-package jedi
    :ensure t) 

(add-hook 'python-mode-hook 'auto-complete-mode)
(add-hook 'python-mode-hook 'jedi:ac-setup)

;; indentation
(setq-default indent-tabs-mode nil) ; never use tab characters for indentation
(setq tab-width 4                   ; set tab-width
      c-default-style "stroustrup"  ; indent style in CC mode
      js-indent-level 2             ; indentation level in JS mode
      css-indent-offset 2)          ; indentation level in CSS mode

(add-hook 'python-mode-hook (lambda () (setq tab-width 4)))

(provide 'init-python)
