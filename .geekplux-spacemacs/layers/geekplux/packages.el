;;; packages.el --- geekplux Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2014 Sylvain Benner
;; Copyright (c) 2014-2015 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
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
        ))

;; List of packages to exclude.
(setq geekplux-excluded-packages '())

;; For each package, define a function geekplux/init-<package-name>
;;
;; (defun geekplux/init-my-package ()
;;   "Initialize my package"
;;   )

(defun geekplux/init-web-mode ()
  (use-package web-mode
    :defer t
    :mode
    (("\\.jsx\\'" . web-mode))
    :config
    (progn
      (defadvice web-mode-highlight-part (around tweak-jsx activate)
        (if (equal web-mode-content-type "jsx")
            (let ((web-mode-enable-part-face nil))
              ad-do-it)
          ad-do-it)))))


(defun geekplux/init-fcitx ()
  (use-package fcitx
    :defer t
    :init
    (fcitx-default-setup)))


(defun geekplux/init-org-mac-link ()
  (use-package org-mac-link
    :defer t
    :init
    (add-hook 'org-mode-hook
              (lambda ()
                (define-key org-mode-map (kbd "C-c g") 'org-mac-grab-link)))))


;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
