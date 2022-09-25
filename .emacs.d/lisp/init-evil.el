;;; init-evil.el -*- lexical-binding: t no-byte-compile: t -*-

(use-package undo-tree
  :ensure t
  :diminish
  :config
  (global-undo-tree-mode 1)
  (setq undo-tree-auto-save-history nil))

(use-package evil
  :ensure t
  :init
  (evil-mode))


(provide 'init-evil)
;;; init-evil.el ends here