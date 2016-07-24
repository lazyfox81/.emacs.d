;; init-browser.el
;; ------------------------------------

;; When you click on a link or call `find-file-at-point' (alias `ffap')
;; when cursor is on a URL, emacs will call OS's default browser.
;; `http://ergoemacs.org/emacs/emacs_set_default_browser.html'

;; set specific browser to open links
(setq browse-url-browser-function 'browse-url-firefox)

(provide 'init-browser)
