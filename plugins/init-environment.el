;; init-environment.el
;;--------------------------------------------------------------------
;; User interface

;; Show-paren-mode settings
(setq show-paren-style 'expression)
(show-paren-mode t)

;; Hide GUI
(menu-bar-mode    -1)              ;; Hide menubar
(tool-bar-mode    -1)              ;; Hide toolbar
(scroll-bar-mode  -1)              ;; Hide scrollbar
(setq use-dialog-box nil)          ;; никаких графических диалогов и
                                   ;; окон - все через минибуфер
(setq redisplay-dont-pause t)      ;; лучшая отрисовка буфера

; Enable russian layouts
(setq default-input-method "russian-computer")

(setq make-backup-files         nil)   ;; Don't want any backup files
(setq auto-save-list-file-name  nil)   ;; Don't want any .saves files
(setq auto-save-default         nil)   ;; Don't want any auto saving

;; Inhibit startup/splash screen
(setq inhibit-splash-screen   t)
(setq ingibit-startup-message t)       ;; экран приветствия можно
                                       ;; вызвать комбинацией C-h C-a

;; Set Default Major Mode
;; (setq initial-major-mode (quote text-mode))

;; Recently opened file
(recentf-mode 1) ; keep a list of recently opened files; 1 for default

;; `y' or `Space' - "yes"; `n' or `Backspace' - no
(defalias (function yes-or-no-p) (function y-or-n-p))

(provide 'init-environment)
;;--------------------------------------------------------------------
;; end of init-environment.el
