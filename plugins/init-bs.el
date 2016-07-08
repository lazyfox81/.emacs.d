;; init-bs.el
;; --------------------

;; buffer show (bf) (built-in)
(require 'bs)
(setq bs-configurations
      '(("files" "^\\*scratch\\*" nil nil bs-visits-non-file bs-sort-buffer-interns-are-last)))

(provide 'init-bs)
