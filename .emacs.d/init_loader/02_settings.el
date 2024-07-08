;; ----------------------------------------
;; 変数設定
;; 確認: describe-variable
;; ----------------------------------------
;; バックアップファイルを作らない
(setq backup-inhibited t)
;; 起動時にstartup screenを表示しない
(setq inhibit-startup-screen t)
;; 起動時にscratchバッファを表示する
;; (ただしこれを指定するとファイル指定して起動したときもscratchバッファになってしまう)
;;(setq initial-buffer-choice t)
;; scratchバッファのメッセージを削除する
(setq initial-scratch-message "")
;; killのときに改行も含めて行全体をkillする
(setq kill-whole-line t)
;; ファイル名の補完で大文字小文字を区別しない
(setq read-file-name-completion-ignore-case t)
;; 警告音を出さない
(setq ring-bell-function 'ignore)

;; ----------------------------------------
;; mode設定
;; 確認: describe-mode
;; ----------------------------------------

;; ----------------------------------------
;; column-number-mode
;; モードラインに列番号を表示する
;; ----------------------------------------
(setq column-number-mode t)

;; ----------------------------------------
;; display-time-mode
;; モードラインに現在時刻を表示する
;; ----------------------------------------
(display-time-mode t)

;; ----------------------------------------
;; electric-pair-mode
;; 対応するペア文字を自動で入力する
;; ----------------------------------------
(electric-pair-mode t)

;; ----------------------------------------
;; global-hl-line-mode
;; 現在行をハイライトする
;; ----------------------------------------
(global-hl-line-mode t)
;; ハイライトではなく下線をつける
(setq hl-line-face 'underline)

;; ----------------------------------------
;; indent-tabs-mode
;; インデントにタブを使う default: t
;; ----------------------------------------
;; デフォルトでは無効化してスペースを使う
(setq-default indent-tabs-mode nil)

;; ----------------------------------------
;; show-paren-mode
;; 対応する括弧を強調表示する
;; ----------------------------------------
(show-paren-mode t)
;; ウィンドウ内に収まらないときだけ括弧内も光らせる
(setq show-paren-style 'mixed)

;; ----------------------------------------
;; which-function-mode
;; モードラインに現在の関数名を表示する
;; ----------------------------------------
(which-function-mode t)

;; ----------------------------------------
;; load-theme
;; カラーテーマを設定する
;; ----------------------------------------
(load-theme 'manoj-dark t)

;; ----------------------------------------
;; display-line-numbers-mode
;; ----------------------------------------
(if (version<= "26.0.50" emacs-version)
    (progn
      (global-display-line-numbers-mode)
      (set-face-attribute 'line-number nil
                          :foreground "DarkOliveGreen")
      (set-face-attribute 'line-number-current-line nil
                          :foreground "gold")
      ))