;; init-highlight.el
;;--------------------------------------------------------------------

(setq auto-mode-alist
      (append
       '(("\\.h$"  . c++-mode)
         ("\\.txt$" . sh-mode))
       auto-mode-alist))

(provide 'init-highlight)
;;--------------------------------------------------------------------
;; end of init-highlight.el
