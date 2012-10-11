(defvar default-package-list
  '(haml-mode yaml-mode ruby-mode clojure-mode go-mode)
  "Default package list.")

(defun default-packages-installed-p ()
  (let (value)
    (dolist(element default-package-list value)
      (when (not (package-installed-p value))
        'false)
      'true)))

(unless (default-packages-installed-p)
  (package-refresh-contents)

  (let (value)
    (dolist (element default-package-list value)
      (when (not (package-installed-p value))
        (package-install value)))))

(provide 'default-package-list)