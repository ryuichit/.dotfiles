;; ----------------------------------------
;; scss-mode
;; ----------------------------------------
(require 'scss-mode)
(add-to-list 'auto-mode-alist '("\\.scss$" . scss-mode))
;; タブを2にする
(defun scss-custom ()
  "scss-mode-hook"
  (and
   (set (make-local-variable 'css-indent-offset) 2)
   ;; 自動コンパイルをOFF. ONだと保存するたびにcompile結果がバッファに表示される (compass watchを使うときにも使う？)
   (set (make-local-variable 'scss-compile-at-save) nil)
   )
  )
(add-hook 'scss-mode-hook
          '(lambda() (scss-custom)))
