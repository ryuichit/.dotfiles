;; ----------------------------------------
;; auto-complete
;; ----------------------------------------
;;(defun load-auto-complete ()
;;  (require 'auto-complete-config)
;;  (ac-config-default)
;;  (setq ac-use-menu-map t)
;;  (define-key ac-menu-map "\C-n" 'ac-next)
;;  (define-key ac-menu-map "\C-p" 'ac-previous)
;;  (setq ac-auto-show-menu 0.5)
;;  (setq ac-menu-height 20)
;;  (robe-mode))
;;(add-hook 'ruby-mode-hook '(lambda ()
;;                             (load-auto-complete)))

(require 'auto-complete)
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "/Users/ryuichi/.emacs.d/elpa/auto-complete-1.5.1/dict")
(ac-config-default)
(global-auto-complete-mode t)
;; 候補を選択するキーバインド
(define-key ac-complete-mode-map "\C-n" 'ac-next)
(define-key ac-complete-mode-map "\C-p" 'ac-previous)
