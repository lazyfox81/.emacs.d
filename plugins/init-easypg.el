;; init-easypg.el
;; ----------------------
;; EasyPG (bild-in)

;; Setup for transparent, automatic encryption and decryption
;; for *.gpg files
(require 'epa-file)
(epa-file-enable)
(setq epa-file-name-regexp "\\.\\(gpg\\|asc\\)$")
(epa-file-name-regexp-update)
(setq epa-armor t)       ;; create ASCII armored output by 'epa' command
                         ;; instead gpg

(provide 'init-easypg)
