
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Ubuntu Mono" :foundry "unknown" :slant normal :weight normal :height 151 :width normal)))))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-indent-blank-lines-on-move nil)
 '(auto-save-interval 0)
 '(auto-save-timeout 10)
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(custom-safe-themes
   (quote
    ("6a37be365d1d95fad2f4d185e51928c789ef7a4ccf17e7ca13ad63a8bf5b922f" "756597b162f1be60a12dbd52bab71d40d6a2845a3e3c2584c6573ee9c332a66e" default)))
 '(electric-layout-mode t)
 '(electric-pair-mode t)
 '(fringe-mode 0 nil (fringe))
 '(inhibit-startup-screen t)
 '(menu-bar-mode nil)
 '(python-indent-guess-indent-offset nil)
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))

;;; Key bindings
;; Switch keys for better Dvorak compatibility.
;; This way more fingers are kept on the home row.
(keyboard-translate ?\C-x ?\C-h)        ;x for eXplain
(keyboard-translate ?\C-h ?\C-x)        ;h for hang on, I have more input
(keyboard-translate ?\C-t ?\C-f)        ;f for Flip two letters
(keyboard-translate ?\C-f ?\C-t)        ;t for Toward the end of the line/file
(define-key key-translation-map (kbd "C-M-f") (kbd "C-M-t"))
(define-key key-translation-map (kbd "C-M-t") (kbd "C-M-f"))
(define-key key-translation-map (kbd "M-t") (kbd "M-f"))
(define-key key-translation-map (kbd "M-f") (kbd "M-t"))
(add-hook 'prog-mode-hook (lambda ()
                            (local-set-key (kbd "M-p") 'previous-line)
                            (local-set-key (kbd "M-n") 'next-line)))
(add-hook 'org-mode-hook (lambda ()
                            (local-set-key (kbd "M-p") 'previous-line)
                            (local-set-key (kbd "M-n") 'next-line)))

;; Define some keys.
(global-set-key (kbd "C-'") 'universal-argument)
(global-set-key (kbd "C-,") 'open-previous-line) ;like vi O
(global-set-key (kbd "C-.") 'other-window)
(global-set-key (kbd "C-o") 'open-next-line) ;like vi o
(global-set-key (kbd "C-u") 'undo)
(global-set-key (kbd "C-s") 'helm-swoop)
(global-set-key (kbd "C-x p") 'pop-to-mark-command)
(global-set-key (kbd "C-x g") 'magit-status)

;; Load and activate packages before using them.
(package-initialize)

;; Use melpa package repository.
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)

;; Set autosave directory so emacs doesn't leave autosave files everywhere.
(setq backup-directory-alist `(("." . "~/.emacs.d/backup"))
      auto-save-list-file-prefix "~/.emacs.d/autosave/"
      auto-save-file-name-transforms `((".*" , "~/.emacs.d/autosave/" t)))

;; Set the theme.
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'tronesque t)

;; smooth scrolling
;; Note that scroll-conservatively does not work correctly with hl line mode
;; when at bottom of buffer
(setq scroll-margin 5
      scroll-conservatively 10000)

;; tab inserts spaces
(setq-default indent-tabs-mode nil)

;; use switch-window https://github.com/dimitri/switch-window
(global-set-key (kbd "C-x o") 'switch-window)

;; use bash as shell
(setq shell-file-name "bash"
      shell-command-switch "-ic") ;; interactive

;;; Custom functions
;; Behave like vi's o command
(defun open-next-line (arg)
  "Open a new line after the current one."
  (interactive "p")
  (end-of-line)
  (open-line arg)
  (forward-line)
  (indent-according-to-mode))

;; Behave like vi's O command
(defun open-previous-line (arg)
  "Open a new line before the current one."
  (interactive "p")
  (beginning-of-line)
  (open-line arg)
  (indent-according-to-mode))


;;;
;;; Major modes
;;;

;; org-mode
(add-hook 'org-mode-hook 'visual-line-mode)


;;;;
;;;; Minor modes
;;;;

;; Use subword mode in programming languages to move by camelCase.
(add-hook 'prog-mode-hook 'subword-mode)

;; Use column enforce mode to mark text past column 80.
(add-hook 'prog-mode-hook 'column-enforce-mode)

;; Use flycheck for syntax checking.
(add-hook 'after-init-hook 'global-flycheck-mode) ;start with emacs

;; use ace jump mode
(global-set-key (kbd "C-r") 'ace-jump-char-mode)
(global-set-key (kbd "M-r") 'ace-jump-word-mode)

;; Use smart mode line.
(sml/setup)
(sml/apply-theme 'dark)
(setq rm-blacklist '(" 80col"           ;hide lighters from mode-line
                     " Helm"
                     " AI"
                     " yas"
                     " WLR"
                     " Abbrev"))

;;; use helm
(helm-mode)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-b") 'helm-mini)
(global-set-key (kbd "C-h a") 'helm-apropos)
;; Swap <tab> and C-z
(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)
(define-key helm-map (kbd "C-z") 'helm-select-action)
;; make helm buffers always appear on the same window
(setq helm-split-window-default-side 'same)

;; helm swoop
(setq helm-swoop-pre-input-function (lambda () "")) ;disable pre-input on swoop

;; use auto indent mode
(add-hook 'prog-mode-hook 'auto-indent-mode)
(setq auto-indent-assign-indent-level 2)

;; use electric pair mode
(electric-pair-mode 1)

;; use whole line or region so C-w and M-w without selection deletes
;; the line. When yanking, it places it as a line
(whole-line-or-region-mode 1)

;; use yasnippet
(setq yas-snippet-dirs '("~/.emacs.d/snippets"))
(yas-global-mode 1)

;; use winner-mode (C-c left to undo window changes)
(winner-mode 1)

;; use rpg-mode
(add-to-list 'load-path "/home/nivekuil/code/rpg-mode/")
(require 'rpg-mode)
(rpg-mode)




