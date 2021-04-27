;; ----------------------------------------
;; ivy
;; ----------------------------------------
(ivy-mode 1)
;; ミニバッファの縦幅
(setq ivy-height 30)

;; ----------------------------------------
;; dumb-jump
;; ----------------------------------------
;; M-.でジャンプ
(add-hook 'xref-backend-functions #'dumb-jump-xref-activate)

;; ----------------------------------------
;; dockerfile-mode
;; ----------------------------------------
;; Dockerfileという文字列を名前に含んでいるファイル全てに適用
(add-to-list 'auto-mode-alist '("Dockerfile" . dockerfile-mode))

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
