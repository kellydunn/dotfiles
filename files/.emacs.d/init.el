(setq make-backup-files nil)
(setq auto-save-default nil)
(setq-default indent-tabs-mode nil)

(add-to-list 'load-path "~/.emacs.d")
(require 'package)
(package-initialize)

(require 'cask "~/.cask/cask.el")
(cask-initialize)

(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)

(custom-set-variables
 '(custom-enabled-themes (quote (tomorrow-night-eighties)))
 '(custom-safe-themes 
   (quote 
    ("cf08ae4c26cacce2eebff39d129ea0a21c9d7bf70ea9b945588c1c66392578d1" default)))

 '(inhibit-startup-screen t)
 '(initial-scratch-message ";; yo"))

(custom-set-faces)
