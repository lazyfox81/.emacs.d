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

(load-theme 'spolsky t)
;; (load-theme 'xresources t)

(custom-set-faces
 '(default            ((t (:background  "#282828"))))
 '(fringe             ((t (:background  "#282828"))))
 '(vertical-border    ((t (:foreground  "#282828"))))

   ;; terminal
 '(term-color-black   ((t (:foreground  "#454945" :background  "#454945"))))
 '(term-color-red     ((t (:foreground  "#bf5b75" :background  "#bf5b75"))))
 '(term-color-green   ((t (:foreground  "#9dc26d" :background  "#9dc26d"))))
 '(term-color-yellow  ((t (:foreground  "#e1c236" :background  "#e1c236"))))
 '(term-color-blue    ((t (:foreground  "#7ca8dc" :background  "#7ca8dc"))))
 '(term-color-magenta ((t (:foreground  "#ad94cf" :background  "#ad94cf")))) 
 '(term-color-cyan    ((t (:foreground  "#70a8bb" :background  "#70a8bb"))))
 '(term-color-white   ((t (:foreground  "#fbfbf8" :background  "#fbfbf8")))))

(provide 'init-themes)
;;--------------------------------------------------------------------
