;; init-bs.el
;; --------------------

;; buffer show (bf) (built-in)
(require 'bs)
(setq bs-configurations
      '(("all" nil nil nil nil nil)))
	;; ("files" "^\\*scratch\\*" nil nil bs-visits-non-file bs-sort-buffer-interns-are-last)))

(provide 'init-bs)
