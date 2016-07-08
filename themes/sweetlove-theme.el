;; ---------------------------
;;
;; Sweetlove: A dark color theme for Emacs24+
;;
;; ----------------------------

(unless (>= 24 emacs-major-version)
  (error "requires Emacs 24 or later."))

(deftheme sweetlove
  "A dark colour theme")

(let ((sweetlove-background     "#1f1f1f")
      (sweetlove-foreground     "#c0b18b")
      (sweetlove-cursor         "#c0b18b")
      (sweetlove-black          "#170f0d")
      (sweetlove-light-black    "#402e2e")
      (sweetlove-red            "#d17b49")
      (sweetlove-light-red      "#ac5d2f")      
      (sweetlove-green          "#7b8748")
      (sweetlove-light-green    "#647035")
      (sweetlove-orange         "#af865a")
      (sweetlove-light-orange   "#8f6840")
      (sweetlove-blue           "#535c5c")
      (sweetlove-light-blue     "#444b4b")
      (sweetlove-magenta        "#775759")
      (sweetlove-light-magenta  "#614445")      
      (sweetlove-cian           "#6d715e")
      (sweetlove-light-cian     "#585c49")      
      (sweetlove-white          "#c0b18b")
      (sweetlove-light-white    "#978965"))
  (custom-theme-set-faces
   'sweetlove

   ;; ----------------- Frame stuff --------------------
   `(default ((t (:background ,sweetlove-background :foreground ,sweetlove-foreground))))
   `(cursor  ((t (:background ,sweetlove-cursor))))
   `(hl-line ((t (:background ,sweetlove-light-black))))
   `(modeline ((t (:foreground ,sweetlove-white :background ,sweetlove-light-black))))
   `(mode-line-inactive ((t (:box nil :foreground ,sweetlove-black :background ,sweetlove-light-black))))
   `(mode-line ((t (:box nil :foreground ,sweetlove-background :background ,sweetlove-light-white))))
   `(fringe ((t (:background ,sweetlove-background))))
   ;; Highlight region color
   `(region ((t (:foreground ,sweetlove-black :background ,sweetlove-white))))
   ;; Minibuffer prompt
   `(minibuffer-prompt ((default (:foreground ,sweetlove-light-red))))

   ;; ---------------- Code Highlighting ---------------
   ;; Preprocessor
   `(font-lock-preprocessor-face ((t (:foreground ,sweetlove-green))))
   ;; Builtins
   `(font-lock-builtin-face ((t (:foreground ,sweetlove-light-cian))))
   ;; Constants
   `(font-lock-constant-face ((t (:foreground ,sweetlove-light-green))))
   ;; Comments
   `(font-lock-comment-face ((t (:foreground ,sweetlove-light-blue))))
   ;; Function names
   `(font-lock-function-name-face ((t (:foreground ,sweetlove-light-cian))))
   ;; Keywords
   `(font-lock-keyword-face ((t (:foreground ,sweetlove-light-orange))))
   ;; Strings
   `(font-lock-string-face ((t (:foreground ,sweetlove-magenta))))
   ;; Variables
   `(font-lock-variable-name-face ((t (:foreground ,sweetlove-light-orange))))
   `(font-lock-type-face ((t (:foreground ,sweetlove-white))))
   `(font-lock-warning-face ((t (:foreground ,sweetlove-white :bold t))))

   ;; ---------------- Shell-----------------------------
   `(comint-highlight-prompt ((t (:foreground ,sweetlove-red))))

   ;; ---------------- Linum (line number) --------------
   `(linum ((t (:background ,sweetlove-background :foreground ,sweetlove-light-magenta)))) ;
   
   ;; ---------------- Package Specific Stuff -----------
   ;; Powerline
   `(powerline-active1 ((t (:background ,sweetlove-light-white :foreground ,sweetlove-background))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name)))
  (when (not window-system)
    (custom-set-faces '(default ((t (:background "nil")))))))

(provide-theme 'sweetlove)

;; Local Variables:
;; no-byte-compile: t
;; End:
