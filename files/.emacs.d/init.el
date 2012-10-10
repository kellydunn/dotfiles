(setq make-backup-files nil)
(setq auto-save-default nil)
(setq-default indent-tabs-mode nil)

(add-to-list 'load-path "~/.emacs.d/")
(load "package")

(add-to-list 'load-path "~/.emacs.d/modes/")
(load "haml-mode/haml-mode")
(load "go-mode/go-mode")