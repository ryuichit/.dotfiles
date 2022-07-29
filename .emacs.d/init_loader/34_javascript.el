;; インデント
(add-hook 'js-mode-hook
          (lambda ()
            (make-local-variable 'js-indent-level)
            (setq js-indent-level 2)))

;; ----------------------------------------
;; js2-mode
;; ----------------------------------------
;; mjsではjs2-modeを使う。
(add-to-list 'auto-mode-alist '("\\.mjs\\'" . js2-mode))
