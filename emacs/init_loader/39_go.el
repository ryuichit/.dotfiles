;; ----------------------------------------
;; company-go
;; ----------------------------------------
(add-hook 'go-mode-hook 'company-mode)
(add-hook 'go-mode-hook (lambda()
                          ;; 遅延なしにすぐ表示
                          (setq company-idle-delay 0)
                          ;; デフォルトは4
                          (setq company-minimum-prefix-length 2)
                          ))
;; ----------------------------------------
;; flycheck
;; ----------------------------------------
(add-hook 'go-mode-hook 'flycheck-mode)
(add-hook 'go-mode-hook (lambda()
                          ;; tabサイズを4にする
                          (setq tab-width 4)
                          ))
