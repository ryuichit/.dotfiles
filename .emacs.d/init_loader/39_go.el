;; ----------------------------------------
;; flycheck
;; ----------------------------------------
(add-hook 'go-mode-hook 'flycheck-mode)
(add-hook 'go-mode-hook (lambda()
                          ;; tabサイズを4にする
                          (setq tab-width 4)
                          ))

;; ----------------------------------------
;; company-mode
;; ----------------------------------------
(set-face-attribute 'company-tooltip nil
		            :foreground "black" :background "lightgrey")
(set-face-attribute 'company-tooltip-common nil
		            :foreground "black" :background "lightgrey")
(set-face-attribute 'company-tooltip-common-selection nil
		            :foreground "white" :background "steelblue")
(set-face-attribute 'company-tooltip-selection nil
		            :foreground "black" :background "steelblue")
(set-face-attribute 'company-preview-common nil
		            :background nil :foreground "lightgrey" :underline t)
(set-face-attribute 'company-scrollbar-fg nil
		            :background "grey60")
(set-face-attribute 'company-scrollbar-bg nil
		            :background "gray40")
;; 補完を表示するまでの遅延時間
(setq company-idle-delay 0)

;; ----------------------------------------
;; lsp-mode
;; ----------------------------------------
;; go-modeのときlspする
(add-hook 'go-mode-hook #'lsp-deferred)
;; yasnippetをインストールしていない or snippetを使わない
(with-eval-after-load 'lsp-mode
  (setq lsp-enable-snippet nil))
