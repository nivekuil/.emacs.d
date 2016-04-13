
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(put 'set-goal-column 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-view-program-selection
   (quote
    (((output-dvi has-no-display-manager)
      "dvi2tty")
     ((output-dvi style-pstricks)
      "dvips and gv")
     (output-dvi "xdvi")
     (output-pdf "Okular")
     (output-html "xdg-open"))))
 '(custom-safe-themes
   (quote
    ("c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" default)))
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (git-commit command-log-mode smart-comment swiper seq projectile irony helm-core helm flycheck company clojure-mode avy zenburn-theme yasnippet yaml-mode ws-butler writegood-mode whole-line-or-region web-mode ujelly-theme tronesque-theme temp-buffer-browse symon stripe-buffer string-utils sr-speedbar spacegray-theme soothe-theme solarized-theme smyx-theme smart-mode-line simple-httpd request rainbow-delimiters pyvenv pythonic py-autopep8 puml-mode powerline paredit noctilux-theme names multiple-cursors multi monokai-theme minesweeper material-theme magit lush-theme load-theme-buffer-local kerl json-rpc js2-mode jinja2-mode hungry-delete htmlize highlight-indentation helm-projectile helm-ag haskell-mode grandshell-theme gnugo fountain-mode focus flycheck-package flycheck-irony firecode-theme find-file-in-project expand-region erc-hl-nicks draft-mode diminish deft darktooth-theme cyberpunk-theme corral company-jedi company-irony-c-headers company-irony column-enforce-mode color-theme-sanityinc-tomorrow cider bubbleberry-theme bind-key beacon auto-complete auctex atom-one-dark-theme anchored-transpose aggressive-indent afternoon-theme ace-window @))))

(put 'narrow-to-region 'disabled nil)
(org-babel-load-file
 (expand-file-name "emacs-init.org"
                   user-emacs-directory))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
