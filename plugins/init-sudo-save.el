;; init-sudo-save.el
;;----------------------------------------------------------------------------
(defun sudo-save ()
  "Save file as root."
  (interactive)
  (if (not buffer-file-name)
      (write-file (concat "/sudo:root@localhost:" (ido-read-file-name "File:")))
    (write-file (concat "/sudo:root@localhost:" buffer-file-name))))

(provide 'init-sudo-save)
;;--------------------------------------------------------------------
;; end of init-sudo-save.el
