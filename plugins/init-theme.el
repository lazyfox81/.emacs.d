;; init-themes.el
;;--------------------------------------------------------------------
;; Color Theme
;;--------------------------------------------------------------------

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

(use-package sublime-themes
  :ensure t
  :disabled t
  )

(use-package gruvbox-theme
  :ensure t
  :disabled t
  )

(load-theme 'spolsky t)
;; (load-theme 'xresources t)

(let ((*background*         "#2f343f")
      (*foreground*         "#d3dae3")
      (*color0*             "#454945")
      (*color1*             "#bf5b75")
      (*color2*             "#9dc26d")
      (*color3*             "#e1c236")
      (*color4*             "#7ca8dc")
      (*color5*             "#ad94cf")
      (*color6*             "#70a8bb")
      (*color7*             "#fbfbf8"))

  (custom-set-faces
   `(default            ((t (:background,  *background*))))
   `(fringe             ((t (:background,  *background*))))
   `(vertical-border    ((t (:foreground,  *color0* :background,  *background*))))

   ;; terminal
   `(term-color-black   ((t (:foreground,  *color0* :background,  *color0*))))
   `(term-color-red     ((t (:foreground,  *color1* :background,  *color1*))))
   `(term-color-green   ((t (:foreground,  *color2* :background,  *color2*))))
   `(term-color-yellow  ((t (:foreground,  *color3* :background,  *color3*))))
   `(term-color-blue    ((t (:foreground,  *color4* :background,  *color4*))))
   `(term-color-magenta ((t (:foreground,  *color5* :background,  *color5*)))) 
   `(term-color-cyan    ((t (:foreground,  *color6* :background,  *color6*))))
   `(term-color-white   ((t (:foreground,  *color7* :background,  *color7*))))))

(provide 'init-theme)
;;--------------------------------------------------------------------
;; end of init-themes.el
