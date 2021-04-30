;; ----------------------------------------
;; flycheck
;; ----------------------------------------
(add-hook 'go-mode-hook 'flycheck-mode)
(add-hook 'go-mode-hook (lambda()
                          ;; tabサイズを4にする
                          (setq tab-width 4)
                          ))

;; ----------------------------------------
;; lsp-mode
;; ----------------------------------------
;; go-modeのときlspする
(add-hook 'go-mode-hook #'lsp-deferred)
;; yasnippetをインストールしていない or snippetを使わない
(with-eval-after-load 'lsp-mode
  (setq lsp-enable-snippet nil))
