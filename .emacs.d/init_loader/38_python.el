;; ----------------------------------------
;; elpy
;; ----------------------------------------
(elpy-enable)
;; ~/.emacs.d/elpy/rpc-venv/bin/python が symlink 先の ~/.pyenv/ の python
;; package を参照できない問題があり、以下を指定すると解消する。
;; Ref: https://github.com/jorgenschaefer/elpy/issues/1937#issuecomment-934825603
(setq elpy-rpc-python-command "~/.pyenv/shims/python")
;;
;; テスト実行のキーバインド
(define-key elpy-mode-map (kbd "C-c t") 'elpy-test)
;; テストランナーをpytestにする
(setq elpy-test-runner 'elpy-test-pytest-runner)
;;
;; 補完候補を検索でさらに絞るキーバインド
(define-key company-active-map (kbd "C-s") 'company-filter-candidates)
;; 補完候補移動のキーバインド
(define-key company-active-map (kbd "C-n") 'company-select-next)
(define-key company-active-map (kbd "C-p") 'company-select-previous)
;; 候補の一番下でさらに下に行こうとすると一番上に戻る
(setq company-selection-wrap-around t)
;; 大文字小文字を区別せず補完
(setq completion-ignore-case t)
