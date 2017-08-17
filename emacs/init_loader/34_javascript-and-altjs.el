;; ----------------------------------------
;; js2-mode
;; ----------------------------------------
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-hook 'js2-mode-hook
          (lambda ()
            (setq js2-basic-offset 2)
            ))

;; ----------------------------------------
;; coffee-mode
;; ----------------------------------------
(require 'coffee-mode)
;; タブを2にする
(defun coffee-custom ()
  "coffee-mode-hook"
  (and (set (make-local-variable 'tab-width) 2)
       (set (make-local-variable 'coffee-tab-width) 2))
  )
(add-hook 'coffee-mode-hook
          '(lambda() (coffee-custom)))
;; coffee-modeでauto-completeを使う
(add-to-list 'ac-modes 'coffee-mode)
;; 以下URLで取得した辞書をcoffee-modeでのAC補完対象にする
;; wget https://raw.github.com/sandai/dotfiles/master/.emacs.d/ac-dict/js2-mode
(add-hook 'coffee-mode-hook
          '(lambda () (add-to-list 'ac-dictionary-files "~/.emacs.d/elpa/auto-complete-1.5.1/dict/js2-mode")))
;; jquery-docを追加
(add-hook 'coffee-mode-hook
          '(lambda () (jquery-doc-setup)))
