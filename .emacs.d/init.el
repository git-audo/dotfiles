
(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("org"   . "http://orgmode.org/elpa/")
                         ("gnu"   . "http://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))
(package-initialize)

(load-theme 'naysayer t)

;; Bootstrap `use-package`
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

(setq make-backup-files nil)
(setq auto-save-default nil)

(setq inhibit-startup-screen t)
(setq initial-scratch-message "")

;; UI configurations
(scroll-bar-mode -1)
(tool-bar-mode   -1)
(tooltip-mode    -1)
(menu-bar-mode   -1)
(setq visible-bell 1)
(add-to-list 'default-frame-alist '(height . 50))
(add-to-list 'default-frame-alist '(width . 110))

(set-frame-position (selected-frame) 30 20)

;; OrgMode Configs
(setq org-return-follows-link t)
(setq org-html-validation-link nil)
(setq org-todo-keywords
      '((sequence "TODO" "|" "DONE")))
(setq org-todo-keyword-faces
      '(("TODO"    . "yellow")
        ("WORKING" . "green")
        ("DONE"    . "#F9C507")))
(use-package org-bullets
  :ensure t
  :init
  (add-hook 'org-mode-hook (lambda ()
                             (org-bullets-mode 1))))
(setq org-bullets-bullet-list '("◉" "-" " "))

;; macOs key bindings
(when (eq system-type 'darwin)
  (setq mac-option-modifier 'meta)
  (setq mac-command-modifier 'control)
  (global-set-key [kp-delete] 'delete-char) ;; sets fn-delete to be right-delete
  )
(custom-set-variables
 '(package-selected-packages '(naysayer-theme use-package org-bullets)))
(custom-set-faces)
