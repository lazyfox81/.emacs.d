;; ---------------------------
;;
;; Navi-And-Ivory: A dark color theme for Emacs24+
;;
;; ----------------------------

(unless (>= 24 emacs-major-version)
  (error "requires Emacs 24 or later."))

(deftheme japanesque
  "A dark colour theme")

(let ((japanesque-background     "#021B21")
      (japanesque-foreground     "#E8DFD6")
      (japanesque-cursor         "#2E3340")
      (japanesque-black          "#454945")
      (japanesque-red            "#bf5b75")
      (japanesque-green          "#9dc26d")
      (japanesque-orange         "#e1c236")
      (japanesque-blue           "#7ca8dc")
      (japanesque-magenta        "#ad94cf")
      (japanesque-cyan           "#70a8bb")
      (japanesque-white          "#fbfbf8")
      (japanesque-light-black    "#787a78")
      (japanesque-light-red      "#ff99aa")      
      (japanesque-light-green    "#aaffdd")
      (japanesque-light-orange   "#ffddaa")
      (japanesque-light-blue     "#aaaaff")
      (japanesque-light-magenta  "#ffbbff")      
      (japanesque-light-cyan     "#aaffff")      
      (japanesque-light-white    "#ffffff"))
  (custom-theme-set-faces
   'japanesque

   ;; ----------------- Frame stuff --------------------
   `(default ((t (:background ,japanesque-background :foreground ,japanesque-foreground))))
   `(cursor  ((t (:background ,japanesque-cursor))))
   `(hl-line ((t (:background ,japanesque-light-black))))
   `(modeline ((t (:foreground ,japanesque-white :background ,japanesque-black))))
   `(mode-line-inactive ((t (:box nil :foreground ,japanesque-light-black :background ,japanesque-black))))
   `(mode-line ((t (:box nil :foreground ,japanesque-background :background ,japanesque-light-white))))
   `(fringe ((t (:background ,japanesque-background))))
   ;; Highlight region color
   `(region ((t (:foreground ,japanesque-black :background ,japanesque-white))))
   ;; Minibuffer prompt
   `(minibuffer-prompt ((default (:foreground ,japanesque-light-red))))

   ;; ---------------- Code Highlighting ---------------
   ;; Preprocessor
   `(font-lock-preprocessor-face ((t (:foreground ,japanesque-green))))
   ;; Builtins
   `(font-lock-builtin-face ((t (:foreground ,japanesque-light-cyan))))
   ;; Constants
   `(font-lock-constant-face ((t (:foreground ,japanesque-light-green))))
   ;; Comments
   `(font-lock-comment-face ((t (:foreground ,japanesque-cyan))))
   ;; Function names
   `(font-lock-function-name-face ((t (:foreground ,japanesque-light-cyan))))
   ;; Keywords
   `(font-lock-keyword-face ((t (:foreground ,japanesque-light-orange))))
   ;; Strings
   `(font-lock-string-face ((t (:foreground ,japanesque-light-magenta))))
   ;; Variables
   `(font-lock-variable-name-face ((t (:foreground ,japanesque-light-orange))))
   `(font-lock-type-face ((t (:foreground ,japanesque-white))))
   `(font-lock-warning-face ((t (:foreground ,japanesque-white :bold t))))

   ;; ---------------- Shell-----------------------------
   `(comint-highlight-prompt ((t (:foreground ,japanesque-red))))

   ;; ---------------- Linum (line number) --------------
   `(linum ((t (:background ,japanesque-background :foreground ,japanesque-black)))) ;
   
   ;; ---------------- Package Specific Stuff -----------
   ;; Powerline
   `(powerline-active1 ((t (:background ,japanesque-light-white :foreground ,japanesque-background))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name)))
  (when (not window-system)
    (custom-set-faces '(default ((t (:background "nil")))))))

(provide-theme 'japanesque)

;; Local Variables:
;; no-byte-compile: t
;; End:
