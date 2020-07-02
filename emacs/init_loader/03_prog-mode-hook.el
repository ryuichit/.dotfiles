;; ----------------------------------------
;; yafolding-mode
;; ----------------------------------------
;; prod-modeでONにする
(add-hook 'prog-mode-hook
          (lambda () (yafolding-mode)))
;; キーバインド
(define-key yafolding-mode-map (kbd "<C-S-return>") nil)
(define-key yafolding-mode-map (kbd "<C-M-return>") nil)
(define-key yafolding-mode-map (kbd "<C-return>") nil)
(define-key yafolding-mode-map (kbd "\C-c\C-yh") 'yafolding-hide-parent-element)
(define-key yafolding-mode-map (kbd "\C-c\C-ya") 'yafolding-toggle-all)
(define-key yafolding-mode-map (kbd "\C-c\C-ye") 'yafolding-toggle-element)
