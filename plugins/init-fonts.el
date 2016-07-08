;; init-fonts.el
;;----------------------------------------------------------------------------
;; Set a default font
(when (member "Anonymous Pro for Powerline" (font-family-list))
  (add-to-list 'initial-frame-alist '(font . "Anonymous Pro for Powerline-12"))
  (add-to-list 'default-frame-alist '(font . "Anonymous Pro for Powerline-12")))
;; “initial frame” is the first window emacs creates.
;; “default frame” is any new window emacs creates.

(provide 'init-fonts)
