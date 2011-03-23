;; init.el
; Bootstrap the Emacs environment to load literate Emacs initialization files.

; First, establish a root directory from which we can locate the org-mode files we need.
(setq dotfiles-dir (file-name-directory (or (buffer-file-name) load-file-name)))

; Locate the directory that has the org-mode files
(let* ((org-dir (expand-file-name
                 "lisp" (expand-file-name
                         "org-mode" (expand-file-name
                                "src" dotfiles-dir)))))
  (add-to-list 'load-path org-dir)
  (require 'org)
  (require 'ob))

; Load all literate org-mode files in this directory (any org-mode files residing there)
(mapc #'org-babel-load-file (directory-files dotfiles-dir t "\\.org$"))
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(epa-popup-info-window nil)
 '(erc-log-insert-log-on-open nil)
 '(erc-modules (quote (autojoin button completion fill irccontrols list log match menu move-to-prompt netsplit networks noncommands readonly ring stamp track)))
 '(htmlize-output-type (quote font))
 '(org-confirm-elisp-link-function nil)
 '(todo-file-do "~/Dropbox/memex/todo.txt")
 '(todotxt-file "/home/rpdillon/Dropbox/memex/todo.txt" nil (todotxt)))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
