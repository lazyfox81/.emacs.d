;; init.el
;;-------------------------
;; Emacs main config file
;;-------------------------

(add-to-list 'load-path "~/.emacs.d/plugins")

;; User interface
(require 'init-environment)     ;; UI setting
(require 'init-fonts)           ;; font setting
(require 'init-sr-speedbar)     ;; file manager 
(require 'init-undo-tree)       ;; undo/redo
(require 'init-my-function)     ;; custom functions
(require 'init-key-bindings)    ;; custom keybinds
(require 'init-bs)              ;; buffer show
(require 'init-linum)           ;; line number
(require 'init-easypg)          ;; encryption-decryption

;; Packages
(require 'init-elpa)            ;; package manager

;; auto-complete (MELPA)
(require 'auto-complete)
(ac-config-default)
(setq ac-use-menu-map t)
(define-key ac-completing-map "\M-k" 'ac-next)
(define-key ac-completing-map "\M-i" 'ac-previous)

;; markdown-mode (MELPA)
(require 'markdown-mode)
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)

;; ergoemacs (MELPA)
;; (package-initialize)
;; (require 'ergoemacs-mode)
;; (setq ergoemacs-theme nil)            ;; Uses Standard Ergoemacs keyboard theme
;; (setq ergoemacs-keyboard-layout "us") ;; Assumes QWERTY keyboard layout
;; (setq ergoemacs-handle-ctl-c-or-ctl-x 'only-C-c-and-C-x) ;
;; (setq ergoemacs-handle-ctl-c-or-ctl-x 'only-copy-cut)
;; (setq ergoemacs-ctl-c-or-ctl-x-delay 1)
;; (ergoemacs-mode 1)

;;----------------------------------------------------------------------------
;; Color theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'gruvbox t)
;; (load-theme 'visibone t)

;;----------------------------------------------------------------------------
;; dired
(require 'dired)
;; allow dired to delete or copy dir
(setq dired-recursive-copies (quote always))    ;; “always” means no asking
(setq dired-recursive-deletes (quote always))   ;; “top” means ask once

;; allow copy from one dired dir to the next dired dir shown in a split window
(setq dired-dwim-target t)
(define-key dired-mode-map (kbd "RET")
  'dired-find-alternate-file)                            ;; was dired-advertised-find-file
(define-key dired-mode-map (kbd "^")
  (lambda () (interactive) (find-alternate-file "..")))  ;; was dired-up-directory

;;----------------------------------------------------------------------------
;; Associate file types
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.sh\\'" . shell-script-mode))
(add-to-list 'auto-mode-alist '("\\.plugin.zsh\\'" . shell-script-mode))
;;----------------------------------------------------------------------------
(put 'dired-find-alternate-file 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
;;  '(speedbar-show-unknown-files t)
;;  '(sr-speedbar-right-side nil))
;; (custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
