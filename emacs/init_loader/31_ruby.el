;; ----------------------------------------
;; ruby-electric
;; ----------------------------------------
;; 有効化
(add-hook 'ruby-mode-hook '(lambda () (ruby-electric-mode t)))
;; ""などは自動保管しないようにする
;;(setq ruby-electric-expand-delimiters-list nil)
