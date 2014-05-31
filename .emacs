;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;Jake AuYeung .emacs config;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Theme path config
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'molokai t)
;; Plugin path config
(add-to-list 'load-path "~/.emacs.d/site-lisp")

;; Plugin list
(require 'emmet-mode)
(require 'linum)
(global-linum-mode 1)
(add-hook 'sgml-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook  'emmet-mode)
(add-hook 'emmet-mode-hook (lambda () (setq emmet-indentation 2)))


;; Close menu
(menu-bar-mode 0)

;; Open text mode
(setq default-major-mode 'text-mode)

;; Height line 
(global-font-lock-mode t)

;; y/n 
(fset 'yes-or-no-p 'y-or-n-p)

;; Show num
(column-number-mode t)
(setq line-number-mode t)

;; Enter indent
(global-set-key "\C-m" 'newline-and-indent)
(global-set-key (kbd "C-<return>") 'newline)

;; Paren
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;; Tab indent
(setq tab-width 2
indent-tabs-mode t
c-basic-offset 2)

;; Setting time
(display-time-mode 1)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)

;; Suport other copy/past
(setq x-select-enable-clipboard t)

;; Show title what 
(setq frame-title-format "-_-!!@%b")

;; Default show 80 col
(setq default-fill-column 80);

;; Don't save temp
(setq-default make-backup-files 0)
