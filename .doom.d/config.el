;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
(setq user-full-name "GeekPlux"
      user-mail-address "geekplux@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-unicode-font' -- for unicode glyphs
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
;; (setq doom-theme 'doom-one)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type `relative)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/Dropbox/org/")


;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;







;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.




(when (eq system-type 'darwin)
  (osx-trash-setup))
(setq delete-by-moving-to-trash t
      mac-system-move-file-to-trash-use-finder t
      trash-directory "~/.Trash")

;; (set-terminal-coding-system 'utf-8)
;; (set-keyboard-coding-system 'utf-8)
;; (set-process-coding-system 'utf-8)
;; (prefer-coding-system 'utf-8)

;; (add-hook 'term-exec-hook
;;           (function
;;            (lambda ()
;;              (set-process-coding-system 'utf-8-unix 'utf-8-unix))))


(after! keyfreq
  (keyfreq-mode 1)
  (keyfreq-autosave-mode 1)
  )

(after! org
  (setq org-export-with-broken-links t))

(after! markdown
  (add-to-list 'auto-mode-alist '("\\.mdx\\'" . markdown-mode)))

(setq yas-snippet-dirs
      '("~/.doom.d/snippets"))


;; wakatime
(after! wakatime-mode

  (setq wakatime-api-key "36266b20-31a5-449a-97f4-fefd83724fa2")
  (global-wakatime-mode)
  )


(setq projectile-project-search-path '("~/project/"))


;;; UI start
(setq doom-theme 'doom-one)
;; (setq doom-font (font-spec :family "Operator Mono" :size 14 :weight 'book))
(setq doom-font (font-spec :family "Roboto Mono"))
(setq tab-width 2)
;; (use-package! mixed-pitch
;;   :hook (org-mode . mixed-pitch-mode)
;;   :config
;;   (setq mixed-pitch-face 'variable-pitch))

;; if started by emacs command or desktop file
(toggle-frame-maximized)

(after! eshell-syntax-highlighting
  (eshell-syntax-highlighting-global-mode 1))

(use-package! org-appear
  :after org
  :hook (org-mode . org-appear-mode)
  :config (setq
           org-appear-autolinks t
           org-appear-autoentities t
           org-appear-autosubmarkers t ))

(defun change-nano-theme-dark ()
  (interactive)
  (progn
    (setq doom-theme nil)
    (require 'nano-theme)
    (nano-mode)
    (nano-dark)
    ))

(defun change-nano-theme-light ()
  (interactive)
  (progn
    (setq doom-theme nil)
    (require 'nano-theme)
    (nano-mode)
    (nano-light)
    ))

(defun change-back-doom-theme ()
  (interactive)
  (setq doom-theme 'doom-one))

;; (change-nano-theme-dark)

(after! which-key
  (setq which-key-idle-delay 0.5))

(add-to-list 'auto-mode-alist '("\\.bean\\'" . beancount-mode))
