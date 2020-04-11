;; ----------------------------------------
;; elpy
;; ----------------------------------------
(elpy-enable)
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
