;; init-autocomplete.el
;; ---------------------------

(use-package auto-complete
  :ensure t
  :config
  (ac-config-default)
  (setq ac-use-menu-map t)
  (define-key ac-completing-map "\M-k" 'ac-next)
  (define-key ac-completing-map "\M-i" 'ac-previous))

(provide 'init-autocomplete)
;;--------------------------------------------------------------------
;; end of init- autocomplete.el
