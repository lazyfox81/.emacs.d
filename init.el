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
(put 'dired-find-alternate-file 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (fill-column-indicator jedi markdown-mode auto-complete sr-speedbar sublime-themes undo-tree use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background "#282828"))))
 '(fringe ((t (:background "#282828"))))
 '(term-color-black ((t (:foreground "#454945" :background "#454945"))))
 '(term-color-blue ((t (:foreground "#7ca8dc" :background "#7ca8dc"))))
 '(term-color-cyan ((t (:foreground "#70a8bb" :background "#70a8bb"))))
 '(term-color-green ((t (:foreground "#9dc26d" :background "#9dc26d"))))
 '(term-color-magenta ((t (:foreground "#ad94cf" :background "#ad94cf"))))
 '(term-color-red ((t (:foreground "#bf5b75" :background "#bf5b75"))))
 '(term-color-white ((t (:foreground "#fbfbf8" :background "#fbfbf8"))))
 '(term-color-yellow ((t (:foreground "#e1c236" :background "#e1c236"))))
 '(vertical-border ((t (:foreground "#454945" :background "#282828")))))
