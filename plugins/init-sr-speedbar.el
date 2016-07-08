;; init-sp-speedbar.el
;;--------------------
(require 'sr-speedbar)
(setq speedbar-use-images nil)
(setq speedbar-show-unknown-files t)
(setq sr-speedbar-right-side nil)

(speedbar-add-supported-extension ".sh")

(global-set-key (kbd "<f12>") 'sr-speedbar-toggle)

(provide 'init-sr-speedbar)
