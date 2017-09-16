
;; ----------------------------------------
;; ~/.emacs.d/site-lisp 以下を全て読み込む
;; ----------------------------------------

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(let ((default-directory (expand-file-name "~/.emacs.d/site-lisp")))
  (add-to-list 'load-path default-directory)
  (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
      (normal-top-level-add-subdirs-to-load-path)))
;; ----------------------------------------
;; init-loader
;; ----------------------------------------
(require 'init-loader)
(setq init-loader-show-log-after-init nil)
(init-loader-load "~/.emacs.d/init_loader")
;; ----------------------------------------
;; install-elisp
;; ---------------------------------------- 
;(setq load-path (cons "~/.emacs.d/elisp" load-path))
;(require 'install-elisp)
;(setq install-elisp-repository-directory "~/.emacs.d/elisp/")



;;; 自動スペルチェック C-.で候補表示
;;; sudo port install ispell が必要
;(setq ispell-program-name "/opt/local/bin/ispell")
;(setq flyspell-issue-message-flag nil)
;(setq ispell-dictionary "american")

;; text-mode
;(add-hook
; 'text-mode-hook 'flyspell-mode)

;; program-mode
;(add-hook
; 'prog-mode-hook 'flyspell-prog-mode)


;; emacs-lisp-modeでバッファーを開いたときに行う設定
(add-hook
 'emacs-lisp-mode-hook
 (lambda ()
   ;; スペースでインデントをする
   (setq indent-tabs-mode nil)
   ))

;;; CUDA
(setq auto-mode-alist
    (cons (cons "\\.cu$" 'c++-mode) auto-mode-alist))

;;; GDB ;;;
;;; sudo port install gdb が必要
(add-hook 'gdb-mode-hook
          '(lambda ()
             (setq gdb-many-windows t)
             (setq gud-gdb-command-name "ggdb -i=mi")
             (local-set-key "\C-p" 'comint-previous-input)
             (local-set-key "\C-n" 'comint-next-input)
             ))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (esup py-yapf py-autopep8 jedi swift3-mode web-mode vue-mode tide swift-mode sql-indent scss-mode ruby-end ruby-block robe quickrun projectile-rails php-mode js2-mode jquery-doc haml-mode company coffee-mode auto-complete auto-compile)))
 '(swift-indent-offset 4))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(web-mode-block-comment-face ((t (:foreground "#000000"))))
 '(web-mode-block-control-face ((t (:foreground "#000000"))))
 '(web-mode-block-delimiter-face ((t (:foreground "#FF3030"))))
 '(web-mode-block-face ((t (:foreground "#000000"))))
 '(web-mode-block-string-face ((t (:foreground "#000000"))))
 '(web-mode-builtin-face ((t (:foreground "#000000"))))
 '(web-mode-comment-face ((t (:foreground "#D9333F"))))
 '(web-mode-constant-face ((t (:foreground "#000000"))))
 '(web-mode-css-at-rule-face ((t (:foreground "#FF7F00"))))
 '(web-mode-css-pseudo-class-face ((t (:foreground "#FF7F00"))))
 '(web-mode-css-rule-face ((t (:foreground "#A0D8EF"))))
 '(web-mode-doctype-face ((t (:foreground "#82AE46"))))
 '(web-mode-filter-face ((t (:foreground "#000000"))))
 '(web-mode-function-call-face ((t (:foreground "#000000"))))
 '(web-mode-function-name-face ((t (:foreground "#000000"))))
 '(web-mode-html-attr-equal-face ((t (:foreground "#87CEEB"))))
 '(web-mode-html-attr-name-face ((t (:foreground "#C97586"))))
 '(web-mode-html-attr-value-face ((t (:foreground "#82AE46"))))
 '(web-mode-html-tag-bracket-face ((t (:foreground "#ADD8E6"))))
 '(web-mode-html-tag-face ((t (:foreground "#E6B422" :weight bold))))
 '(web-mode-javascript-string-face ((t (:foreground "#000000"))))
 '(web-mode-keyword-face ((t (:foreground "#FF1493"))))
 '(web-mode-part-comment-face ((t (:foreground "#000000"))))
 '(web-mode-part-face ((t (:foreground "#000000"))))
 '(web-mode-part-string-face ((t (:foreground "#000000"))))
 '(web-mode-preprocessor-face ((t (:foreground "#000000"))))
 '(web-mode-script-face ((t (:foreground "#000000"))))
 '(web-mode-server-comment-face ((t (:foreground "#D9333F"))))
 '(web-mode-string-face ((t (:foreground "#000000"))))
 '(web-mode-style-face ((t (:foreground "#000000"))))
 '(web-mode-symbol-face ((t (:foreground "#00FF00"))))
 '(web-mode-type-face ((t (:foreground "#000000"))))
 '(web-mode-variable-name-face ((t (:foreground "#000000")))))
