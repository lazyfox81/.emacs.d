;; init-highlight.el
;;--------------------------------------------------------------------

(setq auto-mode-alist
      (append
       '(("\\.Xresources$"  . conf-xdefaults-mode)
         ("\Pkgfile$" . sh-mode)
         ("\\.txt$" . sh-mode))
       auto-mode-alist))

(provide 'init-highlight)
;;--------------------------------------------------------------------
;; end of init-highlight.el
