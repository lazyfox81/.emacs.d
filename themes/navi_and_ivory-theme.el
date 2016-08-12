;; ---------------------------
;;
;; Visibone: A dark color theme for Emacs24+
;;
;; ----------------------------

(unless (>= 24 emacs-major-version)
  (error "requires Emacs 24 or later."))

(deftheme visibone
  "A dark colour theme")

(let ((visibone-background     "#021B21")
      (visibone-foreground     "#cccccc")
      (visibone-cursor         "#cccccc")
      (visibone-black          "#666666")
      (visibone-light-black    "#999999")
      (visibone-red            "#cc6699")
      (visibone-light-red      "#ff99cc")      
      (visibone-green          "#99cc66")
      (visibone-light-green    "#ccff99")
      (visibone-orange         "#cc9966")
      (visibone-light-orange   "#ffcc99")
      (visibone-blue           "#6699cc")
      (visibone-light-blue     "#99ccff")
      (visibone-magenta        "#9966cc")
      (visibone-light-magenta  "#cc99ff")      
      (visibone-cian           "#66cc99")
      (visibone-light-cian     "#99ffcc")      
      (visibone-white          "#cccccc")
      (visibone-light-white    "#ffffff"))
  (custom-theme-set-faces
   'visibone

   ;; ----------------- Frame stuff --------------------
   `(default ((t (:background ,visibone-background :foreground ,visibone-foreground))))
   `(cursor  ((t (:background ,visibone-cursor))))
   `(hl-line ((t (:background ,visibone-light-black))))
   `(modeline ((t (:foreground ,visibone-white :background ,visibone-black))))
   `(mode-line-inactive ((t (:box nil :foreground ,visibone-light-black :background ,visibone-black))))
   `(mode-line ((t (:box nil :foreground ,visibone-background :background ,visibone-light-white))))
   `(fringe ((t (:background ,visibone-background))))
   ;; Highlight region color
   `(region ((t (:foreground ,visibone-black :background ,visibone-white))))
   ;; Minibuffer prompt
   `(minibuffer-prompt ((default (:foreground ,visibone-light-red))))

   ;; ---------------- Code Highlighting ---------------
   ;; Preprocessor
   `(font-lock-preprocessor-face ((t (:foreground ,visibone-green))))
   ;; Builtins
   `(font-lock-builtin-face ((t (:foreground ,visibone-light-cian))))
   ;; Constants
   `(font-lock-constant-face ((t (:foreground ,visibone-light-green))))
   ;; Comments
   `(font-lock-comment-face ((t (:foreground ,visibone-black))))
   ;; Function names
   `(font-lock-function-name-face ((t (:foreground ,visibone-light-cian))))
   ;; Keywords
   `(font-lock-keyword-face ((t (:foreground ,visibone-light-orange))))
   ;; Strings
   `(font-lock-string-face ((t (:foreground ,visibone-light-magenta))))
   ;; Variables
   `(font-lock-variable-name-face ((t (:foreground ,visibone-light-orange))))
   `(font-lock-type-face ((t (:foreground ,visibone-white))))
   `(font-lock-warning-face ((t (:foreground ,visibone-white :bold t))))

   ;; ---------------- Shell-----------------------------
   `(comint-highlight-prompt ((t (:foreground ,visibone-red))))

   ;; ---------------- Linum (line number) --------------
   `(linum ((t (:background ,visibone-background :foreground ,visibone-black)))) ;
   
   ;; ---------------- Package Specific Stuff -----------
   ;; Powerline
   `(powerline-active1 ((t (:background ,visibone-light-white :foreground ,visibone-background))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name)))
  (when (not window-system)
    (custom-set-faces '(default ((t (:background "nil")))))))

(provide-theme 'visibone)

;; Local Variables:
;; no-byte-compile: t
;; End:
