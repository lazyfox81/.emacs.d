;; init-files.el
;;----------------------
;; Associate file types
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.sh\\'" . shell-script-mode))
(add-to-list 'auto-mode-alist '("\\.plugin.zsh\\'" . shell-script-mode))

(add-to-list 'magic-mode-alist '("# required by " . conf-mode))

(provide 'init-files)
