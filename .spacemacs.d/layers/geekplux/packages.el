;;; packages.el --- geekplux Layer packages File for Spacemacs
;;
;; Copyright (c) 2015-2016 GeekPlux
;;
;; Author: GeekPlux <geekplux@gmail.com>
;; URL: https://github.com/geekplux/dotfiles
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;; List of all packages to install and/or initialize. Built-in packages
;; which require an initialization must be listed explicitly in the list.
(setq geekplux-packages
      '(
        ;; package names go here
        fcitx
        org-mac-link
        ox-ioslide
        org-alert
        geiser
        company
        web-mode
        stylus-mode
        ;; js2-mode
        ))

;; List of packages to exclude.
(setq geekplux-excluded-packages '())

;; For each package, define a function geekplux/init-<package-name>
;;
;; (defun geekplux/init-my-package ()
;;   "Initialize my package"
;;   )

(defun geekplux/post-init-company ()
  (when (configuration-layer/layer-usedp 'auto-completion)
    (spacemacs|add-company-hook markdown-mode)
    (spacemacs|add-company-hook sh-mode)
    (spacemacs|add-company-hook shell-script-mode)
    (spacemacs|add-company-hook makefile-bsdmake-mode)
    (spacemacs|add-company-hook conf-unix-mode)
    ))


;; (defun geekplux/init-js2-mode ()
;;   (progn
;;     (defun my-js2-mode-hook ()
;;       (progn
;;         (setq forward-sexp-function nil)
;;         ;; (set (make-local-variable 'indent-line-function) 'my-js2-indent-function)
;;         (set (make-local-variable 'semantic-mode) nil)
;;         ))
;;     (add-hook 'js2-mode-hook 'my-js2-mode-hook)))


(defun geekplux/init-web-mode ()
  (use-package web-mode
    :ensure t
    :defer t
    :mode
    (("\\.jsx\\'" . web-mode))
    :config
    (progn
      (defadvice web-mode-highlight-part (around tweak-jsx activate)
        (if (equal web-mode-content-type "jsx")
            (let ((web-mode-enable-part-face nil))
              ad-do-it)
          ad-do-it))
      (setq company-backends-web-mode '((company-dabbrev-code
                                         company-keywords
                                         company-etags)
                                        company-files company-dabbrev)))))


(defun geekplux/init-fcitx ()
  (use-package fcitx
    :ensure t
    :defer t
    :init
    (fcitx-default-setup)))


(defun geekplux/init-org-mac-link ()
  (use-package org-mac-link
    :ensure t
    :defer t
    :init
    (add-hook 'org-mode-hook
              (lambda ()
                (define-key org-mode-map (kbd "C-c g") 'org-mac-grab-link)))))

(defun geekplux/init-org-alert ()
  (use-package org-alert
    :ensure t
    :defer t
    :init
    (setq alert-default-style 'libnotify)
    :config
    (org-alert-enable)))

(defun geekplux/init-ox-ioslide ()
  (use-package ox-ioslide
    :ensure t
    :defer t
    ))

;; (defun geekplux/init-geiser ()
;;   (use-package geiser
;;     :ensure t
;;     :defer t
;;     :init
;;     (setq geiser-active-implementations '(guile))
;;     (setq geiser-default-implementations '(guile))
;;     ))


(defun geekplux/init-stylus-mode ()
  (use-package stylus-mode
    :ensure t
    :commands stylus-mode
    :init
    (add-to-list 'auto-mode-alist '("\\.styl\\'" . stylus-mode))))



;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
