;; init-browser.el
;; ------------------------------------

;; When you click on a link or call `find-file-at-point' (alias `ffap')
;; when cursor is on a URL, emacs will call OS's default browser.
;; `http://ergoemacs.org/emacs/emacs_set_default_browser.html'

;; set specific browser to open links
(setq browse-url-browser-functfion 'browse-url-firefox)
;; (setq browse-url-browser-function 'eww-browse-url)

;; Open new website in new buffer
(when (fboundp 'eww)
  (progn
    (defun xah-rename-eww-hook ()
      "Rename eww browser's buffer so sites open in new page."
      (rename-buffer "eww" t))
    (add-hook 'eww-mode-hook 'xah-rename-eww-hook)))

;; use browser depending on url
;; (setq
;;  browse-url-browser-function
;;  '(
;;   ("wikipedia\\.org" . browse-url-firefox)
;;   ("thefreedictionary\\.com" . eww-browse-url)
;;   ;; ("." . browse-url-default-browser)
;;   ))

(global-set-key (kbd "<f7>") 'ffap)
(global-set-key (kbd "<S-f7>") 'browse-url-firefox)

(provide 'init-browser)
;;--------------------------------------------------------------------
;; end of init-browser.el
