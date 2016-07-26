;; init-terminal.el
;; -------------------

(defun my-term-mode-config ()
  "Modify keymaps used by `term-mode'."
  (local-set-key (kbd "<f8>") 'other-window)
  ;; more here
  )

;; add to hook
(add-hook 'term-mode-hook 'my-term-mode-config)

(provide 'init-terminal)
