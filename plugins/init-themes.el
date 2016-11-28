;; init-themes.el
;;--------------------------------------------------------------------
;; Color Theme
;;--------------------------------------------------------------------

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

(use-package sublime-themes
  :ensure t)

(use-package gruvbox-theme
  :ensure t
  :disabled t)

(load-theme 'spolsky t)

(custom-set-faces
 '(default ((t (:background "#222222"))))
 '(fringe ((t (:background  "#222222")))))

(provide 'init-themes)
;;--------------------------------------------------------------------
