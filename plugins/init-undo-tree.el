;; init-undo-tree.el
;; ---------------------------
;; enable redo
(use-package undo-tree
  :ensure t
  :config
  (global-undo-tree-mode))
  
(provide 'init-undo-tree)
