;; init-terminal.el
;; ---------------------------
;; Terminal emulator setting
;; ---------------------------

(defun term-toggle-mode ()
  "Swither between `line-mode' and `char-mode'."
  (interactive)
  (if (term-in-line-mode) 
      (term-char-mode)
      (term-line-mode)))

(defun my-term-mode-config ()
  "Modify keymaps used by `term-mode'."
  (local-set-key (kbd "M-s") 'other-window)
  ;; (local-set-key (kbd "<f9>") 'term-toggle-mode)
  ;; more here
  )

(global-set-key (kbd "<f9>") 'term-toggle-mode)


;; add to hook
(add-hook 'term-mode-hook 'my-term-mode-config)

(global-set-key (kbd "M-RET") 'ansi-term)


(provide 'init-terminal)
