
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
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(auto-indent-delete-line-char-remove-extra-spaces t)
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(custom-safe-themes
   (quote
    ("3a727bdc09a7a141e58925258b6e873c65ccf393b2240c51553098ca93957723" "6a37be365d1d95fad2f4d185e51928c789ef7a4ccf17e7ca13ad63a8bf5b922f" "756597b162f1be60a12dbd52bab71d40d6a2845a3e3c2584c6573ee9c332a66e" "64581032564feda2b5f2cf389018b4b9906d98293d84d84142d90d7986032d33" "42ac06835f95bc0a734c21c61aeca4286ddd881793364b4e9bc2e7bb8b6cf848" "442c946bc5c40902e11b0a56bd12edc4d00d7e1c982233545979968e02deb2bc" "66132890ee1f884b4f8e901f0c61c5ed078809626a547dbefbb201f900d03fd8" "3632cf223c62cb7da121be0ed641a2243f7ec0130178722554e613c9ab3131de" "f04122bbc305a202967fa1838e20ff741455307c2ae80a26035fbf5d637e325f" "8ca1c5e83bd31145f092346a6ce67dc6cbb3ba96d44e4cab1bb632433c2fa9fd" "ab3e4108e9b6d9b548cffe3c848997570204625adacef60cbd50a39306866db1" "5ee12d8250b0952deefc88814cf0672327d7ee70b16344372db9460e9a0e3ffc" "cf08ae4c26cacce2eebff39d129ea0a21c9d7bf70ea9b945588c1c66392578d1" "52588047a0fe3727e3cd8a90e76d7f078c9bd62c0b246324e557dfa5112e0d0c" "1157a4055504672be1df1232bed784ba575c60ab44d8e6c7b3800ae76b42f8bd" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "e16a771a13a202ee6e276d06098bc77f008b73bbac4d526f160faa2d76c1dd0e" "943bff6eada8e1796f8192a7124c1129d6ff9fbd1a0aed7b57ad2bf14201fdd4" "c4de176ecc8df6d7d0e565fb716c6a7d2412c548145b1243172bffa587c43c32" "71a6074df73691aeefd491ad7aea528725676f93dbd949eadc3d8925a8aba041" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(fringe-mode 0 nil (fringe))
 '(inhibit-startup-screen t)
 '(menu-bar-mode nil)
 '(python-indent-guess-indent-offset nil)
 '(python-indent-offset 4)
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))


;; load path
(add-to-list 'load-path "/home/nivekuil/code/rpg-mode/")


;; load melpa packages before everything so themes load on startup
(package-initialize)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)


;; set autosave directory
(setq backup-directory-alist `(("." . "~/.emacs.d/backup"))
      auto-save-list-file-prefix "~/.emacs.d/autosave/"
      auto-save-file-name-transforms `((".*" , "~/.emacs.d/autosave/" t)))


;; theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'deeper-blue t)


;; switch keys for better Dvorak compatibility
(keyboard-translate ?\C-x ?\C-h)
(keyboard-translate ?\C-h ?\C-x)
(keyboard-translate ?\C-t ?\C-f)
(keyboard-translate ?\C-f ?\C-t)
(define-key key-translation-map (kbd "C-M-f") (kbd "C-M-t"))
(define-key key-translation-map (kbd "C-M-t") (kbd "C-M-f"))
(define-key key-translation-map (kbd "M-t") (kbd "M-f"))
(define-key key-translation-map (kbd "M-f") (kbd "M-t"))


;; keep cursor at edges of screen, no jumping
(setq auto-window-vscroll nil  
      scroll-conservatively 10000
      scroll-margin 5)


;; highlight current line in certain modes
;; NOTE: Causes problems with smooth scrolling where if you scroll to the
;;       bottom of file, scrolling back up will be jumpy
(add-hook 'buffer-menu-mode-hook 'hl-line-mode)
(add-hook 'dired-mode-hook 'hl-line-mode)
(add-hook 'package-menu-mode-hook 'hl-line-mode)


;; tab inserts spaces
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)


;; use subword mode in C++/java etc to move by camelCase
(add-hook 'c-mode-common-hook (lambda () (subword-mode 1)))


;; use switch-window https://github.com/dimitri/switch-window
(global-set-key (kbd "C-.") 'other-window)
(global-set-key (kbd "C-x o") 'switch-window)


;; use bash as shell
(setq shell-file-name "bash"
      shell-command-switch "-ic") ;; interactive

;;;;
;;;; Minor modes
;;;;

;; use column enforce mode to mark text past column 80
(add-hook 'prog-mode-hook 'column-enforce-mode)


;; use flycheck (syntax checking)
(add-hook 'after-init-hook #'global-flycheck-mode) ;start with emacs
(setq-default flycheck-emacs-lisp-load-path 'inherit) ;use emacs load path


;; use smart mode line
(sml/setup)
(sml/apply-theme 'dark)
(setq rm-blacklist '(" 80col"           ;hide lighters from mode-line
                     " Helm"
                     " AI"))

;; use helm
(helm-mode)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-h a") 'helm-apropos)
(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)
(define-key helm-map (kbd "C-z") 'helm-select-action)
;; make helm buffers always appear on the same window
(setq helm-split-window-default-side 'same)


;; use auto indent mode instead of electric indent mode
(electric-indent-mode -1)
(add-hook 'prog-mode-hook 'auto-indent-mode)


;; use ace jump mode
(global-set-key (kbd "C-o") 'ace-jump-word-mode)


;; use winner-mode (C-c left to undo window changes)
(winner-mode 1)


;; use rpg-mode
(require 'rpg-mode)
(rpg-mode)
