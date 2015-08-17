(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   (vector "#eaeaea" "#d54e53" "#b9ca4a" "#e7c547" "#7aa6da" "#c397d8" "#70c0b1" "#000000"))
 '(auto-indent-blank-lines-on-move nil)
 '(auto-save-interval 0)
 '(auto-save-timeout 10)
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(custom-safe-themes
   (quote
    ("82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "3fd36152f5be7e701856c3d817356f78a4b1f4aefbbe8bbdd1ecbfa557b50006" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "0c387e27a3dd040b33c6711ff92e13bd952369a788eee97e4e4ea2335ac5528f" "2b56bd7a702f4dd5f50db417ec2bcdd06a878a0e2834e9ab37ad3c5c93aaab74" "f0ea6118d1414b24c2e4babdc8e252707727e7b4ff2e791129f240a2b3093e32" "219fa8a4c6a53918f31e7fe94634c115c4f0fb08e45cee6a49b341f810ffef85" "1934bf7e1713bf706a9cb36cc6a002741773aa42910ca429df194d007ee05c67" "be50a45342f47158a8d34f54ffecc63f55dbdf66ad672c171c48e9dac56fff52" "cd540cb356cb169fa1493791bd4cbb183c5ad1c672b8d1be7b23e5e8c8178991" "bc40f613df8e0d8f31c5eb3380b61f587e1b5bc439212e03d4ea44b26b4f408a" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "c5a044ba03d43a725bd79700087dea813abcb6beb6be08c7eb3303ed90782482" "6a37be365d1d95fad2f4d185e51928c789ef7a4ccf17e7ca13ad63a8bf5b922f" "756597b162f1be60a12dbd52bab71d40d6a2845a3e3c2584c6573ee9c332a66e" default)))
 '(electric-pair-mode t)
 '(fci-rule-color "#424242")
 '(inhibit-startup-screen t)
 '(linum-format " %7d ")
 '(main-line-color1 "#191919" t)
 '(main-line-color2 "#111111" t)
 '(menu-bar-mode nil)
 '(org-agenda-files (quote ("~/docs/todo.org")))
 '(powerline-color1 "#191919" t)
 '(powerline-color2 "#111111" t)
 '(python-indent-guess-indent-offset nil)
 '(safe-local-variable-values
   (quote
    ((eval setq-local org-descriptive-links nil)
     (org-descriptive-links)
     (org-descriptive-links nil)
     (setq org-descriptive-links nil)
     (eval add-hook
           (quote after-save-hook)
           (function org-publish-current-file)
           nil t)
     (eval add-hook
           (quote after-save-hook)
           (quote org-publish-current-file))
     (company-clang-arguments "-I/home/nivekuil/code/ucsd/cs30/pa2/" "-I/home/nivekuil/code/ucsd/cs30/pa3/")
     (company-clang-arguments "-I/home/nivekuil/code/ucsd/cs30/pa2" "-I/home/nivekuil/code/ucsd/cs30/pa3")
     (company-clang-arguments "/home/nivekuil/code/ucsd/cs30/pa2" "/home/nivekuil/code/ucsd/cs30/pa3"))))
 '(scroll-bar-mode nil)
 '(sml/position-percentage-format "")
 '(tool-bar-mode nil)
 '(vc-annotate-background nil t)
 '(vc-annotate-color-map
   (quote
    ((20 . "#f36c60")
     (40 . "#ff9800")
     (60 . "#fff59d")
     (80 . "#8bc34a")
     (100 . "#81d4fa")
     (120 . "#4dd0e1")
     (140 . "#b39ddb")
     (160 . "#f36c60")
     (180 . "#ff9800")
     (200 . "#fff59d")
     (220 . "#8bc34a")
     (240 . "#81d4fa")
     (260 . "#4dd0e1")
     (280 . "#b39ddb")
     (300 . "#f36c60")
     (320 . "#ff9800")
     (340 . "#fff59d")
     (360 . "#8bc34a"))) t)
 '(vc-annotate-very-old-color nil t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#1d1f21" :foreground "#DCDCCC" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 151 :width normal :foundry "unknown" :family "Ubuntu Mono")))))
(put 'narrow-to-region 'disabled nil)

(org-babel-load-file
 (expand-file-name "emacs-init.org"
                   user-emacs-directory))
(put 'set-goal-column 'disabled nil)
