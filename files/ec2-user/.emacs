; Miscellaneous

(setq dabbrev-case-fold-search nil)
(setq dabbrev-case-replace nil)
(setq default-major-mode 'text-mode)
(setq-default fill-column 79)
(setq inhibit-startup-message t)
(setq kill-whole-line t)
(setq lpr-command "true")
(setq make-backup-files nil)
(setq mode-require-final-newline t)
(setq sentence-end "[.?!][]\"')}]*\\($\\|[ \t]\\)[ \t\n]*")
(setq sentence-end-double-space nil)
(setq tab-stop-list (list 2 4 6 8 10 12 14 16 18 20 22 24 26 28 30 32 34 36 38 40 42 44 46 48 50 52 54 56 58 60 62 64 66 68 70 72 74 76 78 80))
;(setq tab-stop-list (list 4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80))
(setq visible-bell t)
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(menu-bar-mode -1)

; Key bindings

(global-set-key "\C-cl" 'goto-line)
(global-set-key "\C-cw" 'toggle-wrap)
(define-key text-mode-map "\t" 'tab-to-tab-stop)
(global-set-key (read (format "[?\\M-\\C-%c]" ?%)) 'query-replace-regexp)

; Don't try to be clever about file formats

(setq auto-mode-alist nil)
(setq interpreter-mode-alist nil)

; Functions

(defun toggle-wrap ()
    "Toggle line wrap."
    (interactive)
    (if truncate-lines (setq truncate-lines nil) (setq truncate-lines t))
    (redraw-display)
)
