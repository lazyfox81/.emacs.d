;; init.el
;;-------------------------
;; Emacs main config file
;;-------------------------

(add-to-list 'load-path "~/.emacs.d/plugins")
(require 'init-elpa)            ;; package manager

;; User interface
(require 'init-environment)     ;; UI setting
(require 'init-fonts)           ;; font setting
(require 'init-undo-tree)       ;; undo/redo
(require 'init-my-function)     ;; custom functions
(require 'init-key-bindings)    ;; custom keybinds
(require 'init-bs)              ;; buffer show
(require 'init-linum)           ;; line number
(require 'init-sr-speedbar)     ;; file manager 

;; Editor environment configurations
(require 'init-autocomplete)    ;; autocomplete
(require 'init-markdown)        ;; markdown-mode 
(require 'init-easypg)          ;; encryption-decryption
(require 'init-files)           ;; Associate file types
;; (require 'init-dired)           ;; Dired

;; Color theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'gruvbox t)

(provide 'init)
