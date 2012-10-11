(defvar default-package-list
  '(haml-mode yaml-mode ruby-mode clojure-mode go-mode)
  "Default package list.")

(defun default-packages-installed-p ()
  (let (value)
    (dolist(element default-package-list value)
      (when (not (package-installed-p element))
        'false)
      'true)))

(unless (default-packages-installed-p)
  (package-refresh-contents)

  (let (value)
    (dolist (element default-package-list value)
      (when (not (package-installed-p element))
        (package-install element)))))

(provide 'default-package-list)