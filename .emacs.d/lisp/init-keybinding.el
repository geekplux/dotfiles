;;; init-keybinding.el -*- lexical-binding: t no-byte-compile: t -*-

(use-package which-key
  :hook (after-init . which-key-mode)
  :ensure t
  :init
  (setq which-key-idle-delay 0)
  (which-key-setup-side-window-bottom))


(provide 'init-keybinding)
;;; init-keybinding.el ends here