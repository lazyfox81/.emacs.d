;; init-elpa.el
;;------------------------------
;; MELPA
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(provide 'init-elpa)
