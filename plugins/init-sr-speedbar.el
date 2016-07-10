;; init-sr-speedbar.el
;;--------------------

(use-package sr-speedbar
  :ensure t
  :config
  (setq speedbar-use-images nil)
  (setq speedbar-show-unknown-files t)
  (setq speedbar-directory-unshown-regexp
	"^\\(CVS\\|RCS\\|SCCS\\|\\.\\.*$\\)\\'")
  (setq sr-speedbar-right-side nil)
  (speedbar-add-supported-extension ".sh"))

(global-set-key (kbd "<f12>") 'sr-speedbar-toggle)

(provide 'init-sr-speedbar)
