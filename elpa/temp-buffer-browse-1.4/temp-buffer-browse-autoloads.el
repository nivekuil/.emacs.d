;;; temp-buffer-browse-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "temp-buffer-browse" "temp-buffer-browse.el"
;;;;;;  (21693 49115 468151 87000))
;;; Generated autoloads from temp-buffer-browse.el

(autoload 'temp-buffer-browse-activate "temp-buffer-browse" "\
Activate temporary key bindings for current window.
Specifically set up keys `SPC', `DEL' and `RET' to scroll up,
scroll down and close the temp buffer window, respectively.

\(fn)" nil nil)

(defvar temp-buffer-browse-mode nil "\
Non-nil if Temp-Buffer-Browse mode is enabled.
See the command `temp-buffer-browse-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `temp-buffer-browse-mode'.")

(custom-autoload 'temp-buffer-browse-mode "temp-buffer-browse" nil)

(autoload 'temp-buffer-browse-mode "temp-buffer-browse" "\
Toggle Temp-Buffer-Browse mode on or off.
With a prefix argument ARG, enable Temp-Buffer-Browse mode if ARG is
positive, and disable it otherwise.  If called from Lisp, enable
the mode if ARG is omitted or nil, and toggle it if ARG is `toggle'.
\\{temp-buffer-browse-mode-map}

\(fn &optional ARG)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; temp-buffer-browse-autoloads.el ends here
