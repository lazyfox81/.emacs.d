;; init-cua.el
;;---------------------------------------------------------------------------

;; CUA mode
(cua-mode -1)
(setq cua-auto-tabify-rectangles nil) ;; Don't tabify after rectangle commands
(transient-mark-mode 1) ;; No region when it is not highlighted
(setq cua-keep-region-after-copy nil) ;; Standard Windows behaviour


(provide 'init-cua)
;;--------------------------------------------------------------------
;; end of init-environment.el

