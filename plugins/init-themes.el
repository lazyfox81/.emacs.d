;; init-themes.el
;; -----------------------

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

(use-package sublime-themes
  :ensure t)

(use-package gruvbox-theme
  :ensure t
  :disabled t)

(provide 'init-themes)
