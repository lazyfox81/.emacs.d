
;; init-fci.el
;; ---------------------------
;; Fill-column indicator
;; https://www.emacswiki.org/emacs/FillColumnIndicator

(use-package fill-column-indicator
    :ensure t)

(define-globalized-minor-mode
  global-fci-mode fci-mode (lambda () (fci-mode 1)))
(global-fci-mode 1)

(setq fci-rule-width 1)
;; (setq fci-rule-color "darkblue")
(setq fci-rule-color "#333333")
(setq fci-rule-column 80)
(provide 'init-fci)
