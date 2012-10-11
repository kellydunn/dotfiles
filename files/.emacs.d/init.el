(setq make-backup-files nil)
(setq auto-save-default nil)
(setq-default indent-tabs-mode nil)

(add-to-list 'load-path "~/.emacs.d/")
(load "package")
(require 'package-spec)
(load "packages.el")