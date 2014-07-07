;;;;;;;;;;;;;;;;个人配置文件;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;作者：狮子;;;;;;;;;;;;;;;;;;;;;
;; 插件和主题加载
(add-to-list 'load-path "~/.emacs.d/site-lisp")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
;; 应用主题molokai
(load-theme 'molokai t)
;; 插件列表
(require 'emmet-mode)
(require 'linum)
(global-linum-mode 1)
(add-hook 'sgml-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook  'emmet-mode)
(add-hook 'emmet-mode-hook (lambda () (setq emmet-indentation 2)))
(require 'operation)
;; 定义F6格式化HTML格式
(global-set-key [f6] 'indent-region-or-buffer)
(require 'smart-tab)
(global-smart-tab-mode 1)
;; 启动文件自适应编码
(require 'unicad)
;; 去掉工具栏
(tool-bar-mode 0)
;; 去掉菜单栏
;(menu-bar-mode 0)
;; 去掉滚动栏
(scroll-bar-mode 0) 
;; 启用 text 模式
(setq default-major-mode 'text-mode) 
;; 语法高亮
(global-font-lock-mode t)
;; 以 y/n代表 yes/no
(fset 'yes-or-no-p 'y-or-n-p)
;; 显示括号匹配
(show-paren-mode t)
(setq show-paren-style 'parentheses)
;; 显示时间，格式如下
(display-time-mode 1)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t) 
(transient-mark-mode t)
;; 支持emacs和外部程序的粘贴
(setq x-select-enable-clipboard t)
;; 在标题栏提示你目前在什么位置
(setq frame-title-format "jakeauyeung@%b")
;; 默认显示 80列就换行
(setq default-fill-column 80)
;;可以递归的使用 minibuffer
(setq enable-recursive-minibuffers t)
;;禁止终端响铃
(setq visiable-bell t)
;;打开缺省禁用的功能
(setq version-control t)
(setq kept-new-versions 3)
(setq delete-old-versions t)
(setq kept-old-versions 2)
(setq dired-kept-versions 1)
;;让 dired 可以递归的拷贝和删除目录
(setq dired-recursive-copies 'top)
(setq dired-recursive-deletes 'top)
;;设定删除保存记录为200，可以方便以后无限恢复
(setq kill-ring-max 200)
;; 设置(utf-8)模式
(set-language-environment 'Chinese-GB)
(set-keyboard-coding-system 'utf-8)
(set-clipboard-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-selection-coding-system 'utf-8)
(modify-coding-system-alist 'process "*" 'utf-8)
(setq default-process-coding-system '(utf-8 . utf-8))
(setq-default pathname-coding-system 'utf-8)
(set-file-name-coding-system 'utf-8)
(setq ansi-color-for-comint-mode t) ;;′|àshell-mode??,o??÷[M`J3
;;设置 sentence-end 可以识别中文标点。不用在 fill 时在句号后插 入两个空格。
(setq sentence-end "\\([。！？]\\|……\\|[.?!][]\"')}]*\\($\\|[ \t]\\)\\)[ \t\n]*")
(setq sentence-end-double-space nil)
;; 设置字体
(set-default-font "-outline-consolas-normal-r-normal-normal-14-97-96-96-c-*-iso8859-1")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(display-time-mode t)
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:stipple nil :background "#1b1d1e" :foreground "#f8f8f0" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :foundry "outline" :family "YaHei Consolas Hybrid")))))
;; 设置默认tab宽度为2
(setq tab-width 2
indent-tabs-mode t
c-basic-offset 2)
;; 回车缩进
(global-set-key "\C-m" 'newline-and-indent)
(global-set-key (kbd "C-<return>") 'newline)
;; 新建文件的编码方式
(setq default-buffer-file-coding-system 'utf-8)
;; 终端方式的编码方式
(set-terminal-coding-system 'utf-8)
;; 不要生成临时文件
(setq-default make-backup-files 0)
;; 指针颜色设置为白色
;;(set-cursor-color "white")
;; 鼠标颜色设置为白色
;;(set-mouse-color "white")
;; 设置日历的一些颜色
(setq calendar-load-hook
'(lambda ()
(set-face-foreground 'diary-face "skyblue")
(set-face-background 'holiday-face "slate blue")
(set-face-foreground 'holiday-face "white")))
;; 显示列号
(setq column-number-mode t)
(setq line-number-mode t)
;; 全屏F11（如果emacs24没有打上全屏补丁不会生效，所以需要有补丁emacs）
(defun toggle-fullscreen (&optional f)
  (interactive)
  (let ((current-value (frame-parameter nil 'fullscreen)))
       (set-frame-parameter nil 'fullscreen
                            (if (equal 'fullboth current-value)
                                (if (boundp 'old-fullscreen) old-fullscreen nil)
                                (progn (setq old-fullscreen current-value)
                                       'fullboth)))))

(global-set-key [f11] 'toggle-fullscreen)
(add-hook 'after-make-frame-functions 'toggle-fullscreen)



