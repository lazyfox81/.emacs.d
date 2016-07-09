;; init-dired.el
;; ----------------------

;; dired
(require 'dired)
;; allow dired to delete or copy dir
(setq dired-recursive-copies (quote always))    ;; “always” means no asking
(setq dired-recursive-deletes (quote always))   ;; “top” means ask once

;; allow copy from one dired dir to the next dired dir shown in a split window
(setq dired-dwim-target t)
(define-key dired-mode-map (kbd "RET")
  'dired-find-alternate-file)                            ;; was dired-advertised-find-file
(define-key dired-mode-map (kbd "^")
  (lambda () (interactive) (find-alternate-file "..")))  ;; was dired-up-directory

(provide 'init-dired.el)
