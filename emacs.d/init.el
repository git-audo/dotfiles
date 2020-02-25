
(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("org"   . "http://orgmode.org/elpa/")
                         ("gnu"   . "http://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))
(package-initialize)

;; Bootstrap `use-package`
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)


(setq make-backup-files nil)
(setq auto-save-default nil)

(setq inhibit-startup-screen t)
(setq initial-scratch-message "")

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
(setq org-bullets-bullet-list '("◉" "›" "○" "○"))

(custom-theme-set-faces
 'user
 '(org-table           ((t (:foreground "#d6c58f"))))
 '(org-level-1         ((t (:foreground "#94abba")))) 
 '(org-level-2         ((t (:foreground "#d6d4d4")))) 
 '(org-level-3         ((t (:foreground "#d6d4d4")))))

;; UI configurations
(scroll-bar-mode -1)
(tool-bar-mode   -1)
(tooltip-mode    -1)
(menu-bar-mode   -1)
(setq visible-bell 1)
(add-to-list 'default-frame-alist '(height . 50))
(add-to-list 'default-frame-alist '(width . 90))

(set-frame-position (selected-frame) 30 20)

;; List available fonts
;; (font-family-list)
(set-default-font "bitstream vera sans mono")

(load-theme 'gruber-darker t)


;; languages support
(package-install 'go-mode)
