;; init-themes.el
;;--------------------------------------------------------------------
;; Color Theme
;;--------------------------------------------------------------------

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

(use-package sublime-themes
  :ensure t
  :disabled t)

(use-package gruvbox-theme
  :ensure t
  :disabled t)

;; (load-theme 'spolsky t)
(load-theme 'xresources t)

;; (custom-set-faces
;;  '(default         ((t (:background  "#282828"))))
;;  '(fringe          ((t (:background  "#282828"))))
;;  '(vertical-border ((t (:foreground  "#282828")))))

(provide 'init-themes)
;;--------------------------------------------------------------------
