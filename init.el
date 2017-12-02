;; init.el
;;-------------------------
;; Emacs main config file
;;-------------------------

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/plugins")
(require 'init-elpa)            ;; package manager

;; User interface
(require 'init-environment)     ;; UI setting
(require 'init-fonts)           ;; font setting
(require 'init-undo-tree)       ;; undo/redo
(require 'init-my-function)     ;; custom functions
(require 'init-cua)             ;; disable cua-mode
(require 'init-sudo-save)       ;; save as root
(require 'init-key-bindings)    ;; custom keybinds
(require 'init-bs)              ;; buffer show
(require 'init-highlight)       ;; highlighting

(require 'init-theme)           ;; color theme

(require 'init-linum)           ;; line number
(require 'init-sr-speedbar)     ;; file manager 

;; Editor environment configurations
(require 'init-autocomplete)    ;; autocomplete
(require 'init-markdown)        ;; markdown-mode 
(require 'init-easypg)          ;; encryption-decryption
(require 'init-files)           ;; Associate file types
(require 'init-dired)           ;; Dired
(require 'init-python)          ;; Python
(require 'init-fci)             ;; Fill-column indicator

;; Terminal
(require 'init-terminal)        ;; Terminal emulator setting

;; Web
(require 'init-browser)         ;; web setting

(provide 'init)
;;--------------------------------------------------------------------
;; end of init.el
