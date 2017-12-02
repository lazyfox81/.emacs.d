;; init-fonts.el
;;---------------

;; Set a default font
;; (when (member "Anonymous Pro for Powerline" (font-family-list))
;;   (add-to-list 'initial-frame-alist '(font . "Anonymous Pro for Powerline-12"))
;;   (add-to-list 'default-frame-alist '(font . "Anonymous Pro for Powerline-12")))
;; “initial frame” is the first window emacs creates.
;; “default frame” is any new window emacs creates.

;; (when (member "Terminess Powerline" (font-family-list))
;;   (add-to-list 'initial-frame-alist '(font . "Terminess Powerline-12"))
;;   (add-to-list 'default-frame-alist '(font . "Terminess Powerline-12")))

(when (member "Roboto Mono for Powerline" (font-family-list))
  (add-to-list 'initial-frame-alist '(font . "Roboto Mono for Powerline-10"))
  (add-to-list 'default-frame-alist '(font . "Roboto Mono for Powerline-10")))

(provide 'init-fonts)
;;--------------------------------------------------------------------
;; end of init-fonts.el
