;; init-key-bindings.el
;;----------------------------------------------------------------------------
;; Key bindings
;;----------------------------------------------------------------------------
(global-unset-key (kbd "<menu>"))

(global-set-key (kbd "<f2>") 'bs-show)
;; F3	Start recording macro
;; F4	Stop recording macro
;; F4	Play back macro once
(global-set-key (kbd "<f5>") 'bookmark-bmenu-list)
(global-set-key (kbd "<f6>") 'recentf-open-files)
(global-set-key (kbd "<f7>") 'ffap)
(global-set-key (kbd "<f12>") 'sr-speedbar-toggle)
(global-set-key (kbd "C-q") 'kill-emacs)

;; Open, Save, Close
(global-set-key (kbd "C-o") 'find-file)
(global-set-key (kbd "C-s") 'save-buffer)
(global-set-key (kbd "C-S-s") 'write-file)
(global-set-key (kbd "C-w") 'kill-buffer)

;; Cursor movement
(global-set-key (kbd "M-i") 'previous-line)
(global-set-key (kbd "M-k") 'next-line)
(global-set-key (kbd "M-j") 'backward-char)
(global-set-key (kbd "M-l") 'forward-char)
(global-set-key (kbd "M-u") 'backward-word)
(global-set-key (kbd "M-o") 'forward-word)
(global-set-key (kbd "M-h") 'move-beginning-of-line)
(global-set-key (kbd "M-H") 'move-end-of-line)
(global-set-key (kbd "M-n") 'end-of-buffer)
(global-set-key (kbd "M-N") 'beginning-of-buffer)

;; Edit
(global-set-key (kbd "M-f") 'delete-char)
(global-set-key (kbd "M-d") 'backward-delete-char)
(global-set-key (kbd "M-r") 'kill-word)
(global-set-key (kbd "M-e") 'backward-kill-word)
(global-set-key (kbd "M-g") 'kill-line)
(global-set-key (kbd "M-G") 'backward-kill-line)
(global-set-key (kbd "M-'") 'comment-dwim)
(global-set-key (kbd "M-w") 'xah-shrink-whitespaces)
(global-set-key (kbd "M-q") 'compact-uncompact-block)
(global-set-key (kbd "M-/") 'xah-toggle-letter-case)

;; easy keys for split windows
(global-set-key (kbd "M-3") 'delete-other-windows)
(global-set-key (kbd "M-2") 'delete-window)
(global-set-key (kbd "M-4") 'split-window-below)
(global-set-key (kbd "M-$") 'split-window-right)
(global-set-key (kbd "<menu> 4") 'split-window-right)
(global-set-key (kbd "M-s") 'other-window)
(global-set-key (kbd "<menu> s") 'other-window)
(global-set-key (kbd "<f8>") 'other-window)
;; copy, paste, undo
(global-set-key (kbd "M-c") 'xah-copy-line-or-region)
(global-set-key (kbd "M-C") 'copy-rectangle-as-kill)
(global-set-key (kbd "M-x") 'xah-cut-line-or-region)
(global-set-key (kbd "M-X") 'kill-rectangle)
(global-set-key (kbd "M-v") 'yank)
(global-set-key (kbd "M-V") 'yank-rectangle)
(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "C-y") 'redo)

;; selection
(global-set-key (kbd "M-SPC") 'set-mark-command)
(global-set-key (kbd "M-6") 'xah-select-current-block)
(global-set-key (kbd "M-7") 'xah-select-current-line)
(global-set-key (kbd "M-8") 'xah-extend-selection)
(global-set-key (kbd "M-*") 'xah-select-text-in-quote)

;; scroll
(global-set-key (kbd "M-I") 'scroll-down-command)
(global-set-key (kbd "M-K") 'scroll-up-command)
(global-set-key (kbd "M-p") 'recenter-top-bottom)

;; find/replace
(global-set-key (kbd "M-y") 'isearch-forward)
(global-set-key (kbd "M-Y") 'isearch-backward)
(global-set-key (kbd "M-5") 'query-replace)
(global-set-key (kbd "M-%") 'replace-rectangle)
(global-set-key (kbd "C-f") 'search-forward)
(global-set-key (kbd "C-S-f") 'search-backward)

;; execute
(global-set-key (kbd "M-a") 'execute-extended-command)

;; switch to buffers
(global-set-key (kbd "<menu> t") 'switch-to-buffer)

;; change font size
(global-set-key (kbd "C-=") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)
(provide 'init-key-bindings)
