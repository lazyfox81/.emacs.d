;; init-linum.el
;; ---------------------------
;; linum plugin (bild-in)
(require 'linum)
(line-number-mode   t)      ;; show line number in mode-line
(global-linum-mode  -1)      ;; show line number in every buffers
(column-number-mode t)      ;; show column number mode-line
(setq linum-format "%4d")   ;; format of line numbers

(provide 'init-linum)
;;--------------------------------------------------------------------
;; end of init-linum.el
