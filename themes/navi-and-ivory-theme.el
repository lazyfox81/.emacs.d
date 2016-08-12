;; ---------------------------
;;
;; Navi-And-Ivory: A dark color theme for Emacs24+
;;
;; ----------------------------

(unless (>= 24 emacs-major-version)
  (error "requires Emacs 24 or later."))

(deftheme navi-and-ivory
  "A dark colour theme")

(let ((navi-and-ivory-background     "#021B21")
      (navi-and-ivory-foreground     "#E8DFD6")
      (navi-and-ivory-cursor         "#2E3340")
      (navi-and-ivory-black          "#032C36")
      (navi-and-ivory-red            "#C2454E")
      (navi-and-ivory-green          "#7CBF9E")
      (navi-and-ivory-orange         "#8A7A63")
      (navi-and-ivory-blue           "#2E3340")
      (navi-and-ivory-magenta        "#FF5879")
      (navi-and-ivory-cyan           "#44B5B1")
      (navi-and-ivory-white          "#F2F1B9")
      (navi-and-ivory-light-black    "#065F73")
      (navi-and-ivory-light-red      "#EF5847")      
      (navi-and-ivory-light-green    "#A2D9B1")
      (navi-and-ivory-light-orange   "#BEB090")
      (navi-and-ivory-light-blue     "#61778D")
      (navi-and-ivory-light-magenta  "#FF99A1")      
      (navi-and-ivory-light-cyan     "#9ED9D8")      
      (navi-and-ivory-light-white    "#F6F6C9"))
  (custom-theme-set-faces
   'navi-and-ivory

   ;; ----------------- Frame stuff --------------------
   `(default ((t (:background ,navi-and-ivory-background :foreground ,navi-and-ivory-foreground))))
   `(cursor  ((t (:background ,navi-and-ivory-cursor))))
   `(hl-line ((t (:background ,navi-and-ivory-light-black))))
   `(modeline ((t (:foreground ,navi-and-ivory-white :background ,navi-and-ivory-black))))
   `(mode-line-inactive ((t (:box nil :foreground ,navi-and-ivory-light-black :background ,navi-and-ivory-black))))
   `(mode-line ((t (:box nil :foreground ,navi-and-ivory-background :background ,navi-and-ivory-light-white))))
   `(fringe ((t (:background ,navi-and-ivory-background))))
   ;; Highlight region color
   `(region ((t (:foreground ,navi-and-ivory-black :background ,navi-and-ivory-white))))
   ;; Minibuffer prompt
   `(minibuffer-prompt ((default (:foreground ,navi-and-ivory-light-red))))

   ;; ---------------- Code Highlighting ---------------
   ;; Preprocessor
   `(font-lock-preprocessor-face ((t (:foreground ,navi-and-ivory-green))))
   ;; Builtins
   `(font-lock-builtin-face ((t (:foreground ,navi-and-ivory-light-cyan))))
   ;; Constants
   `(font-lock-constant-face ((t (:foreground ,navi-and-ivory-light-green))))
   ;; Comments
   `(font-lock-comment-face ((t (:foreground ,navi-and-ivory-cyan))))
   ;; Function names
   `(font-lock-function-name-face ((t (:foreground ,navi-and-ivory-light-cyan))))
   ;; Keywords
   `(font-lock-keyword-face ((t (:foreground ,navi-and-ivory-light-orange))))
   ;; Strings
   `(font-lock-string-face ((t (:foreground ,navi-and-ivory-light-magenta))))
   ;; Variables
   `(font-lock-variable-name-face ((t (:foreground ,navi-and-ivory-light-orange))))
   `(font-lock-type-face ((t (:foreground ,navi-and-ivory-white))))
   `(font-lock-warning-face ((t (:foreground ,navi-and-ivory-white :bold t))))

   ;; ---------------- Shell-----------------------------
   `(comint-highlight-prompt ((t (:foreground ,navi-and-ivory-red))))

   ;; ---------------- Linum (line number) --------------
   `(linum ((t (:background ,navi-and-ivory-background :foreground ,navi-and-ivory-black)))) ;
   
   ;; ---------------- Package Specific Stuff -----------
   ;; Powerline
   `(powerline-active1 ((t (:background ,navi-and-ivory-light-white :foreground ,navi-and-ivory-background))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name)))
  (when (not window-system)
    (custom-set-faces '(default ((t (:background "nil")))))))

(provide-theme 'navi-and-ivory)

;; Local Variables:
;; no-byte-compile: t
;; End:
